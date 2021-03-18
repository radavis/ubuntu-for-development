# sublime-text

[source](https://www.sublimetext.com/docs/3/linux_repositories.html)

```bash
$ wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
$ sudo apt install apt-transport-https
$ echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
$ sudo apt update
$ sudo apt install sublime-text
$ which subl
$ subl .  # open current folder
```

Add package control: `Shift + Ctrl + P`, type: `Install Package Control`, then: `Enter`.

[https://packagecontrol.io/installation](https://packagecontrol.io/installation)

A few, recommended packages:

- Agila Theme
- EditorConfig
- GitHub Theme
- Gitignored File Excluder
- Markdown Extended
