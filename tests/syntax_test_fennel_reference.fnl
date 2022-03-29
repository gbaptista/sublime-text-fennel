; SYNTAX TEST "Packages/Fennel/Fennel.sublime-syntax"

; Fennel 1.1.0 on Lua 5.4.0

; These are all the special forms recognized by the Fennel compiler. It does not include built-in Lua functions; see the Lua reference manual or the Lua primer for that.

; Remember that Fennel relies completely on Lua for its runtime. Everything Fennel does happens at compile-time, so you will need to familiarize yourself with Lua’s standard library functions. Thankfully it’s much smaller than almost any other language.

; Fennel source code should be UTF-8-encoded text, although currently only ASCII forms of whitespace and numerals are supported.

; Functions
; fn function
; Creates a function which binds the arguments given inside the square brackets. Will accept any number of arguments; ones in excess of the declared ones are ignored, and if not enough arguments are supplied to cover the declared ones, the remaining ones are nil.

; Example:

(fn pxy [x y]
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^^^ entity.name.function.fn.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^^^^ source.fennel
  (print (+ x y)))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^^^ source.fennel
;              ^^^ punctuation.section.parens.end.fennel

; Giving it a name is optional; if one is provided it will be bound to it as a local. Even if you don’t use it as an anonymous function, providing a name will cause your stack traces to be more readable, so it’s recommended. Providing a name that’s a table field will cause it to be inserted in a table instead of bound as a local.

; lambda/λ arity-checked function
; Creates a function like fn does, but throws an error at runtime if any of the listed arguments are nil, unless its identifier begins with ?.

; Example:

(lambda [x ?y z]
; <- punctuation.section.parens.begin.fennel
;^^^^^^ storage.modifier.fn.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^ source.fennel
;          ^ variable.function.optional.fennel
;           ^^^^ source.fennel
  (print (- x (* (or ?y 1) z))))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^ source.fennel
;             ^ punctuation.section.parens.begin.fennel
;              ^ entity.name.tag.lua_support.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^ entity.name.tag.lua_support.fennel
;                    ^ variable.function.optional.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.parens.end.fennel
;                          ^ source.fennel
;                           ^^^^ punctuation.section.parens.end.fennel

; The λ form is an alias for lambda and behaves identically.

; Docstrings
; (Since 0.3.0)

; Both the fn and lambda/λ forms of function definition accept an optional docstring.

(fn pxy [x y]
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^^^ entity.name.function.fn.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^^^ source.fennel
;           ^ punctuation.section.brackets.end.fennel
  "Print the sum of x and y"
; ^ punctuation.definition.string.begin.fennel
;  ^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                          ^ punctuation.definition.string.end.fennel
  (print (+ x y)))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^^^ source.fennel
;              ^^^ punctuation.section.parens.end.fennel

(λ pxyz [x ?y z]
; <- punctuation.section.parens.begin.fennel
;^ storage.modifier.fn.fennel
;  ^^^^ entity.name.function.fn.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^ source.fennel
;          ^ variable.function.optional.fennel
;           ^^^ source.fennel
;              ^ punctuation.section.brackets.end.fennel
  "Print the sum of x, y, and z. If y is not provided, defaults to 0."
; ^ punctuation.definition.string.begin.fennel
;  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                                                                    ^ punctuation.definition.string.end.fennel
  (print (+ x (or ?y 0) z)))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^ source.fennel
;             ^ punctuation.section.parens.begin.fennel
;              ^^ entity.name.tag.lua_support.fennel
;                 ^ variable.function.optional.fennel
;                  ^ source.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^ punctuation.section.parens.end.fennel
;                       ^ source.fennel
;                        ^^^ punctuation.section.parens.end.fennel

; These are ignored by default outside of the REPL, unless metadata is enabled from the CLI (---metadata) or compiler options {useMetadata=true}, in which case they are stored in a metadata table along with the arglist, enabling viewing function docs via the doc macro.

; >> (doc pxy)
; (pxy x y)
;   Print the sum of x and y

; All function metadata will be garbage collected along with the function itself. Docstrings and other metadata can also be accessed via functions on the fennel API with fennel.metadata.

; Hash function literal shorthand
; (Since 0.3.0)

; It’s pretty easy to create function literals, but Fennel provides an even shorter form of functions. Hash functions are anonymous functions of one form, with implicitly named arguments. All of the below functions are functionally equivalent.

(fn [a b] (+ a b))
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^ punctuation.section.brackets.begin.fennel
;    ^^^ source.fennel
;       ^ punctuation.section.brackets.end.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^ entity.name.tag.lua_support.fennel
;            ^^^ source.fennel
;               ^^ punctuation.section.parens.end.fennel

(hashfn (+ $1 $2))
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^ entity.name.tag.lua_support.fennel
;          ^ variable.function.hash_shorthand.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^ variable.function.hash_shorthand.fennel
;              ^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel

#(+ $1 $2)
; <- entity.name.tag.literal_shorthand.fennel
;^ punctuation.section.parens.begin.fennel
; ^ entity.name.tag.lua_support.fennel
;   ^ variable.function.hash_shorthand.fennel
;    ^ constant.numeric.integer.decimal.fennel
;      ^ variable.function.hash_shorthand.fennel
;       ^ constant.numeric.integer.decimal.fennel
;        ^ punctuation.section.parens.end.fennel

; This style of anonymous function is useful as a parameter to higher order functions, such as those provided by Lua libraries like lume and luafun.

; The current implementation only allows for either functions functions with up to 9 arguments, each named $1 through $9, or those with varargs, delineated by $... instead of the usual .... A lone $ in a hash function is treated as an alias for $1.

; Hash functions are defined with the hashfn macro or special character #, which wraps its single argument in a function literal. For example,

#$3               ; same as (fn [x y z] z)
; <- entity.name.tag.literal_shorthand.fennel
;^ variable.function.hash_shorthand.fennel
; ^ constant.numeric.integer.decimal.fennel

#[$1 $2 $3]       ; same as (fn [a b c] [a b c])
; <- entity.name.tag.literal_shorthand.fennel
;^ punctuation.section.brackets.begin.fennel
; ^ variable.function.hash_shorthand.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ variable.function.hash_shorthand.fennel
;     ^ constant.numeric.integer.decimal.fennel
;       ^ variable.function.hash_shorthand.fennel
;        ^ constant.numeric.integer.decimal.fennel
;         ^ punctuation.section.brackets.end.fennel
;                 ^ punctuation.definition.comment
;                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

#$                ; same as (fn [x] x) (aka the identity function)
; <- entity.name.tag.literal_shorthand.fennel
;^ variable.function.hash_shorthand.fennel
;                 ^ punctuation.definition.comment
;                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

#val              ; same as (fn [] val)
; <- entity.name.tag.literal_shorthand.fennel
;^^^ source.fennel
;                 ^ punctuation.definition.comment
;                  ^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

#[:one :two $...] ; same as (fn [...] ["one" "two" ...])
; <- entity.name.tag.literal_shorthand.fennel
;^ punctuation.section.brackets.begin.fennel
; ^ punctuation.definition.keyword.fennel
;  ^^^ constant.other.keyword.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^^^ constant.other.keyword.fennel
;           ^ variable.function.hash_shorthand.fennel
;            ^^^ keyword.operator.varargs.fennel
;               ^ punctuation.section.brackets.end.fennel
;                 ^ punctuation.definition.comment
;                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; Hash arguments can also be used as parts of multisyms. For instance, #$.foo is a function which will return the value of the “foo” key in its first argument.

; partial partial application
; Returns a new function which works like its first argument, but fills the first few arguments in place with the given ones. This is related to currying but different because calling it will call the underlying function instead of waiting till it has the “correct” number of args.

; Example:

(partial (fn [x y] (print (+ x y))) 2)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^ entity.name.tag.fennel_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^^ storage.modifier.fn.fennel
;            ^ punctuation.section.brackets.begin.fennel
;             ^^^ source.fennel
;                ^ punctuation.section.brackets.end.fennel
;                  ^ punctuation.section.parens.begin.fennel
;                   ^^^^^ entity.name.tag.lua_support.fennel
;                         ^ punctuation.section.parens.begin.fennel
;                          ^ entity.name.tag.lua_support.fennel
;                            ^^^ source.fennel
;                               ^^^ punctuation.section.parens.end.fennel
;                                   ^ constant.numeric.integer.decimal.fennel
;                                    ^ punctuation.section.parens.end.fennel

; This example returns a function which will print a number that is 2 greater than the argument it is passed.

; pick-values emit exactly n values
; (Since 0.4.0)

; Discard all values after the first n when dealing with multi-values (...) and multiple returns. Useful for composing functions that return multiple values with variadic functions. Expands to a let expression that binds and re-emits exactly n values, e.g.

(pick-values 2 (func))
; <- punctuation.section.parens.begin.fennel
; ^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ constant.numeric.integer.decimal.fennel
;              ^ punctuation.section.parens.begin.fennel
;               ^^^^ variable.function.fennel
;                   ^^ punctuation.section.parens.end.fennel

; expands to

(let [(_0_ _1_) (func)] (values _0_ _1_))
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^ source.fennel
;             ^ punctuation.section.parens.end.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^ variable.function.fennel
;                    ^ punctuation.section.parens.end.fennel
;                     ^ punctuation.section.brackets.end.fennel
;                       ^ punctuation.section.parens.begin.fennel
;                        ^^^^^^ entity.name.tag.fennel_support.fennel
;                               ^^^^^^^ source.fennel
;                                      ^ punctuation.section.parens.end.fennel
;                                       ^ punctuation.section.parens.end.fennel

; Example:

(pick-values 0 :a :b :c :d :e) ; => nil
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;            ^ constant.numeric.integer.decimal.fennel
;              ^ punctuation.definition.keyword.fennel
;               ^ constant.other.keyword.fennel
;                 ^ punctuation.definition.keyword.fennel
;                  ^ constant.other.keyword.fennel
;                    ^ punctuation.definition.keyword.fennel
;                     ^ constant.other.keyword.fennel
;                       ^ punctuation.definition.keyword.fennel
;                        ^ constant.other.keyword.fennel
;                          ^ punctuation.definition.keyword.fennel
;                           ^ constant.other.keyword.fennel
;                            ^ punctuation.section.parens.end.fennel
;                              ^ punctuation.definition.comment
;                               ^^^^^^^ comment.line.fennel

[(pick-values 2 (table.unpack [:a :b :c]))] ;-> ["a" "b"]
; <- punctuation.section.brackets.begin.fennel
;^ punctuation.section.parens.begin.fennel
; ^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;             ^ constant.numeric.integer.decimal.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                             ^ punctuation.section.brackets.begin.fennel
;                              ^ punctuation.definition.keyword.fennel
;                               ^ constant.other.keyword.fennel
;                                 ^ punctuation.definition.keyword.fennel
;                                  ^ constant.other.keyword.fennel
;                                    ^ punctuation.definition.keyword.fennel
;                                     ^ constant.other.keyword.fennel
;                                      ^ punctuation.section.brackets.end.fennel
;                                       ^^ punctuation.section.parens.end.fennel
;                                         ^ punctuation.section.brackets.end.fennel
;                                           ^ punctuation.definition.comment
;                                            ^^^^^^^^^^^^ comment.line.fennel

