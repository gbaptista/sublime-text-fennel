# Fennel Support for Sublime Text 3 & 4 ![Syntax Tests](https://github.com/gbaptista/sublime-text-fennel/workflows/Syntax%20Tests/badge.svg)

> _"Fennel is a programming language that brings together the speed, simplicity, and reach of Lua with the flexibility of a lisp syntax and macro system." [fennel-lang.org](https://fennel-lang.org)_

Heavily tested against [Fennel 1.1.0](https://github.com/gbaptista/sublime-text-fennel/blob/master/tests/syntax_test_fennel_reference.fnl) and [Lua 5.4.4](https://github.com/gbaptista/sublime-text-fennel/blob/master/tests/syntax_test_lua.fnl) specifications.

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/material-theme-darker/03.png)

- [Installing](#installing)
- [Completions](#completions)
  -  [Fennel](#fennel-completions)
  -  [Lua](#lua-completions)
- [Snippets](#snippets)
- [References](#references)
- [Development](#development)
- [Screenshots](#screenshots)
  -  [Material Theme Darker](#material-theme-darker-screenshots)
  -  [Monokai](#monokai-screenshots)
  -  [Solarized (Light)](#solarized-light-screenshots)
  -  [Completions](#completions-screenshots)
  -  [Snippets](#snippets-screenshots)
- [Acknowledgments](#acknowledgments)

## Installing

- Install [Package Control](https://packagecontrol.io/installation)
- <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>p</kbd>
  - Package Control: Install Package
  - Fennel

## Completions

One hundred ninety-four completions are available for _Fennel 1.1.0_ and _Lua 5.4.4_.

#### Fennel Completions

![Screenshot of a Fennel code with a completions list.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/completions/03.png)

#### Lua Completions

![Screenshot of a Fennel code with a completions list.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/completions/01.png)

## Snippets

14 snippets are available:

- `fn` `lambda` `λ`
- `and` `or` `not`
- `->` `->>` `-?>` `-?>>`
- `while` `do` `if` `do while`

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/snippets/01.png)

## References
- [Fennel Language Website](https://fennel-lang.org)
  - [Fennel 1.1.0 Reference](https://fennel-lang.org/reference)
- [Lua Language Website](http://www.lua.org/)
  - [Lua 5.4 Reference Manual](https://www.lua.org/manual/5.4)

## Development

Uninstall your current Fennel package.

Clone the repository inside `Packages/Fennel` (symbolic link doesn't work):

```sh
git clone \
  https://github.com/gbaptista/sublime-text-fennel.git \
  /home/me/.config/sublime-text/Packages/Fennel
```

Check the files under `tests/` and:

<kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>p</kbd>:

- Build With: Syntax Tests
- Build With: Syntax Tests - Performance
- Build With: Syntax Tests - All Syntaxes
- Build With: Syntax Tests - Regex Compatibility

To debug the current scope of a character: <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>p</kbd>

The project [_Sublime Text Colors_](https://github.com/gbaptista/sublime-text-colors) may be helpfull.

## Screenshots

### Material Theme Darker Screenshots

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/material-theme-darker/01.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/material-theme-darker/02.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/material-theme-darker/03.png)

### Monokai Screenshots

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/monokai/01.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/monokai/02.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/monokai/03.png)

### Solarized (Light) Screenshots

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/solarized-light/01.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/solarized-light/02.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/solarized-light/03.png)

### Completions Screenshots

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/completions/01.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/completions/02.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/completions/03.png)

### Snippets Screenshots

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/snippets/01.png)

![Screenshot of a Fennel code highlighted.](https://raw.githubusercontent.com/gbaptista/sublime-text-fennel/master/screenshots/snippets/02.png)

## Acknowledgments

The [_Clojure Package_](https://github.com/sublimehq/Packages/tree/master/Clojure) inspired this package.
