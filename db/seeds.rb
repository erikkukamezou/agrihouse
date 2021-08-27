# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "管理者",
             email: "admin@example.jp",
             password:  "adminadmin",
             admin: true)

5.times do |n|
User.create!(
  name:  "#{ n  + 1 }太郎",
  email: "test#{ n + 1 }@test.com",
  password: "test#{ n + 1 }",
  admin: false)

5.times do |n|
Manufacture.create!(
  harvest: "n + 10",
  indoor_temperature: "n + 10",
  soil_temperature: "n + 10",
  humidity: "n + 10" )

5.times do |n|
Cost.create!(
  sale: "n + 100",
  fertilizer: "n + 100",
  soil: "n + 100",
  seed: "n + 100", )

Dairy.create!( [ {title: "種植え",
              content: "ゴーヤーの種を植えた。種植えを小規模から行うと効率がいい。",
              image:File.open('./pubulic/dairy_images/11.jpg')},
              {title: "芽が出た",
              content: "種植えして3日目くらいで芽が出た！衝撃！",
              image:File.open('./pubulic/dairy_images/11.jpg')},
              {title: "肥料撒き",
              content: "今日は肥料を撒いた。新しい機械を導入して時間の短縮になった！",
              image:File.open('./pubulic/dairy_images/11.jpg')},
              {title: "どんどん成長",
              content: "芽が出でから葉の成長が想像以上に早い",
              image:File.open('./pubulic/dairy_images/11.jpg')},
              {title: "草を切った",
              content: "枯れている葉を切った。切りすぎて次の芽が出るか心配。長浜さんは大丈夫って言ってたけど...",
              image:File.open('./pubulic/dairy_images/11.jpg')}
              ] )

Event.create!( [ { content: "酵素・リン酸・海藻由来・糖類等 追肥",
                   start_date: "2021-01-01",
                   end_date: "2021-01-05"},
                 { content: "定植作業　適期",
                   start_date: "2021-01-01",
                   end_date: "2021-01-05"},
                 { content: "防虫・防除作業　適期",
                   start_date: "2021-01-02",
                   end_date: "202-01-05"},
                 { content: "アミノ酸・チッソ系液肥",
                   start_date: "2021-01-14",
                   end_date: "2021-01-20"},
                 { content: "播種作業　適期",
                   start_date: "2021-01-14",
                   end_date: "2021-01-20"} ] )
