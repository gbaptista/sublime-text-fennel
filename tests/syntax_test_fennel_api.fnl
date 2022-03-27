; SYNTAX TEST "Packages/Fennel/Fennel.sublime-syntax"

; Fennel 1.1.0 on Lua 5.4.4

(fennel.comment a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;               ^ source.fennel
;                ^ punctuation.section.parens.end.fennel

(fennel.comment? a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                ^ source.fennel
;                 ^ punctuation.section.parens.end.fennel

(fennel.compile a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;               ^ source.fennel
;                ^ punctuation.section.parens.end.fennel

(fennel.compile-stream a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                      ^ source.fennel
;                       ^ punctuation.section.parens.end.fennel

(fennel.compile-string a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                      ^ source.fennel
;                       ^ punctuation.section.parens.end.fennel

(fennel.doc a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;           ^ source.fennel
;            ^ punctuation.section.parens.end.fennel

(fennel.dofile a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;              ^ source.fennel
;               ^ punctuation.section.parens.end.fennel

(fennel.eval a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel

(fennel.list a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel

(fennel.list? a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;             ^ source.fennel
;              ^ punctuation.section.parens.end.fennel

(fennel.load-code a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                 ^ source.fennel
;                  ^ punctuation.section.parens.end.fennel

(fennel.macro-loaded a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                    ^ source.fennel
;                     ^ punctuation.section.parens.end.fennel

(fennel.macro-path a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                  ^ source.fennel
;                   ^ punctuation.section.parens.end.fennel

(fennel.macro-searchers a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                       ^ source.fennel
;                        ^ punctuation.section.parens.end.fennel

(fennel.make-searcher a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                     ^ source.fennel
;                      ^ punctuation.section.parens.end.fennel

(fennel.metadata a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                ^ source.fennel
;                 ^ punctuation.section.parens.end.fennel

(fennel.parser a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;              ^ source.fennel
;               ^ punctuation.section.parens.end.fennel

(fennel.path a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel

(fennel.repl a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel

(fennel.runtime-version a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                       ^ source.fennel
;                        ^ punctuation.section.parens.end.fennel

(fennel.search-module a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                     ^ source.fennel
;                      ^ punctuation.section.parens.end.fennel

(fennel.searcher a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                ^ source.fennel
;                 ^ punctuation.section.parens.end.fennel

(fennel.sequence a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                ^ source.fennel
;                 ^ punctuation.section.parens.end.fennel

(fennel.sequence? a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                 ^ source.fennel
;                  ^ punctuation.section.parens.end.fennel

(fennel.sym a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;           ^ source.fennel
;            ^ punctuation.section.parens.end.fennel

(fennel.sym-char? a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                 ^ source.fennel
;                  ^ punctuation.section.parens.end.fennel

(fennel.sym? a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel

(fennel.syntax a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;              ^ source.fennel
;               ^ punctuation.section.parens.end.fennel

(fennel.traceback a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                 ^ source.fennel
;                  ^ punctuation.section.parens.end.fennel

(fennel.varg a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel

(fennel.varg? a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;             ^ source.fennel
;              ^ punctuation.section.parens.end.fennel

(fennel.view a)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ source.fennel
;             ^ punctuation.section.parens.end.fennel
