# notes

install dependencies, start the server, visit http://localhost:4000

```bash
$ npm i
$ npm start
$ xdg-open http://localhost:4000
```

publish to github pages

```bash
$ git checkout gh-pages
$ git merge main
$ npm run build
$ git add .
$ git commit -m 'published on 20210331'
$ git push origin HEAD
```
