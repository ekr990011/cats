# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#CatCount.create(count: 0)


CatPersonality.create(
  catID: 1,
  name: 'Siamese',
  image: 'qSiameseHead.jpg',
  personality: 'You constantly have friends around and you almost never stop talking.  You are outgoing, personable, loving and have almost limitless energy, but you can be dominating, impatient, and bossy.  You hate being alone and are a bit of a social climber.',
  business: 'You do well in organizations, especially if you are in charge.  Oddly enough you like to have at least one person who has a similar personality in your business.  You find investing too slow and boring.  Business success comes easily for you.',
  romance: 'You are loving and a passionate lover, but the people you love often feel neglected because you are so busy.  You also tend to overwhelm every conversation.  You are most compatible with a Toyger or a Persian, but you should avoid other Siamese and American Bobtails.',
  athletics: 'You are lithe, agile and have great endurance.  You like team sports and often are the captain of any team you join.  You are known for being a ruthless competitor.'
)

CatPersonality.create(
  catID: 2,
  name: 'American Bobtail',
  image: 'qAmBobtailHead.jpg',
  personality: 'You are fearless, intelligent, easy going and loyal.  You are a bit introverted, and like your alone time.  You are a bit aloof, which some people may mistake for being arrogant.  You are quiet, but not afraid to state when your opinion when you feel it necessary.',
  business: 'You are entrepreneurial and will do better starting your own business or in a small business than in a large organization.  You have an independent streak and willing to strike out on your own ventures that others may deride or ridicule.  You are patient and may be a good investor.  You will find success in business, but it will not be a straight path.',
  romance: 'You have to be careful with romantic relationships.  Your easy going manner and loyalty make you an easy target for mates that will take advantage of you.  If you can avoid this mistake, you will have successful romantic life punctuated with extremely passionate interludes.
	You are most compatible with a Norwegian Forest Cat or an American Shorthair, but you should avoid Siamese and Persians.',
  athletics: 'You are strong, fearless, determined and agile so you will do well in most sports you undertake.  However, you may do poorly in team sports, especially if they are dominated by politics.  You should also avoid sports that are judged, such as diving and gymnastics.'
)

CatPersonality.create(
  catID: 3,
  name: 'Japanese Bobtail',
  image: 'qJapaneseBobtailHead.jpg',
  personality: 'If your friends had to choose one word to describe you, it would be lucky.  You are easy going to the point of almost appearing oblivious.  You are intelligent, caring, and loyal but not clingy.  You are very talkative and have soft melodious voice that causes people to seek you out for a conversation.',
  business: 'You are lucky and will do well at almost any business, but you do not have a strong interest in building or running a large organization.  You will particularly thrive in the entertainment business.  Many Japanese Bobtails are highly successful singers.  Ultimately, you are not interested in building a large fortune, because you have so many other interests.',
  romance: 'You find romantic partners easily and almost all of them are successful relationships and happy.  Even your breakups seem effortless and painless.  You are loving and caring and easy to get along with.  However if you do have an unsuccessful romance it is likely to be extremely painful.  You are most compatible with an Egyptian Mau or a Persian but you should avoid Maine Coons and Ragamuffins.',
  athletics: 'You are agile and lithe, but competitive sports hold very little interest for you either as a competitor or as a spectator.  Only artistic sports like gymnastics, the snowboard halfpipe, and ice skating hold your attention.'
)

CatPersonality.create(
  catID: 4,
  name: 'Toyger',
  image: 'qToygerHead.jpg',
  personality: 'People describe you as having a regal personality.  You are always gracious and never do or say anything controversial.  Your manners are impeccable and you cannot understand why people spend their time on petty bickering, gossip, and politics.  You are pretty sure the world does or should revolve around you, after all you are a Toyger.',
  business: 'You do not actively engage in business, investing or commerce.  Those activities are for peasants.  If you are forced to be involved in these activities, due to some unfortunate and clearly unjust circumstance, you are actually a very sly and skillful investor. ',
  romance: 'Finding romantic relationships comes easily for you, after all you are beautiful since you are a Toyger.  Your ideal mate will be successful in business and handle all those annoying details in life.  You are pretty sure you should be able to spend your life on beach drinking champagne, getting a nice tan, and perfecting your perfect body.
	You are most compatible with a Siamese or a Li Hau (Dragon Li) but you should avoid American Bobtails and Norwegian Forest Cats.',
  athletics: 'You are agile and have surprising strength, but sports have little interest to you except as a social event – ideally a social event that revolves around you and how beautiful you are.   After all you are a Toyger.'
)


