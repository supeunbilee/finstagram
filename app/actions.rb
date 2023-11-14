def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
      "#{time_ago_in_minutes / 60} hours ago"
    else
      "#{time_ago_in_minutes} minutes ago"
    end
  end
  
  get '/' do 
    @finstagram_post_spongebob = {
        username: "wholesome_spongebob",
        avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUV6iIw6tNQARMJZ2rZ7uVHtJr0-wH1Nu0dQ&usqp=CAU",
        photo_url: "https://wallpapers.com/images/hd/cute-aesthetic-spongebob-cartoon-6m3a3fmyqfb2tsrq.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
         username: "wholesome_spongebob",
         text: "Me knowing we're about to get into the holiday season."
     }]
    }

    @finstagram_post_plankton = {
        username: "puny.plankton4",
        avatar_url: "https://i.pinimg.com/564x/e0/e2/8a/e0e28acf97e84b001e858e19c10bf3a9.jpg",
        photo_url: "https://i.pinimg.com/originals/9c/a3/80/9ca3805548f5e783733cfbc5a998ba32.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "puny.plankton4",
            text: "Definitely not on our way to the Krusty Krab!"
        }]
    }

    @finstagram_post_squidward = {
        username: "handsome-squidward",
        avatar_url: "https://i.pinimg.com/originals/e4/d9/50/e4d950f1332f136e7f9a21d6e499e949.jpg",
        photo_url: "https://media.tenor.com/lQ87s0dLeRYAAAAC/clarinet-squidward.gif",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "handsome-squidward",
            text: "Thanks everyone for a great concert last night!", 
        }, 
        {   username: "wholesome_spongebob",
            text: "I love you Squidward!"
        }]
    }

    @finstagram_posts = [@finstagram_post_spongebob, @finstagram_post_plankton, @finstagram_post_squidward]

    erb(:index)
end


