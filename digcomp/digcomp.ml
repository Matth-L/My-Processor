(**
    Main module.

    Usage:
        ./digcomp <file>

    Parses assembly code in <file>, creates files <file>.hi and <file>.lo,
    and fills these files with the high and low parts of the encoding for
    the instructions in <file>.
 *)
open Asm
open Lexing


(**
    insert l nb assoc adds the entry (l,nb) in the association list assoc.
    @param l label name
    @param nb line number
    @param assoc list of all the already-seen labels with their respective line numbers
    @return an updated association list
    @raise Failure when l belongs to the labels in assoc
 *)
let insert = fun l nb assoc ->
    if List.mem_assoc l assoc
    then
        let nb' = string_of_int (List.assoc l assoc) in
        failwith ("Label "^l^" already defined at line "^nb')
    else
        (l,nb) :: assoc


(**
    parse_file lexbuf parses the stream of tokens in lexbuf and returns the list
    of instructions and the list that associates each label to its line number
    (the first line has index 0).
    @param lexbuf stream of tokens that we have to parse
    @return (l1,l2) where l1 is the list of labels and L2 the list of instructions.
 *)
let parse_file = fun lexbuf ->
    try
        let (_,l1,l2) =
            List.fold_left
                (fun (a,b,c) (lbl,mi) ->
                    let b' = if String.length lbl > 0 then (lbl,a)::b else b in
                    match mi with
                    | None   -> (a, b', c)
                    | Some i -> (a+1, b', i::c)
                )
                (0, [], [])
                (Parser.main Lexer.token lexbuf)
        in (List.rev l1, List.rev l2)
    with
    | e -> let nbl = lexbuf.lex_curr_p.pos_lnum in
           let nbc = lexbuf.lex_curr_p.pos_cnum - lexbuf.lex_curr_p.pos_bol in
           let str = try
                         let res = Lexing.lexeme lexbuf in
                         if String.length res > 0 then res else failwith ""
                     with _ -> Bytes.sub_string lexbuf.lex_buffer lexbuf.lex_curr_p.pos_cnum 1 
           in
           let err = Printexc.to_string e in
           let _ = Printf.fprintf stderr "%s at line %d, col %d (%s)\n" err nbl nbc str in
           exit 1

(**
    dump_label (l,n) writes l and n to the standard output.
    @param l label name
    @param n line number
*)
let dump_label = fun (l,n) ->
    Printf.printf "%s = %d\n" l n


(**
    write_instr out_hi out_lo labels nb i computes then encoding for i and writes
    the first half to out_hi, and the second half to out_lo.
    @param out_hi output stream for the first byte of the encoding of i
    @param out_lo output stream for the second byte of the encoding of i
    @param labels list that associate a label to its line number
    @param nb current line number
    @param i instruction at line nb
    @return next line number
*)
let write_instr = fun out_hi out_lo labels nb i ->
    let (s1,s2) = instr_to_bin i nb labels in
    let sa = Printf.sprintf "%04x:" nb in
    let _ = output_string out_hi (sa^s1^"\n") in
    let _ = output_string out_lo (sa^s2^"\n") in
    nb+1


(* main function *)
let _ =
    if Array.length Sys.argv != 2 then
        Printf.printf "usage: %s <file>\n" Sys.argv.(0)
    else
        try
            let stream = open_in Sys.argv.(1) in
            let out_hi = open_out (Sys.argv.(1) ^ ".hi") in
            let out_lo = open_out (Sys.argv.(1) ^ ".lo") in
            let lexbuf = Lexing.from_channel stream in
            let (labels,code) = parse_file lexbuf in
            let _ = List.iter dump_label labels in
            let _ = Printf.printf "--------\n" in
            let _ = List.iteri
                        (fun idx instr ->
                            let _ = Printf.printf "%4d: " idx in
                            dump_instr instr
                        )
                        code
            in
            let _ = List.fold_left (write_instr out_hi out_lo labels) 0 code in
            let _ = close_in stream in
            let _ = close_out out_hi in
            let _ = close_out out_lo in
            ()
        with
        | Sys_error msg -> Printf.fprintf stderr "%s\n" msg

