puts "Delecting data..."
Author.destroy_all
Poem.destroy_all

puts "π± Seeding authors..."
plath = Author.create(name: 'Sylvia Plath', is_user: false)
frost = Author.create(name: 'Robert Frost', is_user: false)
collins = Author.create(name: 'Billy Collins', is_user: false)
masefield = Author.create(name: 'John Masefield', is_user: false)

eli = Author.create(name: 'Eli Robbins', is_user: true)
adam = Author.create(name: 'Adam La Rosa', is_user: true)
william = Author.create(name: 'William Badger', is_user: true)
daniel = Author.create(name: 'Daniel Ezekiel', is_user: true)
anonymous = Author.create(name: 'anonymous', is_user: true)




puts "π± Seeding poems..."
Poem.create(poem_id: 1, author_id: plath.id, likes: 0,
            title: 'Lady Lazarus', 
            content: "I have done it again.\nOne year in every ten\nI manage itββ\n\nA sort of walking miracle, my skin\nBright as a Nazi lampshade,\nMy right foot\n\nA paperweight,\nMy face a featureless, fine\nJew linen.\n\nPeel off the napkin\n0 my enemy.\nDo I terrify?ββ\n\nThe nose, the eye pits, the full set of teeth?\nThe sour breath\nWill vanish in a day.\n\nSoon, soon the flesh\nThe grave cave ate will be\nAt home on me\n\nAnd I a smiling woman.\nI am only thirty.\nAnd like the cat I have nine times to die.\n\nThis is Number Three.\nWhat a trash\nTo annihilate each decade.\n\nWhat a million filaments.\nThe peanut-crunching crowd\nShoves in to see\n\nThem unwrap me hand and foot\nThe big strip tease.\nGentlemen, ladies\n\nThese are my hands\nMy knees.\nI may be skin and bone,\n\nNevertheless, I am the same, identical woman.\nThe first time it happened I was ten.\nIt was an accident.\n\nThe second time I meant\nTo last it out and not come back at all.\nI rocked shut\n\nAs a seashell.\nThey had to call and call\nAnd pick the worms off me like sticky pearls.\n\nDying\nIs an art, like everything else,\nI do it exceptionally well.\n\nI do it so it feels like hell.\nI do it so it feels real.\nI guess you could say I\'ve a call.\n\nIt\'s easy enough to do it in a cell.\nIt\'s easy enough to do it and stay put.\nIt\'s the theatrical\n\nComeback in broad day\nTo the same place, the same face, the same brute\nAmused shout:\n\n\'A miracle!\'\nThat knocks me out.\nThere is a charge\n\nFor the eyeing of my scars, there is a charge\nFor the hearing of my heartββ\nIt really goes.\n\nAnd there is a charge, a very large charge\nFor a word or a touch\nOr a bit of blood\n\nOr a piece of my hair or my clothes.\nSo, so, Herr Doktor.\nSo, Herr Enemy.\n\nI am your opus,\nI am your valuable,\nThe pure gold baby\n\nThat melts to a shriek.\nI turn and burn.\nDo not think I underestimate your great concern.\n\nAsh, ash β-\nYou poke and stir.\nFlesh, bone, there is nothing thereββ\n\nA cake of soap,\nA wedding ring,\nA gold filling.\n\nHerr God, Herr Lucifer\nBeware\nBeware.\n\nOut of the ash\nI rise with my red hair\nAnd I eat men like air.")
               
Poem.create(poem_id: 2, author_id: frost.id, likes: 0,
            title: 'Stopping By Woods On A Snowy Evening', 
            content: "Whose woods these are I think I know.\nHis house is in the village though;\nHe will not see me stopping here\nTo watch his woods fill up with snow.\n\nMy little horse must think it queer\nTo stop without a farmhouse near\nBetween the woods and frozen lake\nThe darkest evening of the year.\n\nHe gives his harness bells a shake\nTo ask if there is some mistake.\nThe only other sound\'s the sweep\nOf easy wind and downy flake.\n\nThe woods are lovely, dark and deep.\n\nBut I have promises to keep,\n\nAnd miles to go before I sleep,\n\nAnd miles to go before I sleep.")

Poem.create(poem_id: 3, author_id: plath.id, likes: 0,
            title: 'Mirror',
            content: "I am silver and exact. I have no preconceptions.\nWhatever I see I swallow immediately\nJust as it is, unmisted by love or dislike.\nI am not cruel, only truthful β\nThe eye of a little god, four-cornered.\nMost of the time I meditate on the opposite wall.\nIt is pink, with speckles. I have looked at it so long\nI think it is part of my heart. But it flickers.\nFaces and darkness separate us over and over.")

Poem.create(poem_id: 4, author_id: masefield.id, likes: 0,
            title: "Sea Fever",
            content: "I must go down to the seas again, to the lonely sea and the sky,\nAnd all I ask is a tall ship and a star to steer her by,\nAnd the wheel's kick and the wind's song and the white sail's shaking,\nAnd a grey mist on the sea's face, and a grey dawn breaking.\n\nI must go down to the seas again, for the call of the running tide\nIs a wild call and a clear call that may not be denied;\nAnd all I ask is a windy day with the white clouds flying,\nAnd the flung spray and the blown spume, and the sea-gulls crying.\n\nI must go down to the seas again, to the vagrant gypsy life,\nTo the gull's way and the whale's way, where the wind's like a whetted knife;\nAnd all I ask is a merry yarn from a laughing fellow-rover,\nAnd quiet sleep and a sweet dream when the long trick's over.")

Poem.create(poem_id: 5, author_id: collins.id, likes: 0,
        title: 'Introduction to Poetry',
        content:"I ask them to take a poem\nand hold it up to the light\nlike a color slide\n\nor press an ear against its hive.\n\nI say drop a mouse into a poem\nand watch him probe his way out,\nor walk inside the poem\'s room\nand feel the walls for a light switch.\n\nI want them to waterski\nacross the surface of a poem\nwaving at the author\'s name on the shore.\n\nBut all they want to do\nis tie the poem to a chair with rope\nand torture a confession out of it.\n\nThey begin beating it with a hose\nto find out what it really means.")

Poem.create(poem_id:100, author_id: eli.id, likes:0,
            title: "Sometimes I code",
            content: "Sometimes I code.\nSometimes I don't.\nThe world is on fire.\nso let's all code.")


Poem.create(poem_id:101, author_id: eli.id, likes:0,
            title: "World on Fire",
            content: "The World is on fire\nbut that is ok\nbecause i have A/C")


Poem.create(poem_id:102, author_id: william.id, likes:0,
            title: "Ruby on Rails",
            content: "Roses are red\nViolets are Pale\nI can't for ruby\nTo be on a rail")
    

puts "β Done seeding!"

