Song.destroy_all
Artist.destroy_all

aphex_twin = Artist.create!(name: "Aphex Twin", remote_image_url: "https://res.cloudinary.com/dfxtnhrcg/image/upload/v1508363526/aphex_121314_y3ewg6.jpg")
son_sinaa = Artist.create!(name: "Son Sinaa", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508082636/avatars-000291962812-dqoosf-t500x500_zrckij.jpg")
modeselektor = Artist.create!(name: "Modeselektor", remote_image_url: "https://res.cloudinary.com/dfxtnhrcg/image/upload/v1508359174/modeselektor-2_ry8oz1.jpg")



Song.create!([
            {title: "Come To Daddy", artist: aphex_twin },
            {title: "Windowlicker", artist: aphex_twin },
            {title: "Milkman", artist: aphex_twin },
            {title: "Highroller", artist: son_sinaa },
            {title: "Evil Twin", artist: modeselektor },
            {title: "German Clap", artist: modeselektor},
            {title: "Humanized", artist: modeselektor},

])
