; SYNTAX TEST "/syntax_tests/Data/Packages/sublime-3-fennel/Fennel.sublime-syntax"

; Fennel 0.5.0 on Lua 5.4.0

; 2 – Basic Concepts
; 2.1 – Values and Types

(f true)
; <- punctuation.section.parens.begin.fennel
;^ variable.function.fennel
;  ^^^^ constant.language.fennel
;      ^ punctuation.section.parens.end.fennel

(f false)
; <- punctuation.section.parens.begin.fennel
;^ variable.function.fennel
;  ^^^^^ constant.language.fennel
;       ^ punctuation.section.parens.end.fennel

(f nil)
; <- punctuation.section.parens.begin.fennel
;^ variable.function.fennel
;  ^^^ constant.language.fennel
;     ^ punctuation.section.parens.end.fennel

; Lua functions
(print _G)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^ variable.language.lua_constant.fennel
;        ^ punctuation.section.parens.end.fennel

(print (_G 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^ variable.function.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^^ punctuation.section.parens.end.fennel

(print _VERSION)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (_VERSION 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ variable.function.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print assert)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (assert 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print collectgarbage)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (collectgarbage 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print dofile)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (dofile 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print error)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^ variable.language.lua_constant.fennel
;           ^ punctuation.section.parens.end.fennel

(print (error 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ entity.name.tag.lua_support.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^^ punctuation.section.parens.end.fennel

(print getmetatable)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (getmetatable 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print ipairs)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (ipairs 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print load)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^ variable.language.lua_constant.fennel
;          ^ punctuation.section.parens.end.fennel

(print (load 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^ entity.name.tag.lua_support.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

(print loadfile)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (loadfile 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print next)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^ variable.language.lua_constant.fennel
;          ^ punctuation.section.parens.end.fennel

(print (next 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^ entity.name.tag.lua_support.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

(print pairs)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^ variable.language.lua_constant.fennel
;           ^ punctuation.section.parens.end.fennel

(print (pairs 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ entity.name.tag.lua_support.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^^ punctuation.section.parens.end.fennel

(print pcall)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^ variable.language.lua_constant.fennel
;           ^ punctuation.section.parens.end.fennel

(print (pcall 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ entity.name.tag.lua_support.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^^ punctuation.section.parens.end.fennel

(print print)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^ variable.language.lua_constant.fennel
;           ^ punctuation.section.parens.end.fennel

(print (print 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ entity.name.tag.lua_support.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^^ punctuation.section.parens.end.fennel

(print rawequal)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (rawequal 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print rawget)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (rawget 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print rawlen)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (rawlen 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print rawset)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (rawset 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print require)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (require 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print select)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (select 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print setmetatable)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (setmetatable 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print tonumber)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (tonumber 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print tostring)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (tostring 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print type)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^ variable.language.lua_constant.fennel
;          ^ punctuation.section.parens.end.fennel

(print (type 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^ entity.name.tag.lua_support.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

(print warn)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^ variable.language.lua_constant.fennel
;          ^ punctuation.section.parens.end.fennel

(print (warn 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^ entity.name.tag.lua_support.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

(print xpcall)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (xpcall 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print coroutine)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (coroutine 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ variable.function.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print coroutine.close)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (coroutine.close 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print coroutine.create)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                      ^ punctuation.section.parens.end.fennel

(print (coroutine.create 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                         ^^ punctuation.section.parens.end.fennel

(print coroutine.isyieldable)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                           ^ punctuation.section.parens.end.fennel

(print (coroutine.isyieldable 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                             ^ constant.numeric.integer.decimal.fennel
;                              ^^ punctuation.section.parens.end.fennel

(print coroutine.resume)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                      ^ punctuation.section.parens.end.fennel

(print (coroutine.resume 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                         ^^ punctuation.section.parens.end.fennel

(print coroutine.running)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                       ^ punctuation.section.parens.end.fennel

(print (coroutine.running 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                         ^ constant.numeric.integer.decimal.fennel
;                          ^^ punctuation.section.parens.end.fennel

(print coroutine.status)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                      ^ punctuation.section.parens.end.fennel

(print (coroutine.status 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                         ^^ punctuation.section.parens.end.fennel

(print coroutine.wrap)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (coroutine.wrap 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print coroutine.yield)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (coroutine.yield 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print debug)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^ variable.language.lua_constant.fennel
;           ^ punctuation.section.parens.end.fennel

(print (debug 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ variable.function.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^^ punctuation.section.parens.end.fennel

(print debug.debug)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (debug.debug 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print debug.gethook)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (debug.gethook 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print debug.getinfo)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (debug.getinfo 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print debug.getlocal)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (debug.getlocal 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print debug.getmetatable)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                        ^ punctuation.section.parens.end.fennel

(print (debug.getmetatable 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                          ^ constant.numeric.integer.decimal.fennel
;                           ^^ punctuation.section.parens.end.fennel

(print debug.getregistry)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                       ^ punctuation.section.parens.end.fennel

(print (debug.getregistry 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                         ^ constant.numeric.integer.decimal.fennel
;                          ^^ punctuation.section.parens.end.fennel

(print debug.getupvalue)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                      ^ punctuation.section.parens.end.fennel

(print (debug.getupvalue 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                         ^^ punctuation.section.parens.end.fennel

(print debug.getuservalue)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                        ^ punctuation.section.parens.end.fennel

(print (debug.getuservalue 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                          ^ constant.numeric.integer.decimal.fennel
;                           ^^ punctuation.section.parens.end.fennel

(print debug.setcstacklimit)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                          ^ punctuation.section.parens.end.fennel

(print (debug.setcstacklimit 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                            ^ constant.numeric.integer.decimal.fennel
;                             ^^ punctuation.section.parens.end.fennel

(print debug.sethook)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (debug.sethook 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print debug.setlocal)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (debug.setlocal 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print debug.setmetatable)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                        ^ punctuation.section.parens.end.fennel

(print (debug.setmetatable 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                          ^ constant.numeric.integer.decimal.fennel
;                           ^^ punctuation.section.parens.end.fennel

(print debug.setupvalue)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                      ^ punctuation.section.parens.end.fennel

(print (debug.setupvalue 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                         ^^ punctuation.section.parens.end.fennel

(print debug.setuservalue)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                        ^ punctuation.section.parens.end.fennel

(print (debug.setuservalue 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                          ^ constant.numeric.integer.decimal.fennel
;                           ^^ punctuation.section.parens.end.fennel

(print debug.traceback)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (debug.traceback 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print debug.upvalueid)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (debug.upvalueid 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print debug.upvaluejoin)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                       ^ punctuation.section.parens.end.fennel

(print (debug.upvaluejoin 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                         ^ constant.numeric.integer.decimal.fennel
;                          ^^ punctuation.section.parens.end.fennel

(print io)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^ variable.language.lua_constant.fennel
;        ^ punctuation.section.parens.end.fennel

(print (io 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^ variable.function.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^^ punctuation.section.parens.end.fennel

(print io.close)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.close 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print io.flush)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.flush 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print io.input)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.input 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print io.lines)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.lines 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print io.open)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (io.open 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print io.output)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (io.output 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print io.popen)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.popen 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print io.read)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (io.read 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print io.stderr)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (io.stderr 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print io.stdin)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.stdin 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print io.stdout)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (io.stdout 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print io.tmpfile)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (io.tmpfile 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print io.type)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (io.type 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print io.write)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (io.write 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel


; TODO:
; file:close
; file:flush
; file:lines
; file:read
; file:seek
; file:setvbuf
; file:write  
 
(print math)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^ variable.language.lua_constant.fennel
;          ^ punctuation.section.parens.end.fennel

(print (math 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^ variable.function.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

(print math.abs)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.abs 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.acos)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.acos 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.asin)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.asin 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.atan)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.atan 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.ceil)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.ceil 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.cos)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.cos 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.deg)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.deg 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.exp)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.exp 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.floor)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (math.floor 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print math.fmod)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.fmod 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.huge)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.huge 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.log)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.log 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.max)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.max 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.maxinteger)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (math.maxinteger 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print math.min)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.min 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.mininteger)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (math.mininteger 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print math.modf)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.modf 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.pi)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (math.pi 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print math.rad)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.rad 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.random)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (math.random 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print math.randomseed)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (math.randomseed 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print math.sin)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.sin 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.sqrt)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.sqrt 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.tan)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.tan 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print math.tointeger)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (math.tointeger 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print math.type)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (math.type 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print math.ult)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (math.ult 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print os)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^ variable.language.lua_constant.fennel
;        ^ punctuation.section.parens.end.fennel

(print (os 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^ variable.function.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^^ punctuation.section.parens.end.fennel

(print os.clock)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (os.clock 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print os.date)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (os.date 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print os.difftime)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (os.difftime 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print os.execute)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (os.execute 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print os.exit)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (os.exit 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print os.getenv)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (os.getenv 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print os.remove)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (os.remove 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print os.rename)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (os.rename 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print os.setlocale)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (os.setlocale 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print os.time)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (os.time 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print os.tmpname)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (os.tmpname 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print package)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^ variable.language.lua_constant.fennel
;             ^ punctuation.section.parens.end.fennel

(print (package 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ variable.function.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel

(print package.config)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (package.config 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print package.cpath)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (package.cpath 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print package.loaded)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (package.loaded 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print package.loadlib)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (package.loadlib 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print package.path)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (package.path 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print package.preload)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (package.preload 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print package.searchers)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                       ^ punctuation.section.parens.end.fennel

(print (package.searchers 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                         ^ constant.numeric.integer.decimal.fennel
;                          ^^ punctuation.section.parens.end.fennel

(print package.searchpath)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                        ^ punctuation.section.parens.end.fennel

(print (package.searchpath 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                          ^ constant.numeric.integer.decimal.fennel
;                           ^^ punctuation.section.parens.end.fennel

(print string)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^ variable.language.lua_constant.fennel
;            ^ punctuation.section.parens.end.fennel

(print (string 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ variable.function.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

(print string.byte)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (string.byte 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print string.char)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (string.char 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print string.dump)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (string.dump 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print string.find)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (string.find 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print string.format)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (string.format 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print string.gmatch)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (string.gmatch 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print string.gsub)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (string.gsub 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print string.len)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (string.len 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print string.lower)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (string.lower 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print string.match)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (string.match 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print string.pack)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (string.pack 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel

(print string.packsize)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                     ^ punctuation.section.parens.end.fennel

(print (string.packsize 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                        ^^ punctuation.section.parens.end.fennel

(print string.rep)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (string.rep 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print string.reverse)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (string.reverse 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print string.sub)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (string.sub 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print string.unpack)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.end.fennel

(print (string.unpack 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^^ punctuation.section.parens.end.fennel

(print string.upper)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (string.upper 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print table)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^ variable.language.lua_constant.fennel
;           ^ punctuation.section.parens.end.fennel

(print (table 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^ variable.function.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^^ punctuation.section.parens.end.fennel

(print table.concat)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (table.concat 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print table.insert)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (table.insert 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print table.move)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (table.move 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print table.pack)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (table.pack 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print table.remove)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (table.remove 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print table.sort)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (table.sort 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print table.unpack)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                  ^ punctuation.section.parens.end.fennel

(print (table.unpack 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel

(print utf8)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^ variable.language.lua_constant.fennel
;          ^ punctuation.section.parens.end.fennel

(print (utf8 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^ variable.function.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

(print utf8.char)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^ variable.language.lua_constant.fennel
;               ^ punctuation.section.parens.end.fennel

(print (utf8.char 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                  ^^ punctuation.section.parens.end.fennel

(print utf8.charpattern)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                      ^ punctuation.section.parens.end.fennel

(print (utf8.charpattern 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                         ^^ punctuation.section.parens.end.fennel

(print utf8.codepoint)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                    ^ punctuation.section.parens.end.fennel

(print (utf8.codepoint 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                       ^^ punctuation.section.parens.end.fennel

(print utf8.codes)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^ variable.language.lua_constant.fennel
;                ^ punctuation.section.parens.end.fennel

(print (utf8.codes 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print utf8.len)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^ variable.language.lua_constant.fennel
;              ^ punctuation.section.parens.end.fennel

(print (utf8.len 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel

(print utf8.offset)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^^^^^^^^^^^ variable.language.lua_constant.fennel
;                 ^ punctuation.section.parens.end.fennel

(print (utf8.offset 1))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^^ punctuation.section.parens.end.fennel