CatPersonality.create(
  catID: 5,
  name: 'Ragamuffin',
  image: 'qRagamuffinHead.jpg',
  personality: 'You are extremely easy to get along with.  Everyone feels comfortable with you around.  You are carefree to the point of being negligent.  You are loyal to a fault. ',
  business: 'You do not like to let work get in the way of your life.  You do best as an employee in a larger organization.  You tend to be a calming influence on any work place and this makes you prized by your employers.  As long as you have money for the essentials, you have very little interest in money, investing or business.',
  romance: 'You love to cuddle, lie around in bed with your lover and you make your partners feel very loved.  The right partner makes you go limp.  Often your lovers will play with your beautiful hair for hours.
	You are most compatible with a Maine Coon Cat or a Cornish Rex, but you should avoid Toygers and Persians.',
  athletics: 'You enjoy backyard games and sports and are surprisingly good at them, but have no interest in organized or competitive sports.  You are strong, but not particularly graceful.  You took longer than most to mature as a kid, so your strength and size are surprising to people you grew up with.'
)

CatPersonality.create(
  catID: 6,
  name: 'Maine Coon Cat',
  image: 'qMaineCoonHead.jpg',
  personality: 'People describe you as gentle giant, with incredible common sense.  You are gregarious, level headed, practical,  and love to play and joke around.  Almost nothing can cause you to lose you temper.  People love having around, but you also enjoy being out in nature by yourself.',
  business: 'You do well in smaller businesses that you have a controlling interest in, although if your business grows large you still run it with that personal touch of a home town business.  You have no use for Wall Street or fancy financial wizardry, which you hold at the same level as a patent medicine salesman.',
  romance: 'You are a sturdy, loyal lover and will have practical, down to Earth relationships.    You keep your lover warm at night.  You will have a long, happy practical marriage.
	You are most compatible with a Norwegian Forest Cat or a Ragamuffin and should avoid Japanese Bobtails and Cornish Rexes.',
  athletics: 'You are extremely strong, but hunting, fishing and outdoor activities are what hold  your attention.  Organized sports seem a little too contrived to you.  You cannot understand why anyone would stay inside and watch sports on TV, when they could be in the great outdoors.'
)

CatPersonality.create(
  catID: 7,
  name: 'Norwegian Forest Cat',
  image: 'qNorwegianForestHead.jpg',
  personality: 'You are friendly, outgoing and always have lots of friends around, however you are a little leery of strangers until you get to know them.  You have a practical intelligence and great discernment.',
  business: 'Business is a practical issue to you.  You are likely to own a simple, small business or be an employee with a lot of independence.  Your idea of investing is owning things, like cars, boats, cabins, etc.  You are more likely to invest in a vintage sports car or classic boat than own stocks or bonds.',
  romance: 'You attract members of the opposite sex easily with your gregarious, outgoing nature.  Despite this you are slow to let a lover into your life.  Your lover will always have a good time with you, but may complain that you do not spend enough time together alone or that your are not passionate enough.  Flowers, chocolates, and jewelry are not your thing.
	You are compatible with a American Bobtail and a Maine Coon, but you should avoid Toygers and Dragon Lis. ',
  athletics: 'You are strong and have incredible grip strength.   You do very well at almost any sports your try, but your love is for rock climbing, camping, hiking, and skiing.'
)

CatPersonality.create(
  catID: 8,
  name: 'Dragon Li (Li Hau)',
  image: 'qLiHauHead.jpg',
  personality: 'You are affectionate, mellow, and generally quiet.  Despite getting along well with people, you are described as a little different.  You are very intelligent and this can put off other people.',
  business: 'You do well at business fairly effortlessly, but you have not desire to build a huge business.  Technical and scientific businesses appeal to you.  Investing also comes fairly easily to you.',
  romance: 'You are an affectionate lover, but not particularly passionate.  Your mate may feel that you are little distant.  They also may complain that you do not talk to them enough.
	You are compatible with a Toyger or a Japanese Bobtail, however you should avoid Norwegian Forest Cats and American Shorthairs.',
  athletics: 'You are strong and have incredible agility.  You do well at most sports naturally, however excelling at sports does not hold your attention.  If you do excel at a sport, most likely you have another equal or greater intellectual passion.'
)

