type token =
  | INT of (int)
  | NOP
  | MOV
  | ADD
  | ADDI
  | SUB
  | SUBI
  | JMP
  | LD
  | ST
  | IN
  | OUT
  | JLE
  | JLT
  | JEQ
  | JNE
  | COMA
  | COLON
  | LPAR
  | RPAR
  | REG of (int)
  | LABEL of (string)
  | EOL
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Asm
# 32 "parser.ml"
let yytransl_const = [|
  258 (* NOP *);
  259 (* MOV *);
  260 (* ADD *);
  261 (* ADDI *);
  262 (* SUB *);
  263 (* SUBI *);
  264 (* JMP *);
  265 (* LD *);
  266 (* ST *);
  267 (* IN *);
  268 (* OUT *);
  269 (* JLE *);
  270 (* JLT *);
  271 (* JEQ *);
  272 (* JNE *);
  273 (* COMA *);
  274 (* COLON *);
  275 (* LPAR *);
  276 (* RPAR *);
  279 (* EOL *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  277 (* REG *);
  278 (* LABEL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\003\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\004\000\004\000\004\000\004\000\000\000"

let yylen = "\002\000\
\003\000\001\000\000\000\001\000\001\000\002\000\002\000\001\000\
\004\000\004\000\006\000\006\000\006\000\006\000\006\000\006\000\
\006\000\004\000\006\000\004\000\006\000\002\000\002\000\006\000\
\002\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\008\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\026\000\027\000\028\000\
\029\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\
\000\000\000\000\000\000\000\000\000\000\025\000\000\000\000\000\
\022\000\023\000\007\000\000\000\006\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\
\000\000\009\000\000\000\010\000\000\000\000\000\000\000\000\000\
\000\000\018\000\020\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\021\000\019\000\014\000\013\000\
\011\000\012\000\016\000\015\000\017\000\024\000"

let yydgoto = "\002\000\
\019\000\020\000\021\000\022\000\023\000"

let yysindex = "\039\000\
\001\255\000\000\000\000\024\255\023\255\025\255\026\255\027\255\
\028\255\030\255\031\255\032\255\033\255\000\000\000\000\000\000\
\000\000\037\255\000\000\034\255\022\255\035\255\000\000\038\255\
\041\255\043\255\044\255\045\255\046\255\000\000\047\255\048\255\
\000\000\000\000\000\000\001\255\000\000\049\255\029\255\255\254\
\018\255\050\255\051\255\052\255\053\255\054\255\000\000\055\255\
\060\255\000\000\057\255\000\000\062\255\063\255\064\255\065\255\
\066\255\000\000\000\000\067\255\068\255\070\255\071\255\020\255\
\069\255\021\255\084\255\072\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\067\000\002\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\032\000\000\000\000\000\000\000\048\000"

let yytablesize = 281
let yytable = "\050\000\
\003\000\004\000\003\000\004\000\005\000\006\000\007\000\008\000\
\009\000\010\000\011\000\012\000\013\000\014\000\015\000\016\000\
\017\000\051\000\053\000\052\000\072\000\075\000\018\000\003\000\
\004\000\005\000\006\000\007\000\008\000\009\000\010\000\011\000\
\012\000\013\000\014\000\015\000\016\000\017\000\054\000\001\000\
\073\000\076\000\024\000\026\000\025\000\027\000\028\000\029\000\
\049\000\030\000\031\000\032\000\033\000\034\000\035\000\038\000\
\036\000\040\000\039\000\041\000\042\000\043\000\044\000\045\000\
\046\000\048\000\002\000\047\000\037\000\074\000\055\000\056\000\
\057\000\058\000\059\000\060\000\061\000\062\000\063\000\064\000\
\065\000\066\000\067\000\068\000\077\000\000\000\000\000\000\000\
\069\000\070\000\000\000\071\000\000\000\078\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
\004\000"

let yycheck = "\001\001\
\000\000\000\000\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\019\001\001\001\021\001\001\001\001\001\022\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\021\001\001\000\
\021\001\021\001\019\001\021\001\021\001\021\001\021\001\021\001\
\020\001\022\001\021\001\021\001\021\001\021\001\018\001\021\001\
\023\001\017\001\021\001\017\001\017\001\017\001\017\001\017\001\
\017\001\017\001\000\000\036\000\021\000\001\001\021\001\021\001\
\021\001\021\001\021\001\021\001\017\001\021\001\017\001\017\001\
\017\001\017\001\017\001\017\001\001\001\255\255\255\255\255\255\
\021\001\020\001\255\255\021\001\255\255\022\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\001\
\023\001"

let yynames_const = "\
  NOP\000\
  MOV\000\
  ADD\000\
  ADDI\000\
  SUB\000\
  SUBI\000\
  JMP\000\
  LD\000\
  ST\000\
  IN\000\
  OUT\000\
  JLE\000\
  JLT\000\
  JEQ\000\
  JNE\000\
  COMA\000\
  COLON\000\
  LPAR\000\
  RPAR\000\
  EOL\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  REG\000\
  LABEL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Asm.label * Asm.instr option) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : (Asm.label * Asm.instr option) list) in
    Obj.repr(
# 22 "parser.mly"
                                  ( _1 :: _3 )
# 232 "parser.ml"
               : (Asm.label * Asm.instr option) list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Asm.label * Asm.instr option) in
    Obj.repr(
# 23 "parser.mly"
                                  ( [_1]     )
# 239 "parser.ml"
               : (Asm.label * Asm.instr option) list))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "parser.mly"
                                  ( ("", None)    )
# 245 "parser.ml"
               : Asm.label * Asm.instr option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 28 "parser.mly"
                                  ( (_1, None)    )
# 252 "parser.ml"
               : Asm.label * Asm.instr option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'code) in
    Obj.repr(
# 29 "parser.mly"
                                  ( ("", Some _1) )
# 259 "parser.ml"
               : Asm.label * Asm.instr option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'code) in
    Obj.repr(
# 30 "parser.mly"
                                  ( (_1, Some _2) )
# 267 "parser.ml"
               : Asm.label * Asm.instr option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 34 "parser.mly"
                                  ( _1 )
# 274 "parser.ml"
               : string))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
                                  ( Nop )
# 280 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 39 "parser.mly"
                                  ( Ldi (_2,_4) )
# 288 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 40 "parser.mly"
                                  ( Addi (_2,_4,0,false)  )
# 296 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 41 "parser.mly"
                                  ( Add  (_2,_4,_6,false) )
# 305 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 42 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,false) )
# 314 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 43 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,false) )
# 323 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 44 "parser.mly"
                                  ( assert (0<=_4 && _4<32); Addi (_2,_6,_4,false) )
# 332 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 45 "parser.mly"
                                  ( Add  (_2,_4,_6,true)  )
# 341 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 46 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,true)  )
# 350 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,true)  )
# 359 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 48 "parser.mly"
                                  ( Load (_2, _4)  )
# 367 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 49 "parser.mly"
                                  ( Load (_2, _5)  )
# 375 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 50 "parser.mly"
                                  ( Store (_4, _2) )
# 383 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 51 "parser.mly"
                                  ( Store (_3, _6) )
# 391 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 52 "parser.mly"
                                  ( In _2  )
# 398 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 53 "parser.mly"
                                  ( Out _2 )
# 405 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Asm.cond) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "parser.mly"
                                  ( CJmp (_2,_4,_6,_1) )
# 415 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "parser.mly"
                                  ( Jmp _2 )
# 422 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
         ( LE )
# 428 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
         ( LT )
# 434 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
         ( EQ )
# 440 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
         ( NE )
# 446 "parser.ml"
               : Asm.cond))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : (Asm.label * Asm.instr option) list)
