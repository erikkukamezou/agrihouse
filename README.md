# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


アプリの概要
経験からの判断だけでなく、日々の業務を数値化や見えるかをすることによって
初心者でも自分の作物の質や収穫量を一定の基準を保つためのツール。


開発言語
Ruby 2.6.5
Rails 5.2.5
psql(PostgreSQL) 13.3-1

アプリ内の技術（カリキュラム）
devise
Ajaxを使ったコメント機能

カリキュラム外
フルカレンダーの実装
一か月のサイクルをみて、日々のタスクを判断していくので、ぱっと見てわかりやすくするために、このgemを導入。
gem 'jquery-rails', '4.3.3'
gem 'fullcalendar-rails'
gem 'momentjs-rails'

実行手順
git clone git@github.com:erikkukamezou/agrihouse.git
cd agrihouse
bundle install
rails db:create db:migrate
rails db:seed
rails s
