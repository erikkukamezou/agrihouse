# アプリの概要 <br>
経験からの判断だけでなく、日々の業務を数値化や見えるかをすることによって
初心者でも自分の作物の品質や収穫量を一定の基準を保つためのツール。


# 開発言語 <br>
Ruby 2.6.5 <br>
Rails 5.2.5 <br>
psql(PostgreSQL) 13.3-1 <br>

# 就業Termの技術 <br>
・devise <br>
・Ajaxを使ったコメント機能 <br>

# カリキュラム外の技術 <br>
・FullCalender <br>
gem 'jquery-rails', '4.3.3' <br>
gem 'fullcalendar-rails' <br>
gem 'momentjs-rails' <br>
フルカレンダーの実装 <br>
一か月のサイクルをみて、日々のタスクを判断していくので、ぱっと見てわかりやすくするために、このgemを導入 <br>

・gem 'chartkick' <br>
生産管理機能、コスト管理機能に記録した数値を基にグラフ表示 <br>
いろんなグラフの種類を選べるため導入 <br>

・gem 'ransack' <br>
観察日記や日々のことを記録していくので、情報が多くなるとほしい時にすぐ表示ができないので検索できるようにするため導入 <br>

# 実行手順 <br>
$ git clone git@github.com:erikkukamezou/agripark.git <br>
$ cd agripark <br>
$ bundle install <br>
$ rails db:create db:migrate <br>
$ rails db:seed <br>
$ rails s <br>
