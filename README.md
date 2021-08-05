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

就業Termの技術
devise
Ajaxを使ったコメント機能

カリキュラム外の技術
・FullCalender
gem 'jquery-rails', '4.3.3'
gem 'fullcalendar-rails'
gem 'momentjs-rails'
フルカレンダーの実装
一か月のサイクルをみて、日々のタスクを判断していくので、ぱっと見てわかりやすくするために、このgemを導入

・gem 'chartkick'
生産管理機能、コスト管理機能に記録した数値を基にグラフ表示
いろんなグラフの種類を選べるため導入

・gem 'ransack'
観察日記や日々のことを記録していくので、情報が多くなるとほしい時にすぐ表示ができないので検索できるようにするため導入

実行手順
$ git clone git@github.com:erikkukamezou/agripark.git
$ cd agripark
$ bundle install
$ rails db:create db:migrate
$ rails db:seed
$ rails s
