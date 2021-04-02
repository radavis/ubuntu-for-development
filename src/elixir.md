# elixir

First, install the latest version of Erlang. Elixir is built on Erlang.
[[source](https://computingforgeeks.com/how-to-install-latest-erlang-on-ubuntu-linux/)]

```bash
$ wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -
$ echo "deb https://packages.erlang-solutions.com/ubuntu focal contrib" | sudo tee /etc/apt/sources.list.d/erlang-solution.list
$ sudo apt update
$ sudo apt install erlang
```

Install Elixir.

```bash
$ sudo apt install elixir
$ elixir --version
```

After installing postgres and node, you can try out [Phoenix](https://hexdocs.pm/phoenix/overview.html#content).
