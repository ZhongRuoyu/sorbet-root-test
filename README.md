# Sorbet Root Test

This is a minimal reproducer for a Sorbet LSP issue where the root directory is
not correctly recognized when the LSP is started from a subdirectory.

- `bin/sorbet-lsp` is a Sorbet wrapper that cd's to a subdirectory (`lib`) and
  starts the LSP
- `lib/sorbet/config` is the Sorbet config
- `.vscode/settings.json` configures Sorbet LSP in VS Code
- `lib/foo.rb` and `lib/bar.rb` are example Ruby files

If you open this project and try to use "Go to Definition" on `Foo` in
`lib/bar.rb`, it will open a non-existent `foo.rb` instead of `lib/foo.rb`, and
VS Code will complain that the file does not exist.
