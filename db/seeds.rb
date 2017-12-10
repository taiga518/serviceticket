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
    password: "user#{index+1}",
  )
end

body_text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non pulvinar sapien. Donec vel blandit eros, vel vestibulum tellus. Suspendisse imperdiet mattis eros, et luctus mi sagittis sit amet. In aliquam nisl a neque aliquam sodales. Morbi lacinia venenatis metus, id accumsan felis lacinia quis. Curabitur a nisl sodales, vestibulum augue non, eleifend quam. Maecenas dapibus ac elit eget commodo. Integer pulvinar, risus eu facilisis condimentum, arcu ante ultricies magna, et iaculis mi sem ac mauris. Nullam in diam ac."

5.times do |index|
  Item.create(
    title: "restaurant_#{index+1}",
    body: body_0text,
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