CatPersonality.create(
  catID: 9,
  name: 'Persian',
  image: 'qPersianHead.jpg',
  personality: 'People describe you as beautiful, graceful, aristocratic and entitled.  You are mellow, but easily upset by changes to your environment.  You get along well with the right kind of people.  You are not particularly talkative, but your close friends and family greatly enjoy your company.',
  business: '“What’s that” would likely be your response in jest about business.  You have no interest in business or a career or any that other nonsense.  You will stoop to working, if you absolutely have to, but otherwise you expect to be treated like royalty.',
  romance: 'Your beauty attracts many lovers, which you may entertain in your youth, but just seems like a nuisance as you get older.  When you find the right match, you will stick fast with that person.
	You are compatible with a Siamese or a Japanese Bobtail, but you should avoid American Bobtails and Ragamuffins.',
  athletics: 'You may have played some sports as a child, but you consider them childish.  As for the great outdoors, you just consider that sort of talk foolish.  Your idea of going to the beach is to be in the penthouse of luxury condo overlooking the beach.  If your are feeling particularly ‘outdoorsy’ you open the glass pane windows and allow the ocean breeze to invade your space.'
)

CatPersonality.create(
  catID: 10,
  name: 'Egyptian Mau',
  image: 'qEgyptianMauHead.jpg',
  personality: 'You are constantly busy, very curious, loyal, and bit of a practical joker.  You have life long friends and are well liked, but you are leery of strangers.  You are considered to be very animated, but not a drama queen.',
  business: 'You like doing hands on work, whether as an employee or as a business owner.  You do well enough at business, but building a large fortune has no interest for you.  You find investing too slow and not hands on enough to hold your interest.',
  romance: 'It takes you a while, but once you find the right person you are inseparable.  Some people think you spend too much time and share too many activities with your spouse.  Unlike most people, you actually are quite comfortable having your spouse working with you in your business.
	You are most compatible with a Japanese Bobtail or an American Bobtail, but you should avoid Dragon Lis and Cornish Rexes.',
  athletics: 'You are good at any sport you try, however you are not exceptional at any sport.  You enjoy all sports, including outdoor activities like hunting, fishing, camping, hiking, and rock climbing.'
)

CatPersonality.create(
  catID: 11,
  name: 'Cornish Rex',
  image: 'qCornishRexHead.jpg',
  personality: 'You are very busy and talkative.  You are known for being highly articulate, a little flamboyant and a bit of joker.  You are loyal, loving, but not above being a little bit deceptive if necessary.',
  business: 'You are likely to be an actor, salesperson, in the arts, or a highly successful cat burglar.  You are more interested in relationships, than finance.',
  romance: 'You will have many lovers when you are young, but as you get older you will find the one person who is right for you.
	You are most compatible with a Ragamuffin or a Dragon Li (Li Hau), but should avoid Maine Coon Cats and Egyptian Maus.',
  athletics: 'You are okay at sports, but you are more interested in the arts.  You are the sort of person that goes to a football (American) game to see the marching band at half time.  You enjoy the beauty of the outdoors, but have no interest in fishing or hunting.'
)

CatPersonality.create(
  catID: 12,
  name: 'American Shorthair',
  image: 'qAmShorthairHead.jpg',
  personality: 'People describe you are sturdy, reliable, and even tempered.  You are comfortable in your own company, but equal happy to be family and friends.  You take things one day at a time.',
  business: 'You will do well as a farmer, rancher, fisherman or in transportation.  You have a cool head that serves you well.  You shun complex business schemes.  As a result, you occasionally miss out on some big opportunities, but you avoid big business and financial disasters.',
  romance: 'You are a great, steady, loyal spouse, but not particularly passionate.  In order for you to have a successful marriage or long term relationship it is important that you find someone who values these qualities.
	You are most compatible with an American Bobtail or an Egyptian Mau, but should avoid Dragon Lis and Ragamuffins.',
  athletics: 'You are good athlete and a hard worker, which means you will excel at any sports your focus on.  You enjoy the great outdoors and are an excellent hunter and fisherman.  You enjoy being on the water and water sports.  You are bit of naturalist, who just enjoys being out in nature.'
)
