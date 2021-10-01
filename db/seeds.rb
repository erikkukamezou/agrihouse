# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
 [
  {
    name: "管理者",
    email: "admin@example.jp",
    password: "adminadmin",
    admin: true,
  }
  # {
  #   name: "本田",
  #   email: "aaa@aaa.com",
  #   password: "aaaaaa",
  #   admin: false,
  # },
  # {
  #   name: "島村",
  #   email: "ccc@ccc.com",
  #   password: "cccccc",
  #   admin: false,
  # },
  # {
  #   name: "渋谷",
  #   email: "ddd@ddd.com",
  #   password: "dddddd",
  #   admin: false
  # },
  # {
  #   name: "高垣",
  #   email: "eee@eee.com",
  #   password: "eeeeee",
  #   admin: false
  # }
 ]
)

# User.all.each do |user|
#   user.manufactures.create!(
#     [
#       {
#         harvest: 100,
#         indoor_temperature: 30,
#         soil_temperature: 15,
#         humidity: 40,
#       },
#       {
#         harvest: 200,
#         indoor_temperature: 31,
#         soil_temperature: 18,
#         humidity: 80,
#       },
#       {
#         harvest: 150,
#         indoor_temperature: 34,
#         soil_temperature: 25,
#         humidity: 20,
#       },
#       {
#         harvest: 180,
#         indoor_temperature: 28,
#         soil_temperature: 12,
#         humidity: 27
#       },
#       {
#         harvest: 300,
#         indoor_temperature: 29,
#         soil_temperature: 19,
#         humidity: 35
#       }
#     ]
#   )
# end

# User.all.each do |user|
#   user.costs.create!(
#     [
#       {
#         sale: 15000,
#         fertilizer: 3000,
#         soil: 1000,
#         seed: 2000
#       },
#       {
#         sale: 10000,
#         fertilizer: 4000,
#         soil: 200,
#         seed: 150
#       },
#       {
#         sale: 8000,
#         fertilizer: 500,
#         soil: 0,
#         seed: 0
#       },
#       {
#         sale: 20000,
#         fertilizer: 100,
#         soil: 500,
#         seed: 100
#       },
#       {
#         sale: 5000,
#         fertilizer: 2000,
#         soil: 1000,
#         seed: 2000
#       }
#     ]
#   )
# end

User.all.each do |user|
  user.dairies.create!(
    [
       {
         title: "種植え",
         content: "ゴーヤーの種を植えた。種植えを小規模から行うと効率がいい。"
       },
       {
         title: "芽が出た",
         content: "種植えして3日目くらいで芽が出た！衝撃！"
       },
       {
         title: "肥料撒き",
         content: "今日は肥料を撒いた。新しい機械を導入して時間の短縮になった！"
       },
       {
         title: "どんどん成長",
         content: "芽が出でから葉の成長が想像以上に早い"
       },
       {
         title: "草を切った",
         content: "枯れている葉を切った。切りすぎて次の芽が出るか心配。長浜さんは大丈夫って言ってたけど..."
       }
    ]
  )
end

User.all.each do |user|
  user.events.create!(
    [
       {
         content: "酵素・リン酸・海藻由来・糖類等 追肥",
         start_date: "2021-01-01",
         end_date: "2021-01-05",
         tasks_attributes: [
           {
             work: '種まき'
           }
          ]
       },
       {
         content: "定植作業　適期",
         start_date: "2021-01-01",
         end_date: "2021-01-05",
         tasks_attributes: [
           {
             work: '植え替え'
           }
          ]
       },
       {
         content: "防虫・防除作業　適期",
         start_date: "2021-01-02",
         end_date: "202-01-05",
         tasks_attributes: [
           {
             work: '草取り'
           }
          ]
       },
       {
         content: "アミノ酸・チッソ系液肥",
         start_date: "2021-01-14",
         end_date: "2021-01-20",
         tasks_attributes: [
           {
             work: '土を耕す'
           }
          ]
       },
       {
         content: "播種作業　適期",
         start_date: "2021-01-14",
         end_date: "2021-01-20",
         tasks_attributes: [
           {
             work: '種まき'
           }
          ]
        }
    ]
  )
end
