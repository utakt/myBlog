# dockerコンテナを起動する
```bash
docker-compose up -d
```

# dockerコンテナに入る
```bash
docker-compose exec webapp sh
```

# nuxtアプリを起動する(デバッグ)
```bash
npm run dev
```

デバッグ中に停止する場合は`＾C`を入力する

# nuxtアプリをビルドして起動する
```bash
npm run build
npm run start
```

# dockerコンテナを停止する
```bash
docker-compose stop
```

# 環境構築
## nuxtプロジェクトを作成する
1. dockerコンテナに入る
2. /usr/src/appに移動する
3. 以下コマンドを実行する
```bash
npx create-nuxt-app <project-name>
```

構築したときの設定
```
# npx create-nuxt-app my-app

create-nuxt-app v3.3.0
✨  Generating Nuxt.js project in my-app
? Project name: my-app
? Programming language: JavaScript
? Package manager: Npm
? UI framework: Bulma
? Nuxt.js modules: (Press <space> to select, <a> to toggle all, <i> to invert selection)
? Linting tools: ESLint
? Testing framework: None
? Rendering mode: Single Page App
? Deployment target: Server (Node.js hosting)
? Development tools: jsconfig.json
```

# dockerでnuxtを動かす
package.jsonに以下を追加する
```js
    "dev": "HOST=0.0.0.0 PORT=3000 nuxt", 
```

Dockerfileに以下を追加する
```
EXPOSE 3000
```

