Song.destroy_all
Artist.destroy_all
#artists
bonobo = Artist.create!(name: "Bonobo", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508082636/1-Bonobo-Neil-Krug-3000_cao5nv.jpg")
son_sinaa = Artist.create!(name: "Son Sinaa", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508082636/avatars-000291962812-dqoosf-t500x500_zrckij.jpg")
onra = Artist.create!(name: "Onra", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508083411/ONRA1_gfsgu3.jpg")
trust = Artist.create!(name: "TR/ST", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508083212/Schermata-2014-12-12-alle-23.54.57-300x300_qawuxj.png")
clams_casino = Artist.create!(name: "Clams Casino", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508083310/clams-casino-instrumental-mixtape-2_bvtbhi.jpg")
emancipator = Artist.create!(name: "Emancipator", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508083014/Emancipator-Wakarusa-wx6-724x1122_n7keax.jpg")
fatima_yamaha = Artist.create!(name: "Fatima Yamaha", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508082637/a2558462156_10-980x980_kz09vs.jpg")
gold_panda = Artist.create!(name: "Gold Panda", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508083212/goldpanda_awimhm.jpg")
john_talabot = Artist.create!(name: "John Talabot", remote_image_url: "http://res.cloudinary.com/ajmbaas/image/upload/v1508083014/pervac089_awguoc.jpg")
#songs
Song.create!([
            {title: "Emkay", artist: bonobo },
            {title: "Cirrus", artist: bonobo },
            {title: "Antenna", artist: bonobo },
            {title: "Highroller", artist: son_sinaa },
            {title: "Dynasty", artist: son_sinaa },
            {title: "Chiba Nights", artist: onra },
            {title: "Halyards", artist: onra },
            {title: "Metal Bird", artist: onra },
            {title: "I Am Real Punk", artist: onra },
            {title: "Bouy", artist: trust },
            {title: "Gloryhole", artist: trust },
            {title: "Bulbform", artist: trust },
            {title: "Chapter 2", artist: trust },
            {title: "Clams Casino", artist: clams_casino },
            {title: "Merlion", artist: emancipator },
            {title: "Outlaw", artist: emancipator },
            {title: "Dusk to Dawn", artist: emancipator },
            {title: "Borderless II", artist: fatima_yamaha },
            {title: "Sazak Bay", artist: fatima_yamaha },
            {title: "Love Invaders", artist: fatima_yamaha },
            {title: "Cradle", artist: gold_panda },
            {title: "Austere", artist: gold_panda },
            {title: "El Oeste", artist: john_talabot },
            {title: "Estiu", artist: john_talabot },
            {title: "Depak Ine", artist: john_talabot },
])
