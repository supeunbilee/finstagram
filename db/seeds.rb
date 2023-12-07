records = [
  {
    user: { username: "wholesome_spongebob", avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUV6iIw6tNQARMJZ2rZ7uVHtJr0-wH1Nu0dQ&usqp=CAU", email: "spongebob@gmail.com", password: "squarepants" },
    post: { photo_url: "https://wallpapers.com/images/hd/cute-aesthetic-spongebob-cartoon-6m3a3fmyqfb2tsrq.jpg"}
  },
  {
    user: { username: "puny.plankton4", avatar_url: "https://i.pinimg.com/564x/e0/e2/8a/e0e28acf97e84b001e858e19c10bf3a9.jpg", email: "plankton@gmail.com", password: "karen" },
    post: { photo_url: "https://i.pinimg.com/originals/9c/a3/80/9ca3805548f5e783733cfbc5a998ba32.jpg"}
  },
  {
    user: { username: "handsome-squidward", avatar_url: "https://i.pinimg.com/originals/e4/d9/50/e4d950f1332f136e7f9a21d6e499e949.jpg", email: "squidward@gmail.com", password: "clarinet" },
    post: { photo_url: "https://media.tenor.com/lQ87s0dLeRYAAAAC/clarinet-squidward.gif"}
  }
]

records.each do |record|
    user_seed = record[:user]
    post_seed = record[:post]
  
    if !User.find_by(username: user_seed[:username])
      # Create a User
      user = User.create user_seed
      puts "-- Seeded User: #{user.username}"
  
      # Create a FinstagramPost
      FinstagramPost.create photo_url: post_seed[:photo_url], user_id: user.id
      puts "-- Seeded a FinstagramPost for User: #{user.username}"
    end
  end
  