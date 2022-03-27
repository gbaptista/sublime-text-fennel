; SYNTAX TEST "Packages/Fennel/Fennel.sublime-syntax"

; Fennel 1.1.0 on Lua 5.4.4

; Hash function literal shorthand

(local a #$3)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^ source.fennel
;        ^ entity.name.tag.literal_shorthand.fennel
;         ^ variable.function.hash_shorthand.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^ punctuation.section.parens.end.fennel

(local a #[$1 $2 $3])
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^ source.fennel
;        ^ entity.name.tag.literal_shorthand.fennel
;         ^ punctuation.section.brackets.begin.fennel
;          ^ variable.function.hash_shorthand.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^ variable.function.hash_shorthand.fennel
;              ^ constant.numeric.integer.decimal.fennel
;                ^ variable.function.hash_shorthand.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^ punctuation.section.brackets.end.fennel
;                   ^ punctuation.section.parens.end.fennel

(local a #$)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^ source.fennel
;        ^ entity.name.tag.literal_shorthand.fennel
;         ^ variable.function.hash_shorthand.fennel
;          ^ punctuation.section.parens.end.fennel

(local a #val)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^ source.fennel
;        ^ entity.name.tag.literal_shorthand.fennel
;         ^^^ source.fennel
;            ^ punctuation.section.parens.end.fennel

(local a #[:one :two $...])
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^ source.fennel
;        ^ entity.name.tag.literal_shorthand.fennel
;         ^ punctuation.section.brackets.begin.fennel
;          ^ punctuation.definition.keyword.fennel
;           ^^^ constant.other.keyword.fennel
;               ^ punctuation.definition.keyword.fennel
;                ^^^ constant.other.keyword.fennel
;                    ^ variable.function.hash_shorthand.fennel
;                     ^^^ keyword.operator.varargs.fennel
;                        ^ punctuation.section.brackets.end.fennel
;                         ^ punctuation.section.parens.end.fennel

; Data

; operators

(and 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.lua_support.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(or 1)
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ constant.numeric.integer.decimal.fennel
;    ^ punctuation.section.parens.end.fennel

(not 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.lua_support.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(+ 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(- 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(* 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(/ 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(// 1 1)
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ constant.numeric.integer.decimal.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel

(% 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(^ 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(> 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(< 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(>= 1 1)
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ constant.numeric.integer.decimal.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel

(<= 1 1)
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ constant.numeric.integer.decimal.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel

(= 1 1)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(not= 1 1)
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ constant.numeric.integer.decimal.fennel
;       ^ constant.numeric.integer.decimal.fennel
;        ^ punctuation.section.parens.end.fennel

(lshift 1)
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ constant.numeric.integer.decimal.fennel
;        ^ punctuation.section.parens.end.fennel

(rshift 1)
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ constant.numeric.integer.decimal.fennel
;        ^ punctuation.section.parens.end.fennel

(band 1)
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel

(bor 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(bxor 1)
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel

(bnot 1)
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel

; Other

; ->, ->>, -?> and -?>> threading macros

(-> 1)
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.fennel_threading_macros.fennel
;   ^ constant.numeric.integer.decimal.fennel
;    ^ punctuation.section.parens.end.fennel

(->> 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_threading_macros.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(-?> 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_threading_macros.fennel
;    ^ constant.numeric.integer.decimal.fennel
;     ^ punctuation.section.parens.end.fennel

(-?>> 1)
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_threading_macros.fennel
;     ^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.section.parens.end.fennel


(+ -14 -15)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ punctuation.definition.numeric.sign.fennel
;   ^^ constant.numeric.integer.decimal.fennel
;      ^ punctuation.definition.numeric.sign.fennel
;       ^^ constant.numeric.integer.decimal.fennel
;         ^ punctuation.section.parens.end.fennel

(let [hex "#34a2eb"] true)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^^^ source.fennel
;         ^ punctuation.definition.string.begin.fennel
;          ^^^^^^^ string.quoted.double.fennel
;                 ^ punctuation.definition.string.end.fennel
;                  ^ punctuation.section.brackets.end.fennel
;                    ^^^^ constant.language.fennel
;                        ^ punctuation.section.parens.end.fennel
