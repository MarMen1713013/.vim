# README

1. Run `./setup.sh`
2. `cd plugged/YouCompleteMe && python3 install --clangd-completer --cs-completer`

## Troubleshooting

1. `undeclared identifier 'std'`: clang needs the latest version of `gcc` and `g++` so run `sudo apt install gcc-XX g++-XX` where `XX` is the latest version

