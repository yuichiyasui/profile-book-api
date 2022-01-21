# Profile Book API

チームメンバーのプロフィール情報を管理する GraphQL API

## バージョン情報

- Ruby 3.0.2
- Ruby on Rails 6.0.3
- PostgreSQL 14.1

## 使用ツール

### Ruby のバージョン管理

[rbenv](https://github.com/rbenv/rbenv)

### GraphQL Client

[Altair GraphQL Client](https://chrome.google.com/webstore/detail/altair-graphql-client/flnheeellpciglgpaodhkhmapeljopja)

### lint

[RuboCop](https://github.com/rubocop/rubocop)

## 環境構築手順
1. rbenvをインストールする 
   https://github.com/rbenv/rbenv
2. .ruby-versions で指定されたバージョンの Ruby をインストールする
   ```
   rbenv install
   ```
3. postgresqlをインストールする
   ```
   // バージョンを指定してインストール
   brew install postgresql@14.1

   // バージョンを確認
   postgres --version

   // 起動
   brew services start postgresql

   // 停止
   brew services stop postgresql
   ```
4. gemをインストールする
   ```
   bundle install
   ```
5. データベースを作成
   ```
   rails db:create
   rails db:migrate
   ```
6. .envファイルを追加する
設定する環境変数については別途ドキュメントを参照
7. サーバーを起動
   ```
   rails s
   ```

## 関連リポジトリ
- https://github.com/yuichiyasui/profile-book-front