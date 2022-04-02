; SYNTAX TEST "Packages/Fennel/Fennel.sublime-syntax"

; Fennel 1.1.0 on Lua 5.4.4

; Deprecated:

(doc a)
; <- punctuation.section.parens.begin.fennel
;^^^ variable.function.fennel
;    ^ source.fennel
;     ^ punctuation.section.parens.end.fennel

(global a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^ variable.function.fennel
;       ^ source.fennel
;        ^ punctuation.section.parens.end.fennel

(pick-args a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^ variable.function.fennel
;          ^ source.fennel
;           ^ punctuation.section.parens.end.fennel

(match-> a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^ variable.function.fennel
;        ^ source.fennel
;         ^ punctuation.section.parens.end.fennel

; New forms

_1 7/8 1_
; <- source.fennel
;^^^^^^^^ source.fennel

10 120_000 1.5 120_0_00.10_10_0
; <- constant.numeric.integer.decimal.fennel
;^ constant.numeric.integer.decimal.fennel
;  ^^^^^^^ constant.numeric.integer.decimal.fennel
;          ^ constant.numeric.float.decimal.fennel
;           ^ punctuation.separator.decimal.fennel
;            ^ constant.numeric.float.decimal.fennel
;              ^^^^^^^^ constant.numeric.float.decimal.fennel
;                      ^ punctuation.separator.decimal.fennel
;                       ^^^^^^^ constant.numeric.float.decimal.fennel

(collect [k v (pairs {:apple "red" :orange "orange"})]
; <- punctuation.section.parens.begin.fennel
;^^^^^^^ entity.name.tag.fennel_support.fennel
;        ^ punctuation.section.brackets.begin.fennel
;         ^^^ source.fennel
;             ^ punctuation.section.parens.begin.fennel
;              ^^^^^ entity.name.tag.lua_support.fennel
;                    ^ punctuation.section.braces.begin.fennel
;                     ^ punctuation.definition.keyword.fennel
;                      ^^^^^ constant.other.keyword.fennel
;                            ^ punctuation.definition.string.begin.fennel
;                             ^^^ string.quoted.double.fennel
;                                ^ punctuation.definition.string.end.fennel
;                                  ^ punctuation.definition.keyword.fennel
;                                   ^^^^^^ constant.other.keyword.fennel
;                                          ^ punctuation.definition.string.begin.fennel
;                                           ^^^^^^ string.quoted.double.fennel
;                                                 ^ punctuation.definition.string.end.fennel
;                                                  ^ punctuation.section.braces.end.fennel
;                                                   ^ punctuation.section.parens.end.fennel
;                                                    ^ punctuation.section.brackets.end.fennel
  (.. "color-" v) k)
; ^ punctuation.section.parens.begin.fennel
;  ^^ entity.name.tag.lua_support.fennel
;     ^ punctuation.definition.string.begin.fennel
;      ^^^^^^ string.quoted.double.fennel
;            ^ punctuation.definition.string.end.fennel
;              ^ source.fennel
;               ^ punctuation.section.parens.end.fennel
;                 ^ source.fennel
;                  ^ punctuation.section.parens.end.fennel


(icollect [_ x (ipairs [2 3]) :into [9]]
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^ entity.name.tag.fennel_support.fennel
;         ^ punctuation.section.brackets.begin.fennel
;          ^^^^ source.fennel
;              ^ punctuation.section.parens.begin.fennel
;               ^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ punctuation.section.brackets.begin.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                         ^ constant.numeric.integer.decimal.fennel
;                          ^ punctuation.section.brackets.end.fennel
;                           ^ punctuation.section.parens.end.fennel
;                             ^ punctuation.definition.keyword.fennel
;                              ^^^^ constant.other.keyword.fennel
;                                   ^ punctuation.section.brackets.begin.fennel
;                                    ^ constant.numeric.integer.decimal.fennel
;                                     ^^ punctuation.section.brackets.end.fennel
  (* x 11))
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^ source.fennel
;      ^^ constant.numeric.integer.decimal.fennel
;        ^^ punctuation.section.parens.end.fennel

(var x 0)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^ source.fennel
;      ^ constant.numeric.integer.decimal.fennel
;       ^ punctuation.section.parens.end.fennel
(for [i 1 128 :until (maxed-out? x)]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.lua_support.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ constant.numeric.integer.decimal.fennel
;         ^^^ constant.numeric.integer.decimal.fennel
;             ^ punctuation.definition.keyword.fennel
;              ^^^^^ constant.other.keyword.fennel
;                    ^ punctuation.section.parens.begin.fennel
;                     ^^^^^^^^^^ variable.function.fennel
;                                ^ source.fennel
;                                 ^ punctuation.section.parens.end.fennel
;                                  ^ punctuation.section.brackets.end.fennel
  (set x (+ x i)))
; ^ punctuation.section.parens.begin.fennel
;  ^^^ entity.name.tag.fennel_support.fennel
;      ^ source.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^^^ source.fennel
;              ^^^ punctuation.section.parens.end.fennel


#{:a $1 :b $...}
; <- entity.name.tag.literal_shorthand.fennel
;^ punctuation.section.braces.begin.fennel
; ^ punctuation.definition.keyword.fennel
;  ^ constant.other.keyword.fennel
;    ^ variable.function.hash_shorthand.fennel
;     ^ constant.numeric.integer.decimal.fennel
;       ^ punctuation.definition.keyword.fennel
;        ^ constant.other.keyword.fennel
;          ^ variable.function.hash_shorthand.fennel
;           ^^^ keyword.operator.varargs.fennel
;              ^ punctuation.section.braces.end.fennel

#{$1.bar.foo}
; <- entity.name.tag.literal_shorthand.fennel
;^ punctuation.section.braces.begin.fennel
; ^ variable.function.hash_shorthand.fennel
;  ^ constant.numeric.integer.decimal.fennel
;   ^ entity.name.tag.lua_support.fennel
;    ^^^^^^^ source.fennel
;           ^ punctuation.section.braces.end.fennel

#$.foo
; <- entity.name.tag.literal_shorthand.fennel
;^ variable.function.hash_shorthand.fennel
; ^ entity.name.tag.lua_support.fennel
;  ^^^ source.fennel

(match-try a
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^ entity.name.tag.fennel_support.fennel
;          ^ source.fennel
  a {:a a}
; ^ source.fennel
;   ^ punctuation.section.braces.begin.fennel
;    ^ punctuation.definition.keyword.fennel
;     ^ constant.other.keyword.fennel
;       ^ source.fennel
;        ^ punctuation.section.braces.end.fennel
  (catch
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.fennel_support.fennel
    (_ :timeout) nil))
;   ^ punctuation.section.parens.begin.fennel
;    ^ variable.function.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^^^^^^^ constant.other.keyword.fennel
;                ^^^ constant.language.fennel
;                   ^^ punctuation.section.parens.end.fennel

(let [{:a a :b b &as all} {:a 1 :b 2 :c 3 :d 4}]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ punctuation.section.braces.begin.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^ constant.other.keyword.fennel
;         ^ source.fennel
;           ^ punctuation.definition.keyword.fennel
;            ^ constant.other.keyword.fennel
;              ^ source.fennel
;                ^^^ keyword.operator.bind.fennel
;                    ^^^ source.fennel
;                       ^ punctuation.section.braces.end.fennel
;                         ^ punctuation.section.braces.begin.fennel
;                          ^ punctuation.definition.keyword.fennel
;                           ^ constant.other.keyword.fennel
;                             ^ constant.numeric.integer.decimal.fennel
;                               ^ punctuation.definition.keyword.fennel
;                                ^ constant.other.keyword.fennel
;                                  ^ constant.numeric.integer.decimal.fennel
;                                    ^ punctuation.definition.keyword.fennel
;                                     ^ constant.other.keyword.fennel
;                                       ^ constant.numeric.integer.decimal.fennel
;                                         ^ punctuation.definition.keyword.fennel
;                                          ^ constant.other.keyword.fennel
;                                            ^ constant.numeric.integer.decimal.fennel
;                                             ^ punctuation.section.braces.end.fennel
;                                              ^ punctuation.section.brackets.end.fennel
  (+ a b all.c all.d))
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^^^^^^^^^^^^^^^ source.fennel
;                   ^^ punctuation.section.parens.end.fennel

(accumulate [sum 0
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;           ^ punctuation.section.brackets.begin.fennel
;            ^^^ source.fennel
;                ^ constant.numeric.integer.decimal.fennel
             i n (ipairs [10 20 30 40])]
;            ^^^ source.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ punctuation.section.brackets.begin.fennel
;                         ^^ constant.numeric.integer.decimal.fennel
;                            ^^ constant.numeric.integer.decimal.fennel
;                               ^^ constant.numeric.integer.decimal.fennel
;                                  ^^ constant.numeric.integer.decimal.fennel
;                                    ^ punctuation.section.brackets.end.fennel
;                                     ^ punctuation.section.parens.end.fennel
;                                      ^ punctuation.section.brackets.end.fennel
    (+ sum n))
;   ^ punctuation.section.parens.begin.fennel
;    ^ entity.name.tag.lua_support.fennel
;      ^^^^^ source.fennel
;           ^^ punctuation.section.parens.end.fennel


(match [91 12 53]
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.fennel_support.fennel
;      ^ punctuation.section.brackets.begin.fennel
;       ^^ constant.numeric.integer.decimal.fennel
;          ^^ constant.numeric.integer.decimal.fennel
;             ^^ constant.numeric.integer.decimal.fennel
;               ^ punctuation.section.brackets.end.fennel
  (where [a b c] (= 5 a)) :will-not-match
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.fennel_support.fennel
;        ^ punctuation.section.brackets.begin.fennel
;         ^^^^^ source.fennel
;              ^ punctuation.section.brackets.end.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                     ^ source.fennel
;                      ^^ punctuation.section.parens.end.fennel
;                         ^ punctuation.definition.keyword.fennel
;                          ^^^^^^^^^^^^^^ constant.other.keyword.fennel
  _ "will match anything else")
; ^ source.fennel
;   ^ punctuation.definition.string.begin.fennel
;    ^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                            ^ punctuation.definition.string.end.fennel
;                             ^ punctuation.section.parens.end.fennel


(set _G.a 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^^ entity.other.inherited-class.constant.fennel
;      ^^ source.fennel
;         ^ constant.numeric.integer.decimal.fennel
;          ^ punctuation.section.parens.end.fennel

(set _ENV.a 2)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^^^^ entity.other.inherited-class.constant.fennel
;        ^^ source.fennel
;           ^ constant.numeric.integer.decimal.fennel
;            ^ punctuation.section.parens.end.fennel
