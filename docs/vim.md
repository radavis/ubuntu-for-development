## vim

Clone and install the latest release of `vim`.

```bash
$ git clone https://github.com/vim/vim.git
$ cd vim/src
$ make
$ sudo make install
```

Set some helpful defaults.
[[source](https://swordandsignals.com/2020/12/13/5-lines-in-vimrc.html)]

```bash
$ echo "set hls ic is nu noswf" > ~/.vimrc
```

Exit `vim` by pressing `esc` then `:wq`
[[source](https://flaviocopes.com/how-to-exit-vim/)]
