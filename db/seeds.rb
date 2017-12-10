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

body_text = "吾輩は猫である。名前はまだ無い。どこで生れたかとんと見当がつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。この書生というのは時々我々を捕えて煮て食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。この時妙なものだと思った感じが今でも残っている。"

5.times do |index|
  Item.create(
    title: "restaurant_#{index+1}",
    body: body_text,
    price: "#{index+1}",
    reputation: "#{index+1}",
    location: "london-#{index+1}",
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
      to_email: "receiver_#{index+1}@email",
      from_name: "giver_#{index+1}",
      from_email: "giver_#{index+1}@email",
      serial: SecureRandom.hex(5)
    )
    end
end