(fn add [x y ...] (let [sum (+ (or x 0) (or y 0))]
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^^^ entity.name.function.fn.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^^^ source.fennel
;            ^^^ keyword.operator.varargs.fennel
;               ^ punctuation.section.brackets.end.fennel
;                 ^ punctuation.section.parens.begin.fennel
;                  ^^^ entity.name.tag.let.fennel
;                      ^ punctuation.section.brackets.begin.fennel
;                       ^^^ source.fennel
;                           ^ punctuation.section.parens.begin.fennel
;                            ^ entity.name.tag.lua_support.fennel
;                              ^ punctuation.section.parens.begin.fennel
;                               ^^ entity.name.tag.lua_support.fennel
;                                  ^ source.fennel
;                                    ^ constant.numeric.integer.decimal.fennel
;                                     ^ punctuation.section.parens.end.fennel
;                                       ^ punctuation.section.parens.begin.fennel
;                                        ^^ entity.name.tag.lua_support.fennel
;                                           ^ source.fennel
;                                             ^ constant.numeric.integer.decimal.fennel
;                                              ^^ punctuation.section.parens.end.fennel
;                                                ^ punctuation.section.brackets.end.fennel
                        (if (= (select :# ...) 0) sum (add sum ...))))
;                       ^ punctuation.section.parens.begin.fennel
;                        ^^ entity.name.tag.lua_support.fennel
;                           ^ punctuation.section.parens.begin.fennel
;                            ^ entity.name.tag.lua_support.fennel
;                              ^ punctuation.section.parens.begin.fennel
;                               ^^^^^^ entity.name.tag.lua_support.fennel
;                                      ^ punctuation.definition.keyword.fennel
;                                       ^ constant.other.keyword.fennel
;                                         ^^^ keyword.operator.varargs.fennel
;                                            ^ punctuation.section.parens.end.fennel
;                                              ^ constant.numeric.integer.decimal.fennel
;                                               ^ punctuation.section.parens.end.fennel
;                                                 ^^^ source.fennel
;                                                     ^ punctuation.section.parens.begin.fennel
;                                                      ^^^ variable.function.fennel
;                                                          ^^^ source.fennel
;                                                              ^^^ keyword.operator.varargs.fennel
;                                                                 ^^^^ punctuation.section.parens.end.fennel

(add (pick-values 2 10 10 10 10)) ; => 20
; <- punctuation.section.parens.begin.fennel
;^^^ variable.function.fennel
;    ^ punctuation.section.parens.begin.fennel
;     ^^^^^^^^^^^ entity.name.tag.fennel_support.fennel 
;                 ^ constant.numeric.integer.decimal.fennel
;                   ^^ constant.numeric.integer.decimal.fennel
;                      ^^ constant.numeric.integer.decimal.fennel
;                         ^^ constant.numeric.integer.decimal.fennel
;                            ^^ constant.numeric.integer.decimal.fennel
;                              ^^ punctuation.section.parens.end.fennel
;                                 ^ punctuation.definition.comment
;                                  ^^^^^^ comment.line.fennel
(->> [1 2 3 4 5] (table.unpack) (pick-values 3) (add)) ; => 6
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_threading_macros.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ constant.numeric.integer.decimal.fennel
;       ^ constant.numeric.integer.decimal.fennel
;         ^ constant.numeric.integer.decimal.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^ constant.numeric.integer.decimal.fennel
;              ^ punctuation.section.brackets.end.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                               ^ punctuation.section.parens.begin.fennel
;                                ^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                                            ^ constant.numeric.integer.decimal.fennel
;                                             ^ punctuation.section.parens.end.fennel
;                                               ^ punctuation.section.parens.begin.fennel
;                                                ^^^ variable.function.fennel
;                                                   ^^ punctuation.section.parens.end.fennel
;                                                       ^ comment.line.fennel
;                                                        ^^^^ comment.line.fennel

; Note: If n is greater than the number of values supplied, n values will still be emitted. This is reflected when using (select "#" ...) to count varargs, but tables [...] ignore trailing nils:

(select :# (pick-values 5 "one" "two")) ; => 5
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.lua_support.fennel
;       ^ punctuation.definition.keyword.fennel
;        ^ constant.other.keyword.fennel
;          ^ punctuation.section.parens.begin.fennel
;           ^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                         ^ punctuation.definition.string.begin.fennel
;                          ^^^ string.quoted.double.fennel
;                             ^ punctuation.definition.string.end.fennel
;                               ^ punctuation.definition.string.begin.fennel
;                                ^^^ string.quoted.double.fennel
;                                   ^ punctuation.definition.string.end.fennel
;                                    ^^ punctuation.section.parens.end.fennel
;                                       ^ punctuation.definition.comment
;                                        ^^^^^ comment.line.fennel
[(pick-values 5 "one" "two")]           ; => ["one" "two"]
; <- punctuation.section.brackets.begin.fennel
;^ punctuation.section.parens.begin.fennel
; ^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;             ^ constant.numeric.integer.decimal.fennel
;               ^ punctuation.definition.string.begin.fennel
;                ^^^ string.quoted.double.fennel
;                   ^ punctuation.definition.string.end.fennel
;                     ^ punctuation.definition.string.begin.fennel
;                      ^^^ string.quoted.double.fennel
;                         ^ punctuation.definition.string.end.fennel
;                          ^ punctuation.section.parens.end.fennel
;                           ^ punctuation.section.brackets.end.fennel
;                                       ^ punctuation.definition.comment
;                                        ^^^^^^^^^^^^^^^^^ comment.line.fennel

; pick-args create a function of fixed arity
; (Since 0.4.0)

; Like pick-values, but takes an integer n and a function/operator f, and creates a new function that applies exactly n arguments to f.

; Example, using the add function created above:

(pick-args 2 add) ; expands to `(fn [_0_ _1_] (add _0_ _1_))`
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^ variable.function.fennel
;          ^ constant.numeric.integer.decimal.fennel
;            ^^^ source.fennel
;               ^ punctuation.section.parens.end.fennel
;                 ^ punctuation.definition.comment
;                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel
(-> [1 2 3 4 5] (table.unpack) ((pick-args 3 add))) ; => 6
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.fennel_threading_macros.fennel
;   ^ punctuation.section.brackets.begin.fennel
;    ^ constant.numeric.integer.decimal.fennel
;      ^ constant.numeric.integer.decimal.fennel
;        ^ constant.numeric.integer.decimal.fennel
;          ^ constant.numeric.integer.decimal.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^ punctuation.section.brackets.end.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                            ^ punctuation.section.parens.end.fennel
;                              ^^ punctuation.section.parens.begin.fennel
;                                ^^^^^^^^^ variable.function.fennel
;                                          ^ constant.numeric.integer.decimal.fennel
;                                            ^^^ source.fennel
;                                               ^^^ punctuation.section.parens.end.fennel
;                                                   ^ punctuation.definition.comment
;                                                    ^^^^^ comment.line.fennel

(local count-args (partial select "#"))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^^^^^^^^^^ source.fennel
;                 ^ punctuation.section.parens.begin.fennel
;                  ^^^^^^^ entity.name.tag.fennel_support.fennel
;                          ^^^^^^ source.fennel
;                                 ^ punctuation.definition.string.begin.fennel
;                                  ^ string.quoted.double.fennel
;                                   ^ punctuation.definition.string.end.fennel
;                                    ^^ punctuation.section.parens.end.fennel
((pick-args 3 count-args) "still three args, but 2nd and 3rd are nil") ; => 3
; <- punctuation.section.parens.begin.fennel
;^ punctuation.section.parens.begin.fennel
; ^^^^^^^^^ variable.function.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^^^^^^^^^^ source.fennel
;                       ^ punctuation.section.parens.end.fennel
;                         ^ punctuation.definition.string.begin.fennel
;                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                                                                   ^ punctuation.definition.string.end.fennel
;                                                                    ^ punctuation.section.parens.end.fennel
;                                                                      ^ punctuation.definition.comment
;                                                                       ^^^^^ comment.line.fennel

; Binding
; let scoped locals
; Introduces a new scope in which a given set of local bindings are used.

; Example:

(let [x 89]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^^ constant.numeric.integer.decimal.fennel
;         ^ punctuation.section.brackets.end.fennel
  (print (+ x 12)) ; => 101
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^ source.fennel
;             ^^ constant.numeric.integer.decimal.fennel
;               ^^ punctuation.section.parens.end.fennel
;                  ^ punctuation.definition.comment
;                   ^^^^^^^ comment.line.fennel

; These locals cannot be changed with set but they can be shadowed by an inner let or local. Outside the body of the let, the bindings it introduces are no longer visible.

; Any time you bind a local, you can destructure it if the value is a table or a function call which returns multiple values:

; Example:

(let [(x y z) (unpack [10 9 8])]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^ source.fennel
;           ^ punctuation.section.parens.end.fennel
;             ^ punctuation.section.parens.begin.fennel
;              ^^^^^^ entity.name.tag.fennel_support.fennel
;                     ^ punctuation.section.brackets.begin.fennel
;                      ^^ constant.numeric.integer.decimal.fennel
;                         ^ constant.numeric.integer.decimal.fennel
;                           ^ constant.numeric.integer.decimal.fennel
;                            ^ punctuation.section.brackets.end.fennel
;                             ^ punctuation.section.parens.end.fennel
;                              ^ punctuation.section.brackets.end.fennel
  (+ x y z)) ; => 27
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^^^^^ source.fennel
;         ^^ punctuation.section.parens.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^^ comment.line.fennel
; Example:

(let [{:msg message : val} (returns-a-table)]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ punctuation.section.braces.begin.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^^^ constant.other.keyword.fennel
;           ^^^^^^^ source.fennel
;                   ^ keyword.operator.bind.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.braces.end.fennel
;                          ^ punctuation.section.parens.begin.fennel
;                           ^^^^^^^^^^^^^^^ variable.function.fennel
;                                          ^ punctuation.section.parens.end.fennel
;                                           ^ punctuation.section.brackets.end.fennel
  (print message) val)
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^^^^^^^ source.fennel
;               ^ punctuation.section.parens.end.fennel
;                 ^^^ source.fennel
;                    ^ punctuation.section.parens.end.fennel
; Example:

(let [[a b c] [1 2 3]]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^^ punctuation.section.brackets.begin.fennel
;      ^^^^^ source.fennel
;           ^ punctuation.section.brackets.end.fennel
;             ^ punctuation.section.brackets.begin.fennel
;              ^ constant.numeric.integer.decimal.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.brackets.end.fennel
  (+ a b c)) ; => 6
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^^^^^ source.fennel
;         ^^ punctuation.section.parens.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^ comment.line.fennel

; When binding to a sequential table, you can capture all the remainder of the table in a local by using &:

; Example:
(let [[a b & c] [1 2 3 4 5 6]]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^^ punctuation.section.brackets.begin.fennel
;      ^^^ source.fennel
;          ^ keyword.operator.bind.fennel
;            ^ source.fennel
;             ^ punctuation.section.brackets.end.fennel
;               ^ punctuation.section.brackets.begin.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                      ^ constant.numeric.integer.decimal.fennel
;                        ^ constant.numeric.integer.decimal.fennel
;                          ^ constant.numeric.integer.decimal.fennel
;                           ^^ punctuation.section.brackets.end.fennel
  (table.concat c ",")) ; => "3,4,5,6"
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ source.fennel
;                 ^ punctuation.definition.string.begin.fennel
;                  ^ string.quoted.double.fennel
;                   ^ punctuation.definition.string.end.fennel
;                    ^^ punctuation.section.parens.end.fennel
;                       ^ punctuation.definition.comment
;                        ^^^^^^^^^^^^^ comment.line.fennel
; with-open bind and auto-close file handles
; (Since 0.4.2)

; While Lua will automatically close an open file handle when it’s garbage collected, GC may not run right away; with-open ensures handles are closed immediately, error or no, without boilerplate.

; The usage is similar to let, except: - destructuring is disallowed (symbols only on the left-hand side) - every binding should be a file handle or other value with a :close method.

; After executing the body, or upon encountering an error, with-open will invoke (value:close) on every bound variable before returning the results.

; The body is implicitly wrapped in a function and run with xpcall so that all bound handles are closed before it re-raises the error.

; Example:

;; Basic usage
(with-open [fout (io.open :output.txt :w) fin (io.open :input.txt)]
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^ entity.name.tag.fennel_support.fennel
;          ^ punctuation.section.brackets.begin.fennel
;           ^^^^ source.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^^^^^^ entity.name.tag.lua_support.fennel
;                         ^ punctuation.definition.keyword.fennel
;                          ^^^^^^^^^^ constant.other.keyword.fennel
;                                     ^ punctuation.definition.keyword.fennel
;                                      ^ constant.other.keyword.fennel
;                                       ^ punctuation.section.parens.end.fennel
;                                         ^^^ source.fennel
;                                             ^ punctuation.section.parens.begin.fennel
;                                              ^^^^^^^ entity.name.tag.lua_support.fennel
;                                                      ^ punctuation.definition.keyword.fennel
;                                                       ^^^^^^^^^ constant.other.keyword.fennel
;                                                                ^ punctuation.section.parens.end.fennel
;                                                                 ^ punctuation.section.brackets.end.fennel
  (fout:write "Here is some text!\n")
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^^^ variable.function.fennel
;             ^ punctuation.definition.string.begin.fennel
;              ^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                                ^^ constant.character.escape.fennel
;                                  ^ punctuation.definition.string.end.fennel
;                                   ^ punctuation.section.parens.end.fennel
  (fin:line)) ; => first line of input.txt
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^ variable.function.fennel
;          ^^ punctuation.section.parens.end.fennel
;             ^ punctuation.definition.comment
;              ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

;; This demonstrates that the file will also be closed upon error.
(var fh nil)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^^ source.fennel
;       ^^^ constant.language.fennel
;          ^ punctuation.section.parens.end.fennel
(local (ok err)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ source.fennel
;             ^ punctuation.section.parens.end.fennel
  (pcall #(with-open [file (io.open :test.txt :w)]
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ entity.name.tag.literal_shorthand.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^^^^^^^^^ entity.name.tag.fennel_support.fennel
;                    ^ punctuation.section.brackets.begin.fennel
;                     ^^^^ source.fennel
;                          ^ punctuation.section.parens.begin.fennel
;                           ^^^^^^^ entity.name.tag.lua_support.fennel
;                                   ^ punctuation.definition.keyword.fennel
;                                    ^^^^^^^^ constant.other.keyword.fennel
;                                             ^ punctuation.definition.keyword.fennel
;                                              ^ constant.other.keyword.fennel
;                                               ^ punctuation.section.parens.end.fennel
;                                                ^ punctuation.section.brackets.end.fennel
            (set fh file) ; you would normally never do this
;           ^ punctuation.section.parens.begin.fennel
;            ^^^ entity.name.tag.fennel_support.fennel
;                ^^^^^^^ source.fennel
;                         ^ punctuation.definition.comment
;                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel
            (error :whoops!))))
;           ^ punctuation.section.parens.begin.fennel
;            ^^^^^ entity.name.tag.lua_support.fennel
;                  ^ punctuation.definition.keyword.fennel
;                   ^^^^^^^ constant.other.keyword.fennel
;                          ^^^^ punctuation.section.parens.end.fennel
(io.type fh) ; => "closed file"
; <- punctuation.section.parens.begin.fennel
;^^^^^^^ entity.name.tag.lua_support.fennel
;        ^^ source.fennel
;          ^ punctuation.section.parens.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^^^^^^^^^^^^^ comment.line.fennel
[ok err]     ; => [false "<error message and stacktrace>"]
; <- punctuation.section.brackets.begin.fennel
;^^^^^^ source.fennel
;      ^ punctuation.section.brackets.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; local declare local
; Introduces a new local inside an existing scope. Similar to let but without a body argument. Recommended for use at the top-level of a file for locals which will be used throughout the file.

; Example:

(local tau-approx 6.28318)
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.binding.fennel
;      ^^^^^^^^^^ source.fennel
;                 ^^^^^^^ constant.numeric.float.decimal.fennel
;                        ^ punctuation.section.parens.end.fennel

; Supports destructuring and multiple-value binding.

; match pattern matching
; (Since 0.2.0)

; Evaluates its first argument, then searches thru the subsequent pattern/body clauses to find one where the pattern matches the value, and evaluates the corresponding body. Pattern matching can be thought of as a combination of destructuring and conditionals.

; Example:

(match mytable
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.fennel_support.fennel
;      ^^^^^^^ source.fennel
  59      :will-never-match-hopefully
; ^^ constant.numeric.integer.decimal.fennel
;         ^ punctuation.definition.keyword.fennel
;          ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.keyword.fennel
  [9 q 5] (print :q q)
; ^ punctuation.section.brackets.begin.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^ source.fennel
;      ^ constant.numeric.integer.decimal.fennel
;       ^ punctuation.section.brackets.end.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^^^^^ entity.name.tag.lua_support.fennel
;                ^ punctuation.definition.keyword.fennel
;                 ^ constant.other.keyword.fennel
;                   ^ source.fennel
;                    ^ punctuation.section.parens.end.fennel
  [1 a b] (+ a b))
; ^ punctuation.section.brackets.begin.fennel
;  ^ constant.numeric.integer.decimal.fennel
;    ^^^ source.fennel
;       ^ punctuation.section.brackets.end.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^ entity.name.tag.lua_support.fennel
;            ^^^ source.fennel
;               ^^ punctuation.section.parens.end.fennel

; In the example above, we have a mytable value followed by three pattern/body clauses. The first clause will only match if mytable is 59. The second clause will match if mytable is a table with 9 as its first element and 5 as its third element; if it matches, then it evaluates (print :q q) with q bound to the second element of mytable. The final clause will only match if mytable has 1 as its first element; if so then it will add up the second and third elements.

; Patterns can be tables, literal values, or symbols. If a symbol has already been bound, then the value is checked against the existing local’s value, but if it’s a new local then the symbol is bound to the value.

; Tables can be nested, and they may be either sequential ([] style) or key/value ({} style) tables. Sequential tables will match if they have at least as many elements as the pattern. (To allow an element to be nil, use a symbol like ?this.) Tables will never fail to match due to having too many elements. You can use & to capture all the remaining elements of a sequential table, just like let.

(match mytable
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.fennel_support.fennel
;      ^^^^^^^ source.fennel
  {:subtable [a b ?c] :depth depth} (* b depth)
; ^ punctuation.section.braces.begin.fennel
;  ^ punctuation.definition.keyword.fennel
;   ^^^^^^^^ constant.other.keyword.fennel
;            ^ punctuation.section.brackets.begin.fennel
;             ^^^ source.fennel
;                 ^ variable.function.optional.fennel
;                  ^ source.fennel
;                   ^ punctuation.section.brackets.end.fennel
;                     ^ punctuation.definition.keyword.fennel
;                      ^^^^^ constant.other.keyword.fennel
;                            ^^^^^ source.fennel
;                                 ^ punctuation.section.braces.end.fennel
;                                   ^ punctuation.section.parens.begin.fennel
;                                    ^ entity.name.tag.lua_support.fennel
;                                      ^^^^^^^ source.fennel
;                                             ^ punctuation.section.parens.end.fennel
  _ :unknown)
; ^ source.fennel
;   ^ punctuation.definition.keyword.fennel
;    ^^^^^^^ constant.other.keyword.fennel
;           ^ punctuation.section.parens.end.fennel

; You can also match against multiple return values using parentheses. (These cannot be nested, but they can contain tables.) This can be useful for error checking.

(match (io.open "/some/file")
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.fennel_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^^ entity.name.tag.lua_support.fennel
;               ^ punctuation.definition.string.begin.fennel
;                ^^^^^^^^^^ string.quoted.double.fennel
;                          ^ punctuation.definition.string.end.fennel
;                           ^ punctuation.section.parens.end.fennel
  (nil msg) (report-error msg)
; ^ punctuation.section.parens.begin.fennel
;  ^^^ constant.language.fennel
;      ^^^ source.fennel
;         ^ punctuation.section.parens.end.fennel
;           ^ punctuation.section.parens.begin.fennel
;            ^^^^^^^^^^^^ variable.function.fennel
;                         ^^^ source.fennel
;                            ^ punctuation.section.parens.end.fennel
  f (read-file f))
; ^ source.fennel
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^^^^^ variable.function.fennel
;              ^ source.fennel
;               ^^ punctuation.section.parens.end.fennel


; Pattern matching performs unification, meaning that if x has an existing binding, clauses which attempt to bind it to a different value will not match:

(let [x 95]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^^ constant.numeric.integer.decimal.fennel
;         ^ punctuation.section.brackets.end.fennel
 (match [52 85 95] 
;^ punctuation.section.parens.begin.fennel
; ^^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^^ constant.numeric.integer.decimal.fennel
;           ^^ constant.numeric.integer.decimal.fennel
;              ^^ constant.numeric.integer.decimal.fennel
;                ^ punctuation.section.brackets.end.fennel
   [b a a] :no ; because a=85 and a=95
;  ^ punctuation.section.brackets.begin.fennel
;   ^^^^^ source.fennel
;        ^ punctuation.section.brackets.end.fennel
;          ^ punctuation.definition.keyword.fennel
;           ^^ constant.other.keyword.fennel
;              ^ punctuation.definition.comment
;               ^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel
   [x y z] :no ; because x=95 and x=52
;  ^ punctuation.section.brackets.begin.fennel
;   ^^^^^ source.fennel
;        ^ punctuation.section.brackets.end.fennel
;          ^ punctuation.definition.keyword.fennel
;           ^^ constant.other.keyword.fennel
;              ^ punctuation.definition.comment
;               ^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel
   [a b x] :yes)) ; a and b are fresh values while x=95 and x=95
;  ^ punctuation.section.brackets.begin.fennel
;   ^^^^^ source.fennel
;        ^ punctuation.section.brackets.end.fennel
;          ^ punctuation.definition.keyword.fennel
;           ^^^ constant.other.keyword.fennel
;              ^^ punctuation.section.parens.end.fennel
;                 ^ punctuation.definition.comment
;                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; There is a special case for _; it is never bound and always acts as a wildcard. If no clause matches, it returns nil.

; Sometimes you need to match on something more general than a structure or specific value. In these cases you can use guard clauses:

(match [91 12 53]
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.fennel_support.fennel
;      ^ punctuation.section.brackets.begin.fennel
;       ^^ constant.numeric.integer.decimal.fennel
;          ^^ constant.numeric.integer.decimal.fennel
;             ^^ constant.numeric.integer.decimal.fennel
;               ^ punctuation.section.brackets.end.fennel
  ([a b c] ? (= 5 a)) :will-not-match
; ^ punctuation.section.parens.begin.fennel
;  ^ punctuation.section.brackets.begin.fennel
;   ^^^^^ source.fennel
;        ^ punctuation.section.brackets.end.fennel
;          ^ variable.function.optional.fennel
;            ^ punctuation.section.parens.begin.fennel
;             ^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                 ^ source.fennel
;                  ^^ punctuation.section.parens.end.fennel
;                     ^ punctuation.definition.keyword.fennel
;                      ^^^^^^^^^^^^^^ constant.other.keyword.fennel
  ([a b c] ? (= 0 (math.fmod (+ a b c) 2)) (= 91 a)) c) ; -> 53
; ^ punctuation.section.parens.begin.fennel
;  ^ punctuation.section.brackets.begin.fennel
;   ^^^^^ source.fennel
;        ^ punctuation.section.brackets.end.fennel
;          ^ variable.function.optional.fennel
;            ^ punctuation.section.parens.begin.fennel
;             ^ entity.name.tag.lua_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                 ^ punctuation.section.parens.begin.fennel
;                  ^^^^^^^^^ entity.name.tag.lua_support.fennel
;                            ^ punctuation.section.parens.begin.fennel
;                             ^ entity.name.tag.lua_support.fennel
;                               ^^^^^ source.fennel
;                                    ^ punctuation.section.parens.end.fennel
;                                      ^ constant.numeric.integer.decimal.fennel
;                                       ^^ punctuation.section.parens.end.fennel
;                                          ^ punctuation.section.parens.begin.fennel
;                                           ^ entity.name.tag.lua_support.fennel
;                                             ^^ constant.numeric.integer.decimal.fennel
;                                                ^ source.fennel
;                                                 ^^ punctuation.section.parens.end.fennel
;                                                    ^ source.fennel
;                                                     ^ punctuation.section.parens.end.fennel
;                                                       ^ punctuation.definition.comment
;                                                        ^^^^^^ comment.line.fennel

; In this case the pattern should be wrapped in parens (like when matching against multiple values) but the second thing in the parens is the ? symbol. Each form following this marker is a condition; all the conditions must evaluate to true for that pattern to match.

; (Note that Lua also has “patterns” which are matched against strings similar to how regular expressions work in other languages; these are two distinct concepts with similar names.)

; global set global variable
; Sets a global variable to a new value. Note that there is no distinction between introducing a new global and changing the value of an existing one.

; Example:

(global prettyprint (fn [x] (print (view x))))
; <- punctuation.section.parens.begin.fennel
;^^^^^^ variable.function.fennel
;       ^^^^^^^^^^^ source.fennel
;                   ^ punctuation.section.parens.begin.fennel
;                    ^^ storage.modifier.fn.fennel
;                       ^ punctuation.section.brackets.begin.fennel
;                        ^ source.fennel
;                         ^ punctuation.section.brackets.end.fennel
;                           ^ punctuation.section.parens.begin.fennel
;                            ^^^^^ entity.name.tag.lua_support.fennel
;                                  ^ punctuation.section.parens.begin.fennel
;                                   ^^^^ variable.function.fennel
;                                        ^ source.fennel
;                                         ^^^^ punctuation.section.parens.end.fennel

; Supports destructuring and multiple-value binding.

; var declare local variable
; Introduces a new local inside an existing scope which may have its value changed. Identical to local apart from allowing set to work on it.

; Example:

(var x 83)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^ source.fennel
;      ^^ constant.numeric.integer.decimal.fennel
;        ^ punctuation.section.parens.end.fennel

; Supports destructuring and multiple-value binding.

; set set local variable or table field
; Changes the value of a variable introduced with var. Will not work on globals or let/local-bound locals. Can also be used to change a field of a table, even if the table is bound with let or local, provided the field is given at compile-time.

; Example:

(set x (+ x 91))
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^ source.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^ entity.name.tag.lua_support.fennel
;         ^ source.fennel
;           ^^ constant.numeric.integer.decimal.fennel
;             ^^ punctuation.section.parens.end.fennel

; Example:

(let [t {:a 4 :b 8}]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.braces.begin.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^ constant.other.keyword.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^ punctuation.definition.keyword.fennel
;              ^ constant.other.keyword.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^ punctuation.section.braces.end.fennel
;                  ^ punctuation.section.brackets.end.fennel
  (set t.a 2) t) ; => {:a 2 :b 8}
; ^ punctuation.section.parens.begin.fennel
;  ^^^ entity.name.tag.fennel_support.fennel
;      ^^^ source.fennel
;          ^ constant.numeric.integer.decimal.fennel
;           ^ punctuation.section.parens.end.fennel
;             ^ source.fennel
;              ^ punctuation.section.parens.end.fennel
;                ^ punctuation.definition.comment
;                 ^^^^^^^^^^^^^^^ comment.line.fennel

; Supports destructuring and multiple-value binding.

; tset set table field
; Set the field of a given table to a new value. The field name does not need to be known at compile-time. Works on any table, even those bound with local and let.

; Example:

(let [tbl {:d 32} field :d]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^^^ source.fennel
;         ^ punctuation.section.braces.begin.fennel
;          ^ punctuation.definition.keyword.fennel
;           ^ constant.other.keyword.fennel
;             ^^ constant.numeric.integer.decimal.fennel
;               ^ punctuation.section.braces.end.fennel
;                 ^^^^^ source.fennel
;                       ^ punctuation.definition.keyword.fennel
;                        ^ constant.other.keyword.fennel
;                         ^ punctuation.section.brackets.end.fennel
  (tset tbl field 19) tbl) ; => {:d 19}
; ^ punctuation.section.parens.begin.fennel
;  ^^^^ entity.name.tag.fennel_support.fennel
;       ^^^^^^^^^ source.fennel
;                 ^^ constant.numeric.integer.decimal.fennel
;                   ^ punctuation.section.parens.end.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.parens.end.fennel
;                          ^ punctuation.definition.comment
;                           ^^^^^^^^^^^ comment.line.fennel

; You can provide multiple successive field names to perform nested sets.

; multiple value binding
; In any of the above contexts where you can make a new binding, you can use multiple value binding. Otherwise you will only capture the first value.

; Example:

(let [x (values 1 2 3)]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^ entity.name.tag.fennel_support.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                 ^ constant.numeric.integer.decimal.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                    ^ punctuation.section.parens.end.fennel
;                     ^ punctuation.section.brackets.end.fennel
  x) ; => 1
; ^ source.fennel
;  ^ punctuation.section.parens.end.fennel
;    ^ punctuation.definition.comment
;     ^^^^^ comment.line.fennel

; Example:

(let [(file-handle message code) (io.open "foo.blah")]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^^^^^^^^^^^^^^^^^^ source.fennel
;                              ^ punctuation.section.parens.end.fennel
;                                ^ punctuation.section.parens.begin.fennel
;                                 ^^^^^^^ entity.name.tag.lua_support.fennel
;                                         ^ punctuation.definition.string.begin.fennel
;                                          ^^^^^^^^ string.quoted.double.fennel
;                                                  ^ punctuation.definition.string.end.fennel
;                                                   ^ punctuation.section.parens.end.fennel
;                                                    ^ punctuation.section.brackets.end.fennel
  message) ; => "foo.blah: No such file or directory"
; ^^^^^^^ source.fennel
;        ^ punctuation.section.parens.end.fennel
;          ^ punctuation.definition.comment
;           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; Example:

; TODO: Open a pull request to remove comma and fix variable name
(global (x-m x-e) (math.frexp 21)) {:m x-m :e x-e} ;  => {:e 5 :m 0.65625}
; <- punctuation.section.parens.begin.fennel
;^^^^^^ variable.function.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^^ source.fennel
;               ^ punctuation.section.parens.end.fennel
;                 ^ punctuation.section.parens.begin.fennel
;                  ^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                             ^^ constant.numeric.integer.decimal.fennel
;                               ^^ punctuation.section.parens.end.fennel
;                                  ^ punctuation.section.braces.begin.fennel
;                                   ^ punctuation.definition.keyword.fennel
;                                    ^ constant.other.keyword.fennel
;                                      ^^^ source.fennel
;                                          ^ punctuation.definition.keyword.fennel
;                                           ^ constant.other.keyword.fennel
;                                             ^^^ source.fennel
;                                                ^ punctuation.section.braces.end.fennel
;                                                  ^ punctuation.definition.comment
;                                                   ^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; Example:

; TODO: Open pull request to add comment...
(do (local (_ _ z) (unpack [:a :b :c :d :e])) z) ; => c
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^ entity.name.tag.binding.fennel
;          ^ punctuation.section.parens.begin.fennel
;           ^^^^^ source.fennel
;                ^ punctuation.section.parens.end.fennel
;                  ^ punctuation.section.parens.begin.fennel
;                   ^^^^^^ entity.name.tag.fennel_support.fennel
;                          ^ punctuation.section.brackets.begin.fennel
;                           ^ punctuation.definition.keyword.fennel
;                            ^ constant.other.keyword.fennel
;                              ^ punctuation.definition.keyword.fennel
;                               ^ constant.other.keyword.fennel
;                                 ^ punctuation.definition.keyword.fennel
;                                  ^ constant.other.keyword.fennel
;                                    ^ punctuation.definition.keyword.fennel
;                                     ^ constant.other.keyword.fennel
;                                       ^ punctuation.definition.keyword.fennel
;                                        ^ constant.other.keyword.fennel
;                                         ^ punctuation.section.brackets.end.fennel
;                                          ^^ punctuation.section.parens.end.fennel
;                                             ^ source.fennel
;                                              ^ punctuation.section.parens.end.fennel
;                                                ^ punctuation.definition.comment
;                                                 ^^^^^ comment.line.fennel

; Flow Control
; if conditional
; Checks a condition and evaluates a corresponding body. Accepts any number of condition/body pairs; if an odd number of arguments is given, the last value is treated as a catch-all “else”. Similar to cond in other lisps.

; Example:

(let [x (math.random 64)]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                    ^^ constant.numeric.integer.decimal.fennel
;                      ^ punctuation.section.parens.end.fennel
;                       ^ punctuation.section.brackets.end.fennel
  (if (= 0 (% x 10))
; ^ punctuation.section.parens.begin.fennel
;  ^^ entity.name.tag.lua_support.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^ entity.name.tag.lua_support.fennel
;        ^ constant.numeric.integer.decimal.fennel
;          ^ punctuation.section.parens.begin.fennel
;           ^ entity.name.tag.lua_support.fennel
;             ^ source.fennel
;               ^^ constant.numeric.integer.decimal.fennel
;                 ^^ punctuation.section.parens.end.fennel
      "multiple of ten"
;     ^ punctuation.definition.string.begin.fennel
;      ^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                     ^ punctuation.definition.string.end.fennel
      (= 0 (% x 2))
;     ^ punctuation.section.parens.begin.fennel
;      ^ entity.name.tag.lua_support.fennel
;        ^ constant.numeric.integer.decimal.fennel
;          ^ punctuation.section.parens.begin.fennel
;           ^ entity.name.tag.lua_support.fennel
;             ^ source.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                ^^ punctuation.section.parens.end.fennel
      "even"
;     ^ punctuation.definition.string.begin.fennel
;      ^^^^ string.quoted.double.fennel
;          ^ punctuation.definition.string.end.fennel
      "I dunno, something else"))
;     ^ punctuation.definition.string.begin.fennel
;      ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                             ^ punctuation.definition.string.end.fennel
;                              ^^ punctuation.section.parens.end.fennel

; All values other than nil or false are treated as true.

; when single side-effecting conditional
; Takes a single condition and evaluates the rest as a body if it’s not nil or false. This is intended for side-effects.

; Example:

(when launch-missiles?
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^^^^^^^^^^^^^^^^ source.fennel
  (power-on)
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^ variable.function.fennel
;          ^ punctuation.section.parens.end.fennel
  (open-doors)
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^^^ variable.function.fennel
;            ^ punctuation.section.parens.end.fennel
  (fire))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^ variable.function.fennel
;      ^^ punctuation.section.parens.end.fennel

; each general iteration
; Run the body once for each value provided by the iterator. Commonly used with ipairs (for sequential tables) or pairs (for any table in undefined order) but can be used with any iterator.

; Example:

(each [key value (pairs mytbl)]
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ punctuation.section.brackets.begin.fennel
;      ^^^^^^^^^ source.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^^^^ entity.name.tag.lua_support.fennel
;                       ^^^^^ source.fennel
;                            ^ punctuation.section.parens.end.fennel
;                             ^ punctuation.section.brackets.end.fennel
  (print key (f value)))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^^^ source.fennel
;            ^ punctuation.section.parens.begin.fennel
;             ^ variable.function.fennel
;               ^^^^^ source.fennel
;                    ^^^ punctuation.section.parens.end.fennel

; Most iterators return two values, but each will bind any number.

; for numeric loop
; Counts a number from a start to stop point (inclusive), evaluating the body once for each value. Accepts an optional step.

; Example:

(for [i 1 10 2]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.lua_support.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ constant.numeric.integer.decimal.fennel
;         ^^ constant.numeric.integer.decimal.fennel
;            ^ constant.numeric.integer.decimal.fennel
;             ^ punctuation.section.brackets.end.fennel
  (print i))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ source.fennel
;         ^^ punctuation.section.parens.end.fennel

; This example will print all odd numbers under ten.

; do evaluate multiple forms returning last value
; Accepts any number of forms and evaluates all of them in order, returning the last value. This is used for inserting side-effects into a form which accepts only a single value, such as in a body of an if when multiple clauses make it so you can’t use when. Some lisps call this begin or progn.

(if launch-missiles?
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^^^^^^^^^^^^^^^^ source.fennel
    (do
;   ^ punctuation.section.parens.begin.fennel
;    ^^ entity.name.tag.lua_support.fennel
      (power-on)
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^^ variable.function.fennel
;              ^ punctuation.section.parens.end.fennel
      (open-doors)
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^^^^ variable.function.fennel
;                ^ punctuation.section.parens.end.fennel
      (fire))
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^ variable.function.fennel
;          ^^ punctuation.section.parens.end.fennel
    false-alarm?
;   ^^^^^^^^^^^^ source.fennel
    (promote lt-petrov))
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^^^ variable.function.fennel
;            ^^^^^^^^^ source.fennel
;                     ^ punctuation.section.parens.end.fennel

; Data
; operators
; and, or, not: boolean
; +, -, *, /, //, %, : arithmetic

; >, <, >=, <=, =, not=: comparison
; lshift, rshift, band, bor, bxor, bnot: bitwise operations
; These all work as you would expect, with a few caveats. // for integer division and the bitwise operators are only available in Lua 5.3 and onward.

; They all take any number of arguments, as long as that number is fixed at compile-time. For instance, (= 2 2 (unpack [2 5])) will evaluate to true because the compile-time number of values being compared is 3.

; Note that these are all special forms which cannot be used as higher-order functions.

; .. string concatenation
; Concatenates its arguments into one string. Will coerce numbers into strings, but not other types.

; Example:

(.. "Hello" " " "world" 7 "!!!") ; => "Hello world7!!!"
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ punctuation.definition.string.begin.fennel
;    ^^^^^ string.quoted.double.fennel
;         ^ punctuation.definition.string.end.fennel
;           ^ punctuation.definition.string.begin.fennel
;            ^ string.quoted.double.fennel
;             ^ punctuation.definition.string.end.fennel
;               ^ punctuation.definition.string.begin.fennel
;                ^^^^^ string.quoted.double.fennel
;                     ^ punctuation.definition.string.end.fennel
;                       ^ constant.numeric.integer.decimal.fennel
;                         ^ punctuation.definition.string.begin.fennel
;                          ^^^ string.quoted.double.fennel
;                             ^ punctuation.definition.string.end.fennel
;                              ^ punctuation.section.parens.end.fennel
;                                ^ punctuation.definition.comment
;                                 ^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; length string or table length
; (Changed in 0.3.0: the function was called # before.)

; Returns the length of a string or table. Note that the length of a table with gaps (nils) in it is undefined; it can return a number corresponding to any of the table’s “boundary” positions between nil and non-nil values. If a table has nils and you want to know the last consecutive numeric index starting at 1, you must calculate it yourself with ipairs; if you want to know the maximum numeric key in a table with nils, you can use table.maxn.

; Example:

(+ (length [1 2 3 nil 8]) (length "abc")) ; => 6 or 8
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^ punctuation.section.parens.begin.fennel
;   ^^^^^^ entity.name.tag.fennel_support.fennel
;          ^ punctuation.section.brackets.begin.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^ constant.numeric.integer.decimal.fennel
;               ^ constant.numeric.integer.decimal.fennel
;                 ^^^ constant.language.fennel
;                     ^ constant.numeric.integer.decimal.fennel
;                      ^ punctuation.section.brackets.end.fennel
;                       ^ punctuation.section.parens.end.fennel
;                         ^ punctuation.section.parens.begin.fennel
;                          ^^^^^^ entity.name.tag.fennel_support.fennel
;                                 ^ punctuation.definition.string.begin.fennel
;                                  ^^^ string.quoted.double.fennel
;                                     ^ punctuation.definition.string.end.fennel
;                                      ^^ punctuation.section.parens.end.fennel
;                                         ^ punctuation.definition.comment
;                                          ^^^^^^^^^^ comment.line.fennel

; . table lookup
; Looks up a given key in a table. Multiple arguments will perform nested lookup.

; Example:

(. mytbl myfield)
; <- punctuation.section.parens.begin.fennel
;^ entity.name.tag.lua_support.fennel
;  ^^^^^^^^^^^^^ source.fennel
;               ^ punctuation.section.parens.end.fennel

; Example:

(let [t {:a [2 3 4]}] (. t :a 2)) ; => 3
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.braces.begin.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^ constant.other.keyword.fennel
;           ^ punctuation.section.brackets.begin.fennel
;            ^ constant.numeric.integer.decimal.fennel
;              ^ constant.numeric.integer.decimal.fennel
;                ^ constant.numeric.integer.decimal.fennel
;                 ^ punctuation.section.brackets.end.fennel
;                  ^ punctuation.section.braces.end.fennel
;                   ^ punctuation.section.brackets.end.fennel
;                     ^ punctuation.section.parens.begin.fennel
;                      ^ entity.name.tag.lua_support.fennel
;                        ^ source.fennel
;                          ^ punctuation.definition.keyword.fennel
;                           ^ constant.other.keyword.fennel
;                             ^ constant.numeric.integer.decimal.fennel
;                              ^^ punctuation.section.parens.end.fennel
;                                 ^ punctuation.definition.comment
;                                  ^^^^^ comment.line.fennel

; Note that if the field name is a string known at compile time, you don’t need this and can just use mytbl.field.

; : method call
; Looks up a function in a table and calls it with the table as its first argument. This is a common idiom in many Lua APIs, including some built-in ones.

; (Since 0.3.0) Just like Lua, you can perform a method call by calling a function name where : separates the table variable and method name.

; Example:

(let [f (assert (io.open "hello" "w"))]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^ entity.name.tag.lua_support.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ punctuation.definition.string.begin.fennel
;                              ^ punctuation.definition.string.end.fennel
;                                ^ punctuation.definition.string.begin.fennel
;                                 ^ string.quoted.double.fennel
;                                  ^ punctuation.definition.string.end.fennel
;                                   ^^ punctuation.section.parens.end.fennel
;                                     ^ punctuation.section.brackets.end.fennel
  (f:write "world")
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^ variable.function.fennel
;          ^ punctuation.definition.string.begin.fennel
;           ^^^^^ string.quoted.double.fennel
;                ^ punctuation.definition.string.end.fennel
;                 ^ punctuation.section.parens.end.fennel
  (f:close))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^ variable.function.fennel
;         ^^ punctuation.section.parens.end.fennel

; If the name of the method isn’t known at compile time, you can use : followed by the table and then the method’s name as a string.

; Example:

(let [f (assert (io.open "hello" "w"))
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^ entity.name.tag.lua_support.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ punctuation.definition.string.begin.fennel
;                              ^ punctuation.definition.string.end.fennel
;                                ^ punctuation.definition.string.begin.fennel
;                                 ^ string.quoted.double.fennel
;                                  ^ punctuation.definition.string.end.fennel
;                                   ^^ punctuation.section.parens.end.fennel
      method1 :write
;     ^^^^^^^ source.fennel
;             ^ punctuation.definition.keyword.fennel
;              ^^^^^ constant.other.keyword.fennel
      method2 :close]
;     ^^^^^^^ source.fennel
;             ^ punctuation.definition.keyword.fennel
;              ^^^^^ constant.other.keyword.fennel
;                   ^ punctuation.section.brackets.end.fennel
  (: f method1 "world")
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^^^^^^^^^ source.fennel
;              ^ punctuation.definition.string.begin.fennel
;               ^^^^^ string.quoted.double.fennel
;                    ^ punctuation.definition.string.end.fennel
;                     ^ punctuation.section.parens.end.fennel
  (: f method2))
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^^^^^^^^^ source.fennel
;             ^^ punctuation.section.parens.end.fennel

; Both of these examples are equivalent to the following:

(let [f (assert (io.open "hello" "w"))]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^ entity.name.tag.lua_support.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ punctuation.definition.string.begin.fennel
;                              ^ punctuation.definition.string.end.fennel
;                                ^ punctuation.definition.string.begin.fennel
;                                 ^ string.quoted.double.fennel
;                                  ^ punctuation.definition.string.end.fennel
;                                   ^^ punctuation.section.parens.end.fennel
;                                     ^ punctuation.section.brackets.end.fennel
  (f.write f "world")
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^ variable.function.fennel
;          ^ source.fennel
;            ^ punctuation.definition.string.begin.fennel
;             ^^^^^ string.quoted.double.fennel
;                  ^ punctuation.definition.string.end.fennel
;                   ^ punctuation.section.parens.end.fennel
  (f.close f))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^ variable.function.fennel
;          ^ source.fennel
;           ^^ punctuation.section.parens.end.fennel


; values multi-valued return
; Returns multiple values from a function. Usually used to signal failure by returning nil followed by a message.

; Example:

(fn [filename]
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^ punctuation.section.brackets.begin.fennel
;    ^^^^^^^^ source.fennel
;            ^ punctuation.section.brackets.end.fennel
  (if (valid-file-name? filename)
; ^ punctuation.section.parens.begin.fennel
;  ^^ entity.name.tag.lua_support.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^^^^^^^^^^ variable.function.fennel
;                       ^^^^^^^^ source.fennel
;                               ^ punctuation.section.parens.end.fennel
      (open-file filename)
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^^^ variable.function.fennel
;                ^^^^^^^^ source.fennel
;                        ^ punctuation.section.parens.end.fennel
      (values nil (.. "Invalid filename: " filename))))
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^ entity.name.tag.fennel_support.fennel
;             ^^^ constant.language.fennel
;                 ^ punctuation.section.parens.begin.fennel
;                  ^^ entity.name.tag.lua_support.fennel
;                     ^ punctuation.definition.string.begin.fennel
;                      ^^^^^^^^^^^^^^^^^^ string.quoted.double.fennel
;                                        ^ punctuation.definition.string.end.fennel
;                                          ^^^^^^^^ source.fennel
;                                                  ^^^^ punctuation.section.parens.end.fennel


; while good old while loop
; Loops over a body until a condition is met. Uses a native Lua while loop, so is preferable to a lambda function and tail recursion.

; Example:

(do
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
  (var done? false)
; ^ punctuation.section.parens.begin.fennel
;  ^^ entity.name.tag.fennel_support.fennel
;      ^^^^^ source.fennel
;            ^^^^^ constant.language.fennel
;                 ^ punctuation.section.parens.end.fennel
  (while (not done?)
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^^^ entity.name.tag.lua_support.fennel
;             ^^^^^ source.fennel
;                  ^ punctuation.section.parens.end.fennel
    (print :not-done)
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^ entity.name.tag.lua_support.fennel
;          ^ punctuation.definition.keyword.fennel
;           ^^^^^^^^ constant.other.keyword.fennel
;                   ^ punctuation.section.parens.end.fennel
    (when (> (math.random) 0.95)
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^ entity.name.tag.fennel_support.fennel
;         ^ punctuation.section.parens.begin.fennel
;          ^ entity.name.tag.lua_support.fennel
;            ^ punctuation.section.parens.begin.fennel
;             ^^^^^^^^^^^ entity.name.tag.lua_support.fennel
;                        ^ punctuation.section.parens.end.fennel
;                          ^^^^ constant.numeric.float.decimal.fennel
;                              ^ punctuation.section.parens.end.fennel
      (set done? true))))
;     ^ punctuation.section.parens.begin.fennel
;      ^^^ entity.name.tag.fennel_support.fennel
;          ^^^^^ source.fennel
;                ^^^^ constant.language.fennel
;                    ^^^^ punctuation.section.parens.end.fennel

; Other
; ->, ->>, -?> and -?>> threading macros
; The -> macro takes its first value and splices it into the second form as the first argument. The result of evaluating the second form gets spliced into the first argument of the third form, and so on.

; Example:

(-> 52
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.fennel_threading_macros.fennel
;   ^^ constant.numeric.integer.decimal.fennel
    (+ 91 2) ; (+ 52 91 2)
;   ^ punctuation.section.parens.begin.fennel
;    ^ entity.name.tag.lua_support.fennel
;      ^^ constant.numeric.integer.decimal.fennel
;         ^ constant.numeric.integer.decimal.fennel
;          ^ punctuation.section.parens.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^^^^^^^^ comment.line.fennel
    (- 8)    ; (- (+ 52 91 2) 8)
;   ^ punctuation.section.parens.begin.fennel
;    ^ entity.name.tag.lua_support.fennel
;      ^ constant.numeric.integer.decimal.fennel
;       ^ punctuation.section.parens.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^^^^^^^^^^^^^^ comment.line.fennel
    (print "is the answer")) ; (print (- (+ 52 91 2) 8) "is the answer")
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^ entity.name.tag.lua_support.fennel
;          ^ punctuation.definition.string.begin.fennel
;           ^^^^^^^^^^^^^ string.quoted.double.fennel
;                        ^ punctuation.definition.string.end.fennel
;                         ^^ punctuation.section.parens.end.fennel
;                            ^ punctuation.definition.comment
;                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; The ->> macro works the same, except it splices it into the last position of each form instead of the first.

; -?> and -?>>, the thread maybe macros, are similar to -> & ->> but they also do checking after the evaluation of each threaded form. If the result is false or nil then the threading stops and the result is returned. -?> splices the threaded value as the first argument, like ->, and -?>> splices it into the last position, like ->>.

; This example shows how to use them to avoid accidentally indexing a nil value:

(-?> {:a {:b {:c 42}}}
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_threading_macros.fennel
;    ^ punctuation.section.braces.begin.fennel
;     ^ punctuation.definition.keyword.fennel
;      ^ constant.other.keyword.fennel
;        ^ punctuation.section.braces.begin.fennel
;         ^ punctuation.definition.keyword.fennel
;          ^ constant.other.keyword.fennel
;            ^ punctuation.section.braces.begin.fennel
;             ^ punctuation.definition.keyword.fennel
;              ^ constant.other.keyword.fennel
;                ^^ constant.numeric.integer.decimal.fennel
;                  ^^^ punctuation.section.braces.end.fennel
     (. :a)
;    ^ punctuation.section.parens.begin.fennel
;     ^ entity.name.tag.lua_support.fennel
;       ^ punctuation.definition.keyword.fennel
;        ^ constant.other.keyword.fennel
;         ^ punctuation.section.parens.end.fennel
     (. :missing)
;    ^ punctuation.section.parens.begin.fennel
;     ^ entity.name.tag.lua_support.fennel
;       ^ punctuation.definition.keyword.fennel
;        ^^^^^^^ constant.other.keyword.fennel
;               ^ punctuation.section.parens.end.fennel
     (. :c)) ; -> nil
;    ^ punctuation.section.parens.begin.fennel
;     ^ entity.name.tag.lua_support.fennel
;       ^ punctuation.definition.keyword.fennel
;        ^ constant.other.keyword.fennel
;         ^^ punctuation.section.parens.end.fennel
;            ^ punctuation.definition.comment
;             ^^^^^^^ comment.line.fennel

(-?>> :a
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_threading_macros.fennel
;     ^ punctuation.definition.keyword.fennel
;      ^ constant.other.keyword.fennel
      (. {:a :b})
;     ^ punctuation.section.parens.begin.fennel
;      ^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.braces.begin.fennel
;         ^ punctuation.definition.keyword.fennel
;          ^ constant.other.keyword.fennel
;            ^ punctuation.definition.keyword.fennel
;             ^ constant.other.keyword.fennel
;              ^ punctuation.section.braces.end.fennel
;               ^ punctuation.section.parens.end.fennel
      (. {:b :missing})
;     ^ punctuation.section.parens.begin.fennel
;      ^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.braces.begin.fennel
;         ^ punctuation.definition.keyword.fennel
;          ^ constant.other.keyword.fennel
;            ^ punctuation.definition.keyword.fennel
;             ^^^^^^^ constant.other.keyword.fennel
;                    ^ punctuation.section.braces.end.fennel
;                     ^ punctuation.section.parens.end.fennel
      (. {:c 42})) ; -> nil
;     ^ punctuation.section.parens.begin.fennel
;      ^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.braces.begin.fennel
;         ^ punctuation.definition.keyword.fennel
;          ^ constant.other.keyword.fennel
;            ^^ constant.numeric.integer.decimal.fennel
;              ^ punctuation.section.braces.end.fennel
;               ^^ punctuation.section.parens.end.fennel

; Note that these have nothing to do with “threads” used for concurrency; they are named after the thread which is used in sewing. This is similar to the way that |> works in OCaml and Elixir.

; doto
; Similarly, the doto macro splices the first value into subsequent forms. However, it keeps the same value and continually splices the same thing in rather than using the value from the previous form for the next form.

(doto (io.open "/tmp/err.log")
; <- punctuation.section.parens.begin.fennel
;^^^^ entity.name.tag.fennel_support.fennel
;     ^ punctuation.section.parens.begin.fennel
;      ^^^^^^^ entity.name.tag.lua_support.fennel
;              ^ punctuation.definition.string.begin.fennel
;               ^^^^^^^^^^^^ string.quoted.double.fennel
;                           ^ punctuation.definition.string.end.fennel
;                            ^ punctuation.section.parens.end.fennel
  (: :write contents)
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^ punctuation.definition.keyword.fennel
;     ^^^^^ constant.other.keyword.fennel
;           ^^^^^^^^ source.fennel
;                   ^ punctuation.section.parens.end.fennel

  (: :close))
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^ punctuation.definition.keyword.fennel
;     ^^^^^ constant.other.keyword.fennel
;          ^^ punctuation.section.parens.end.fennel

; ;; equivalent to:
(let [x (io.open "/tmp/err.log")]
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.let.fennel
;    ^ punctuation.section.brackets.begin.fennel
;     ^ source.fennel
;       ^ punctuation.section.parens.begin.fennel
;        ^^^^^^^ entity.name.tag.lua_support.fennel
;                ^ punctuation.definition.string.begin.fennel
;                 ^^^^^^^^^^^^ string.quoted.double.fennel
;                             ^ punctuation.definition.string.end.fennel
;                              ^ punctuation.section.parens.end.fennel
;                               ^ punctuation.section.brackets.end.fennel

  (: x :write contents)
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^ source.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^^^^^ constant.other.keyword.fennel
;             ^^^^^^^^ source.fennel
;                     ^ punctuation.section.parens.end.fennel
  (: x :close)
; ^ punctuation.section.parens.begin.fennel
;  ^ entity.name.tag.lua_support.fennel
;    ^ source.fennel
;      ^ punctuation.definition.keyword.fennel
;       ^^^^^ constant.other.keyword.fennel
;            ^ punctuation.section.parens.end.fennel
  x)
; ^ source.fennel
;  ^ punctuation.section.parens.end.fennel

; The first form becomes the return value for the whole expression, and subsequent forms are evaluated solely for side-effects.

; include
; (since 0.3.0)

(include :my.embedded.module)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^ entity.name.tag.fennel_support.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^^^^^^^^^^^^^^^^^^ constant.other.keyword.fennel
;                           ^ punctuation.section.parens.end.fennel

; Load Fennel/Lua module code at compile time and embed it, along with any modules it requires, etc., in the compiled output. The module name must be a string literal that can resolve to a module during compilation. The bundled code will be wrapped in a function invocation in the emitted Lua.

; See also: the requireAsInclude option in the API documentation and the --require-as-include CLI flag (fennel --help)

; Macros
; Note that the macro interface is still preliminary and is subject to change over time.

; All forms which introduce macros do so inside the current scope. This is usually the top level for a given file, but you can introduce macros into smaller scopes as well.

; import-macros load macros from a separate module
; (Since 0.4.0)

; Experimental: subject to change in future releases.

; Loads a module at compile-time and binds its fields as local macros.

; A macro module exports any number of functions which take code forms as arguments at compile time and emit lists which are fed back into the compiler. For instance, here is a macro function which implements when2 in terms of if and do:

(fn when2 [condition body1 ...]
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^^^^^ entity.name.function.fn.fennel
;         ^ punctuation.section.brackets.begin.fennel
;          ^^^^^^^^^^^^^^^ source.fennel
;                          ^^^ keyword.operator.varargs.fennel
;                             ^ punctuation.section.brackets.end.fennel
  (assert body1 "expected body")
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^ entity.name.tag.lua_support.fennel
;         ^^^^^ source.fennel
;               ^ punctuation.definition.string.begin.fennel
;                ^^^^^^^^^^^^^ string.quoted.double.fennel
;                             ^ punctuation.definition.string.end.fennel
  `(if ,condition
; ^ entity.other.inherited-class.macro.fennel
;  ^ punctuation.section.parens.begin.fennel
;   ^^ entity.name.tag.lua_support.fennel
;      ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;       ^^^^^^^^^ source.fennel
     (do ,body1 ,...)))
;    ^ punctuation.section.parens.begin.fennel
;     ^^ entity.name.tag.lua_support.fennel
;        ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;         ^^^^^ source.fennel
;               ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                ^^^ keyword.operator.varargs.fennel
;                   ^^^ punctuation.section.parens.end.fennel

{:when2 when2}
; <- punctuation.section.braces.begin.fennel
;^ punctuation.definition.keyword.fennel
; ^^^^^ constant.other.keyword.fennel
;       ^^^^^ source.fennel
;            ^ punctuation.section.braces.end.fennel

; A full explanation of how macros work is out of scope for this document, but you can think of it as a compile-time template function. The backtick on the third line creates a template for the code emitted by the macro. The , serves as “unquote” which splices values into the template. (Changed in 0.3.0: @ was used instead of , before.)

; Assuming the code above is in the file “my-macros.fnl” then it turns this input:

(import-macros {: when2} :my-macros)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;              ^ punctuation.section.braces.begin.fennel
;               ^ entity.name.tag.marco_import.fennel
;                 ^^^^^ source.fennel
;                      ^ punctuation.section.braces.end.fennel
;                        ^ punctuation.definition.keyword.fennel
;                         ^^^^^^^^^ constant.other.keyword.fennel
;                                  ^ punctuation.section.parens.end.fennel
;

(when2 (= 3 (+ 2 a))
; <- punctuation.section.parens.begin.fennel
;^^^^^ variable.function.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^ entity.name.tag.lua_support.fennel
;         ^ constant.numeric.integer.decimal.fennel
;           ^ punctuation.section.parens.begin.fennel
;            ^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;                ^ source.fennel
;                 ^^ punctuation.section.parens.end.fennel
  (print "yes")
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.definition.string.begin.fennel
;         ^^^ string.quoted.double.fennel
;            ^ punctuation.definition.string.end.fennel
;             ^ punctuation.section.parens.end.fennel
  (finish-calculation))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^^^^^^^^^^^ variable.function.fennel
;                    ^^ punctuation.section.parens.end.fennel

; and transforms it into this code at compile time by splicing the arguments into the backtick template:

(if (= 3 (+ 2 a))
; <- punctuation.section.parens.begin.fennel
;^^ entity.name.tag.lua_support.fennel
;   ^ punctuation.section.parens.begin.fennel
;    ^ entity.name.tag.lua_support.fennel
;      ^ constant.numeric.integer.decimal.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^ constant.numeric.integer.decimal.fennel
;             ^ source.fennel
;              ^^ punctuation.section.parens.end.fennel
  (do
; ^ punctuation.section.parens.begin.fennel
;  ^^ entity.name.tag.lua_support.fennel
    (print "yes")
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^ entity.name.tag.lua_support.fennel
;          ^ punctuation.definition.string.begin.fennel
;           ^^^ string.quoted.double.fennel
;              ^ punctuation.definition.string.end.fennel
;               ^ punctuation.section.parens.end.fennel
    (finish-calculation)))
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^^^^^^^^^^^^^^ variable.function.fennel
;                      ^^^ punctuation.section.parens.end.fennel

; The import-macros macro can take any number of binding/module-name pairs. It can also bind the entire macro module to a single name rather than destructuring it. In this case you can use a dot to call the individual macros inside the module:

(import-macros mine :my-macros)
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;              ^^^^ source.fennel
;                   ^ punctuation.definition.keyword.fennel
;                    ^^^^^^^^^ constant.other.keyword.fennel
;                             ^ punctuation.section.parens.end.fennel

(mine.when2 (= 3 (+ 2 a))
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^ variable.function.fennel
;           ^ punctuation.section.parens.begin.fennel
;            ^ entity.name.tag.lua_support.fennel
;              ^ constant.numeric.integer.decimal.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^ entity.name.tag.lua_support.fennel
;                   ^ constant.numeric.integer.decimal.fennel
;                     ^ source.fennel
;                      ^^ punctuation.section.parens.end.fennel
  (print "yes")
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.definition.string.begin.fennel
;         ^^^ string.quoted.double.fennel
;            ^ punctuation.definition.string.end.fennel
  (finish-calculation))
; ^ punctuation.section.parens.begin.fennel
;  ^^^^^^^^^^^^^^^^^^ variable.function.fennel
;                    ^^ punctuation.section.parens.end.fennel

; See “Compiler API” below for details about additional functions visible inside compiler scope which macros run in.

; require-macros load macros with less flexibility
; The require-macros form is like import-macros, except it does not give you any control over the naming of the macros being imported. Consider using import-macros instead of require-macros.

; macros define several macros
; (Since 0.3.0)

; Defines a table of macros. Note that inside the macro definitions, you cannot access variables and bindings from the surrounding code. The macros are essentially compiled in their own compiler environment. Again, see the “Compiler API” section for more details about the functions available here.

(macros {:my-max (fn [x y]
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.braces.begin.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^^^^^^ constant.other.keyword.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^ storage.modifier.fn.fennel
;                    ^ punctuation.section.brackets.begin.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.brackets.end.fennel
                   `(let [x# ,x y# ,y]
;                  ^ entity.other.inherited-class.macro.fennel
;                   ^ punctuation.section.parens.begin.fennel
;                    ^^^ entity.name.tag.let.fennel
;                        ^ punctuation.section.brackets.begin.fennel
;                         ^ source.fennel
;                          ^ storage.type.auto_gensym.fennel
;                            ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                             ^^^ source.fennel
;                                ^ storage.type.auto_gensym.fennel
;                                  ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                                   ^ source.fennel
;                                    ^ punctuation.section.brackets.end.fennel
                      (if (< x# y#) y# x#)))})
;                     ^ punctuation.section.parens.begin.fennel
;                      ^^ entity.name.tag.lua_support.fennel
;                         ^ punctuation.section.parens.begin.fennel
;                          ^ entity.name.tag.lua_support.fennel
;                            ^ source.fennel
;                             ^ storage.type.auto_gensym.fennel
;                               ^ source.fennel
;                                ^ storage.type.auto_gensym.fennel
;                                 ^ punctuation.section.parens.end.fennel
;                                   ^ source.fennel
;                                    ^ storage.type.auto_gensym.fennel
;                                      ^ source.fennel
;                                       ^ storage.type.auto_gensym.fennel
;                                        ^^^ punctuation.section.parens.end.fennel
;                                           ^ punctuation.section.braces.end.fennel
;                                            ^ punctuation.section.parens.end.fennel

(print (my-max 10 20))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ variable.function.fennel
;              ^^ constant.numeric.integer.decimal.fennel
;                 ^^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print (my-max 20 10))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ variable.function.fennel
;              ^^ constant.numeric.integer.decimal.fennel
;                 ^^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

(print (my-max 20 20))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ variable.function.fennel
;              ^^ constant.numeric.integer.decimal.fennel
;                 ^^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel

; macro define a single macro
(macro my-max [x y]
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.fennel_support.fennel
;      ^^^^^^ source.fennel
;             ^ punctuation.section.brackets.begin.fennel
;              ^^^ source.fennel
;                 ^ punctuation.section.brackets.end.fennel
  `(let [x# ,x y# ,y]
; ^ entity.other.inherited-class.macro.fennel
;  ^ punctuation.section.parens.begin.fennel
;   ^^^ entity.name.tag.let.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^ source.fennel
;         ^ storage.type.auto_gensym.fennel
;           ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;            ^^^ source.fennel
;               ^ storage.type.auto_gensym.fennel
;                 ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                  ^ source.fennel
;                   ^ punctuation.section.brackets.end.fennel
     (if (< x# y#) y# x#)))
;    ^ punctuation.section.parens.begin.fennel
;     ^^ entity.name.tag.lua_support.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^ entity.name.tag.lua_support.fennel
;           ^ source.fennel
;            ^ storage.type.auto_gensym.fennel
;              ^ source.fennel
;               ^ storage.type.auto_gensym.fennel
;                ^ punctuation.section.parens.end.fennel
;                  ^ source.fennel
;                   ^ storage.type.auto_gensym.fennel
;                     ^ source.fennel
;                      ^ storage.type.auto_gensym.fennel
;                       ^^^ punctuation.section.parens.end.fennel

; If you are only defining a single macro, this is equivalent to the previous example. The syntax mimics fn.

; macrodebug print the expansion of a macro

(macrodebug (-> abc
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^ entity.name.tag.fennel_support.fennel
;           ^ punctuation.section.parens.begin.fennel
;            ^^ entity.name.tag.fennel_threading_macros.fennel
;               ^^^ source.fennel
                (+ 99)
;               ^ punctuation.section.parens.begin.fennel
;                ^ entity.name.tag.lua_support.fennel
;                  ^^ constant.numeric.integer.decimal.fennel
;                    ^ punctuation.section.parens.end.fennel
                (> 0)
;               ^ punctuation.section.parens.begin.fennel
;                ^ entity.name.tag.lua_support.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^ punctuation.section.parens.end.fennel
                (when (os.exit))))
;               ^ punctuation.section.parens.begin.fennel
;                ^^^^ entity.name.tag.fennel_support.fennel
;                     ^ punctuation.section.parens.begin.fennel
;                      ^^^^^^^ entity.name.tag.lua_support.fennel
;                             ^^^^ punctuation.section.parens.end.fennel
; -> (if (> (+ abc 99) 0) (do (os.exit)))
; <- punctuation.definition.comment
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; Call the macrodebug macro with a form and it will repeatedly expand top-level macros in that form and print out the resulting form. Note that the resulting form will usually not be sensibly indented, so you might need to copy it and reformat it into something more readable.

; It will attempt to load the fennelview module to pretty-print the results but will fall back to tostring if that isn’t found. If you have moved the fennelview module to another location, try setting it in package.loaded to make it available here:

(set package.loaded (require :lib.newlocation.fennelview))
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^^^^^^^^^^^^^^ variable.language.lua_constant.fennel
;                   ^ punctuation.section.parens.begin.fennel
;                    ^^^^^^^ entity.name.tag.lua_support.fennel
;                            ^ punctuation.definition.keyword.fennel
;                             ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.keyword.fennel
;                                                       ^^ punctuation.section.parens.end.fennel

; Macro gotchas
; It’s easy to make macros which accidentally evaluate their arguments more than once. This is fine if they are passed literal values, but if they are passed a form which has side-effects, the result will be unexpected:

(var v 1)
; <- punctuation.section.parens.begin.fennel
;^^^ entity.name.tag.fennel_support.fennel
;    ^ source.fennel
;      ^ constant.numeric.integer.decimal.fennel
;       ^ punctuation.section.parens.end.fennel

(macros {:my-max (fn [x y]
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.braces.begin.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^^^^^^ constant.other.keyword.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^ storage.modifier.fn.fennel
;                    ^ punctuation.section.brackets.begin.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.brackets.end.fennel
                   `(if (< ,x ,y) ,y ,x))})
;                  ^ entity.other.inherited-class.macro.fennel
;                   ^ punctuation.section.parens.begin.fennel
;                    ^^ entity.name.tag.lua_support.fennel
;                       ^ punctuation.section.parens.begin.fennel
;                        ^ entity.name.tag.lua_support.fennel
;                          ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                           ^ source.fennel
;                             ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                              ^ source.fennel
;                               ^ punctuation.section.parens.end.fennel
;                                 ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                                  ^ source.fennel
;                                    ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                                     ^ source.fennel
;                                      ^^ punctuation.section.parens.end.fennel
;                                        ^ punctuation.section.braces.end.fennel
;                                         ^ punctuation.section.parens.end.fennel

(fn f [] (set v (+ v 1)) v)
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^ entity.name.function.fn.fennel
;     ^ punctuation.section.brackets.begin.fennel
;      ^ punctuation.section.brackets.end.fennel
;        ^ punctuation.section.parens.begin.fennel
;         ^^^ entity.name.tag.fennel_support.fennel
;             ^ source.fennel
;               ^ punctuation.section.parens.begin.fennel
;                ^ entity.name.tag.lua_support.fennel
;                  ^ source.fennel
;                    ^ constant.numeric.integer.decimal.fennel
;                     ^^ punctuation.section.parens.end.fennel
;                        ^ source.fennel
;                         ^ punctuation.section.parens.end.fennel

(print (my-max (f) 2)) ; -> 3 since (f) is called twice in the macro body above
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ variable.function.fennel
;              ^ punctuation.section.parens.begin.fennel
;               ^ variable.function.fennel
;                ^ punctuation.section.parens.end.fennel
;                  ^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel
;                      ^ punctuation.definition.comment
;                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; (Since 0.3.0) In order to prevent accidental symbol capture2, you may not bind a bare symbol inside a backtick as an identifier. Appending a # on the end of the identifier name as above invokes “auto gensym” which guarantees the local name is unique.

(macros {:my-max (fn [x y]
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.braces.begin.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^^^^^^ constant.other.keyword.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^ storage.modifier.fn.fennel
;                    ^ punctuation.section.brackets.begin.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.brackets.end.fennel
                   `(let [x2 ,x y2 ,y]
;                  ^ entity.other.inherited-class.macro.fennel
;                   ^ punctuation.section.parens.begin.fennel
;                    ^^^ entity.name.tag.let.fennel
;                        ^ punctuation.section.brackets.begin.fennel
;                         ^^ source.fennel
;                            ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                             ^^^^ source.fennel
;                                  ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                                   ^ source.fennel
;                                    ^ punctuation.section.brackets.end.fennel
                      (if (< x2 y2) y2 x2)))})
;                     ^ punctuation.section.parens.begin.fennel
;                      ^^ entity.name.tag.lua_support.fennel
;                         ^ punctuation.section.parens.begin.fennel
;                          ^ entity.name.tag.lua_support.fennel
;                            ^^^^^ source.fennel
;                                 ^ punctuation.section.parens.end.fennel
;                                   ^^^^^ source.fennel
;                                        ^^^ punctuation.section.parens.end.fennel
;                                           ^ punctuation.section.braces.end.fennel
;                                            ^ punctuation.section.parens.end.fennel

(print (my-max 10 20))
; <- punctuation.section.parens.begin.fennel
;^^^^^ entity.name.tag.lua_support.fennel
;      ^ punctuation.section.parens.begin.fennel
;       ^^^^^^ variable.function.fennel
;              ^^ constant.numeric.integer.decimal.fennel
;                 ^^ constant.numeric.integer.decimal.fennel
;                   ^^ punctuation.section.parens.end.fennel
; Compile error in 'x2' unknown:?: macro tried to bind x2 without gensym; try x2# instead
; <- punctuation.definition.comment
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.fennel

; macros is useful for one-off, quick macros, or even some more complicated macros, but be careful. It may be tempting to try and use some function you have previously defined, but if you need such functionality, you should probably use import-macros.

; For example, this will not compile in strict mode! Even when it does allow the macro to be called, it will fail trying to call a global my-fn when the code is run:

(fn my-fn [] (print "hi!"))
; <- punctuation.section.parens.begin.fennel
;^^ storage.modifier.fn.fennel
;   ^^^^^ entity.name.function.fn.fennel
;         ^ punctuation.section.brackets.begin.fennel
;          ^ punctuation.section.brackets.end.fennel
;            ^ punctuation.section.parens.begin.fennel
;             ^^^^^ entity.name.tag.lua_support.fennel
;                   ^ punctuation.definition.string.begin.fennel
;                    ^^^ string.quoted.double.fennel
;                       ^ punctuation.definition.string.end.fennel
;                        ^^ punctuation.section.parens.end.fennel

(macros {:my-max (fn [x y]
; <- punctuation.section.parens.begin.fennel
;^^^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.braces.begin.fennel
;        ^ punctuation.definition.keyword.fennel
;         ^^^^^^ constant.other.keyword.fennel
;                ^ punctuation.section.parens.begin.fennel
;                 ^^ storage.modifier.fn.fennel
;                    ^ punctuation.section.brackets.begin.fennel
;                     ^^^ source.fennel
;                        ^ punctuation.section.brackets.end.fennel
                   (my-fn)
;                  ^ punctuation.section.parens.begin.fennel
;                   ^^^^^ variable.function.fennel
;                        ^ punctuation.section.parens.end.fennel
                   `(let [x# ,x y# ,y]
;                  ^ entity.other.inherited-class.macro.fennel
;                   ^ punctuation.section.parens.begin.fennel
;                    ^^^ entity.name.tag.let.fennel
;                        ^ punctuation.section.brackets.begin.fennel
;                         ^ source.fennel
;                          ^ storage.type.auto_gensym.fennel
;                            ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                             ^^^ source.fennel
;                                ^ storage.type.auto_gensym.fennel
;                                  ^ entity.other.inherited-class.macro.punctuation.comma.fennel
;                                   ^ source.fennel
;                                    ^ punctuation.section.brackets.end.fennel
                      (if (< x# y#) y# x#)))})
;                     ^ punctuation.section.parens.begin.fennel
;                      ^^ entity.name.tag.lua_support.fennel
;                         ^ punctuation.section.parens.begin.fennel
;                          ^ entity.name.tag.lua_support.fennel
;                            ^ source.fennel
;                             ^ storage.type.auto_gensym.fennel
;                               ^ source.fennel
;                                ^ storage.type.auto_gensym.fennel
;                                 ^ punctuation.section.parens.end.fennel
;                                   ^ source.fennel
;                                    ^ storage.type.auto_gensym.fennel
;                                      ^ source.fennel
;                                       ^ storage.type.auto_gensym.fennel
;                                        ^^^ punctuation.section.parens.end.fennel
;                                           ^ punctuation.section.braces.end.fennel
;                                            ^ punctuation.section.parens.end.fennel
; Compile error in 'my-max': attempt to call global '__fnl_global__my_2dfn' (a nil value)

; eval-compiler
; Evaluate a block of code during compile-time with access to compiler scope. This gives you a superset of the features you can get with macros, but you should use macros if you can.

; Example:

(eval-compiler
; <- punctuation.section.parens.begin.fennel
;^^^^^^^^^^^^^ entity.name.tag.fennel_support.fennel
  (each [name (pairs _G)]
; ^ punctuation.section.parens.begin.fennel
;  ^^^^ entity.name.tag.fennel_support.fennel
;       ^ punctuation.section.brackets.begin.fennel
;        ^^^^ source.fennel
;             ^ punctuation.section.parens.begin.fennel
;              ^^^^^ entity.name.tag.lua_support.fennel
;                    ^^ entity.other.inherited-class.constant.fennel
;                      ^ punctuation.section.parens.end.fennel
;                       ^ punctuation.section.brackets.end.fennel
    (print name)))
;   ^ punctuation.section.parens.begin.fennel
;    ^^^^^ entity.name.tag.lua_support.fennel
;          ^^^^ source.fennel
;              ^^^ punctuation.section.parens.end.fennel

; This prints all the functions available in compiler scope.

; Compiler API
; Inside eval-compiler, macros, or macro blocks, as well as import-macros modules, these functions are visible to your code.

; Note that lists are compile-time concepts that don’t exist at runtime; they are implemented as regular tables which have a special metatable to distinguish them from regular tables defined with square or curly brackets. Similarly symbols are tables with a string entry for their name and a metatable that the compiler uses to distinguish them. You can use tostring to get the name of a symbol.

; TODO:
; list - return a list, which is a special kind of table used for code
; sym - turn a string into a symbol
; list? - is the argument a list?
; sym? - is the argument a symbol?
; table? - is the argument a non-list table?
; sequence? - is the argument a non-list sequential table (created with [], as opposed to {})?
; gensym - generates a unique symbol for use in macros.
; varg? - is this a ... symbol which indicates var args?
; multi-sym? - a multi-sym is a dotted symbol which refers to a table’s field
; These functions can be used from within macros only, not from any eval-compiler call:

; in-scope? - does this symbol refer to an in-scope local?
; macroexpand - performs macroexpansion on its argument form; returns an AST
; Note that other internals of the compiler exposed in compiler scope are subject to change.
