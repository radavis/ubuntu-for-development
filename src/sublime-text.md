## sublime-text

Sublime Text is an excellent, low-memory text editor. I tend to switch over to
the rock-solid stable Sublime Text when VS Code or Atom start acting funky
after an auto-update.

### Install

Follow the instructions for installing via `apt`,
[here](https://www.sublimetext.com/docs/linux_repositories.html).

### Configuration

`Preferences -> Settings` and update the following user settings:

```
"tab_size": 2,
"translate_tabs_to_spaces": true,
"ensure_newline_at_eof_on_save": true
```

Add package control: `Shift + Ctrl + P`, type: `Install Package Control`, then: `Enter`.
[[source](https://packagecontrol.io/installation)]

Use package control: `Shift + Ctrl + P`, type: `pack install`, then: `Enter`.
Type to search for a package. `Esc` to abort.

A few recommended packages:

- Agila Theme
- EditorConfig
- GitHub Theme
- Gitignored File Excluder
- Markdown Extended
