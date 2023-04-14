# 環境構築

- 　以下のコマンドを実行してください。

```
docker compose up
```
- http://localhost:3000/ にアクセスしてください。
- 上記に正常にアクセス出来たらhttp://localhost:3000/comics にアクセスしてください。

```
maysql関係のエラーの場合下記のコマンドを実行してください

docker exec -it [コンテナ名]　bash
rails db:create
```
```
Webpacker::Manifest::MissingEntryErrorが発生した場合

docker exec -it [コンテナ名]　bash
rails webpacker:install
```
