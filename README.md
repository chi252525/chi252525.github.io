# vuecomp

> A Vue.js project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build
```

For detailed explanation on how things work, consult the [docs for vue-loader](http://vuejs.github.io/vue-loader).

#把專案部署到Pages



1.在 github 開一個 New repository
2.將現有專案上傳上去
3.建立 vue.config.js
Vue cli3
建置一個檔案在根目錄，取名叫 vue.config.js。
module.exports = {
    publicPath: './'
}
4. npm run build 打包
5. 新增 git 分支並切換 git checkout -b gh-pages ，等同於 git branch gh-pages + git checkout gh-pages 。
6. git add -f dist
7. git commit -m 'create vue prj'
8. git subtree push --prefix dist origin gh-pages
完成後開啟你的專案靜態網頁。
