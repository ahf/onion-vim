Onion Plug-in for Vim
=====================

This is a Vim plug-in that will hopefully make it easier for you to work with
the Tor source tree.

Some features includes:

- When creating a new Rust, C source, C header, or "changes" file we
  automatically fill out the new file with a somewhat sensible template.

- We enable Doxygen syntax highlighting in onion flavored C code by
  default.

- We set indentation settings to follow the Tor coding guidelines:
  spaces instead of tabs, 2 spaces per tab, 1 space indentation for
  labels, files are 80 characters wide, etc..

## Configuration

You can configure this plug-in using the following variables. All of the
variables can be set in your `~/.vimrc`. For example: `let
g:onion_copyright_holder = "John Doe"`.

- `g:onion_copyright_holder` (Default: `The Tor Project, Inc`)

  When creating a new file within the Tor source tree we will use this
  value for generating the correct copyright headers.

- `g:onion_search_file` (Default: `src/or/or.h`):

  This variable is used to detect whether a file belongs to the Tor
  source tree or not. Once you open a file in Vim a function will be
  called that either sets the `b:onion_file` variable to `1` or `0`
  depending on whether the file belongs to the Tor source tree or not.

- `g:onion_disable_doxygen` (Default: 0):

  This variable allows you to disable the Doxygen comment highlighting in C
  source and header files.

- `g:onion_disable_spell_check` (Default: 0):

  This variable allows you to disable the automatic spell checking that is
  enabled for Tor's changelog "changes" files.

## Rust

If your installed version of Vim doesn't come with support for the Rust
programming language out of the box you should install the Rust vim
plug-in from https://github.com/rust-lang/rust.vim

## Help

Feel free to contact `ahf` in `#tor-dev` on OFTC if you have any questions or
need help using this plug-in. Suggestions to make the plug-in better are warmly
welcomed.

## Contributing

Please submit a pull request here on Github. Please remember to add
yourself to this `README.markdown`'s authors section below.

## Authors

- Alexander Færøy (<ahf@torproject.org>).
