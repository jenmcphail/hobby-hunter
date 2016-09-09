Hobby.destroy_all
User.destroy_all

users = User.create! ([{username: "jen", email: "jen@jen.com", password_digest: "jen"}])

hobbies= Hobby.create! ([{title: "Bullet Journaling", description: "a way to organize your life", video_url: "https://www.youtube.com/watch?v=OuaaotSpifM"}])


