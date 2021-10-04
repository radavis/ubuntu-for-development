# notes

install dependencies, start the server, visit http://localhost:4000

```bash
$ npm i
$ npm start
$ xdg-open http://localhost:4000
```

view honkit cli help

```bash
$ npm run honkit help
```

publish to github pages. the github repo is configured to serve the `docs`
folder within the `gh-pages` branch.
see https://github.com/radavis/ubuntu-for-development/settings

```bash
$ git checkout gh-pages
$ git merge main
$ npm run build
$ rm -rf docs
$ mv _book docs
$ git add .
$ git commit -m 'published on 20210331'
$ git push origin gh-pages
```

## todo

* for each file in `src/SUMMARY.md`
  - extract bash commands (three backticks and `bash`)
  - create `src/${filename}.sh`
  - "compile" files into `src/SUMMARY.sh`
  - execute within a VM
  - capture log
  - capture other artifacts
