# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times{|i|
#   @user = User.new
#   @user.name = "user_" + (i+1).to_s
#   @user.password = "user_" + (i+1).to_s
#   @user.save
# }  

# 5.times{|i|
#   @post = Post.new
#   @post.title = "post_" + (i+1).to_s
#   @post.body = "body_" + (i+1).to_s
#   @post.price = 3
#   @reputation = 3
#   @location = "location" + (i+1).to_s
#   @user_id = User.find(i).id
#   @post.save
# }

5.times do |index|
  User.create(
    name: "user#{index+1}",
    email: "email#{index+1}@email#{index+1}.com",
    number: "#{index+1}*10",
    password: "user#{index+1}"
  )
end

title = ["CAKEphp","セイザリヤ","la comida","江戸前寿司　深森","多田飯"]
body_text = [
  "イチゴショートケーキが自慢のケーキ屋です。フランスの本場で15年の修業を積み、パティシエとして多くの賞を受賞。日本では素材選びからこだわったスイーツを提供しております。ホールもカットも扱っておりますので、普段のプレゼントから特別な日まで是非ご利用ください",
  "学生に人気な満腹感最高のイタリアン。焼きたてのピザを食べ放題、バイキング形式でご提供。イタリア産厳選ワインもご一緒にお楽しみいただけます！",
  "丸の内で唯一のブリトー専門店！野菜をたくさん取れるから女性にも大人気。仕事で忙しく頑張っていらっしゃる方へのプレゼントにおすすめです",
  "新鮮食材、本物の鮨。毎朝築地から仕入れた新鮮な魚を最上級コシヒカリと共にお出ししています。こだわりぬいた本物の味をお楽しみいただけます",
  "肉を食うならうちに来い！人の金で焼肉を食え！"
  ]
location=["自由が丘","代官山","丸の内","浅草","大岡山"]


5.times do |index|
  Item.create(
    title: title[index],
    body: body_text[index],
    price: "#{index+1}",
    reputation: "#{index+1}",
    location: location[index],
    user_id: "#{index+1}",
    image: File.open("./app/assets/images/restaurant_#{index+1}.jpg")
  )
end

5.times do |index|
  5.times do |j|
    Booking.create(
      to_name: "receiver_#{index+1}",
      gift_type: 1000*(j+1),
      message: body_text,
      delivery_method: 1,
      to_email: "receiver#{index+1}@email",
      from_name: "giver_#{index+1}",
      from_email: "giver#{index+1}@email",
      serial: SecureRandom.hex(5),
      item_id: (index+1)
    )
    end
end

