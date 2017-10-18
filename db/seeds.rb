Song.destroy_all
Artist.destroy_all

bonobo = Artist.create!(name: "Bonobo", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508082636/1-Bonobo-Neil-Krug-3000_cao5nv.jpg")
son_sinaa = Artist.create!(name: "Son Sinaa", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508082636/avatars-000291962812-dqoosf-t500x500_zrckij.jpg")

Song.create!([
            {title: "Emkay", artist: bonobo },
            {title: "Cirrus", artist: bonobo },
            {title: "Antenna", artist: bonobo },
            {title: "Highroller", artist: son_sinaa },

])
