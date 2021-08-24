puts "Delecting data..."
Author.destroy_all
Poem.destroy_all

puts "🌱 Seeding authors..."
plath = Author.create(name: 'Sylvia Plath')
frost = Author.create(name: 'Robert Frost')



puts "🌱 Seeding poems..."
Poem.create(author_id: plath.id,
            title: 'Lady Lazarus', 
            content: 'I have done it again.\nOne year in every ten\nI manage it——')

Poem.create(author_id: frost.id,
            title: 'Stopping By Woods On A Snowy Evening', 
            content: 'Whose woods these are I think I know.\nHis house is in the village though;\nHe will not see me stopping here\nTo watch his woods fill up with snow.\pMy little horse must think it queer\nTo stop without a farmhouse near\nBetween the woods and frozen lake\nThe darkest evening of the year.\pHe gives his harness bells a shake\nTo ask if there is some mistake.\nThe only other sound\'s the sweep\nOf easy wind and downy flake.\pThe woods are lovely, dark and deep.\pBut I have promises to keep,\pAnd miles to go before I sleep,\pAnd miles to go before I sleep.')

Poem.create(author_id: plath.id,
            title: 'Mirror',
            content: ' I am silver and exact. I have no preconceptions.\nWhatever I see I swallow immediately\nJust as it is, unmisted by love or dislike.\nI am not cruel, only truthful ‚\nThe eye of a little god, four-cornered.\nMost of the time I meditate on the opposite wall.\nIt is pink, with speckles. I have looked at it so long\nI think it is part of my heart. But it flickers.\nFaces and darkness separate us over and over.')


puts "✅ Done seeding!"
