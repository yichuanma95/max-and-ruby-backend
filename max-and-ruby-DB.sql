drop database if exists max_and_ruby;
create database max_and_ruby;

use max_and_ruby;

create table bunny_character (
  id integer not null auto_increment,
  bio text,
  name varchar(100),
  primary key (id)
) engine=InnoDB;
    
create table episode (
  id integer not null auto_increment,
  episode_no integer,
  little_brothers bit,
  plot varchar(255),
  season integer,
  segment varchar(255),
  title varchar(255),
  primary key (id)
) engine=InnoDB;

create table appearance (
  character_id integer not null,
  episode_id integer not null,
  foreign key (character_id) references bunny_character (id),
  foreign key (episode_id) references episode (id)
) engine=InnoDB;

create table max_words (
  id integer not null auto_increment,
  original_words varchar(255),
  searchable_words varchar(255),
  primary key (id)
) engine=InnoDB;

create table max_says (
  episode_id integer not null,
  max_words_id integer not null,
  foreign key (max_words_id) references max_words (id),
  foreign key (episode_id) references episode (id)
) engine=InnoDB;

insert into bunny_character (name, bio) values
(
  'Max',
  concat(
    'Max is a three-year-old bunny who is Ruby\'s little brother. He has white fur and wears blue overalls featuring a prominent front ',
    'pocket and a striped shirt. He is just about as cute and mischievous as any real-life pet bunny can be, plus he is determined to get ',
    'what he wants every time, even if it means messing up Ruby\'s plans for the day. He also has a tendency to play fast and loose with ',
    'the rules, but that\'s because he\'s only three years old. With his behavior, he has perfected the art of being a little brother.\n',
    'Max typically speaks only one word or phrase at a time, and the word or phrase that he does say throughout an episode is the theme of ',
    'what he does in that episode. For example, when he says \"Fire Truck\", he wants to play with his toy fire truck, even if he can\'t ',
    'find it. Sometimes, in an episode, he may say words or phrases that are different from the one he says primarily in that episode. ',
    'Also, he usually gets to say the final word in every episode.\n'
    'Max enjoys playing with his toys, playing in the mud and getting dirty, making earthworm cakes, playing with Froggy, listening to the ',
    'radio show of his favorite super hero Super Bunny (based on Superman) and playing Super Bunny, eating candy and other delicious treats, ',
    'hanging out and playing sports with Roger Piazza, hiding slime dribblers and red-hot marshmallow squirters, dressing like a vampire on ',
    'Halloween, and pulling off other kinds of bunny mischief. His favorite toys include wind-up toys like his flipping chicks and Yappy ',
    'Puppy, robots like his Ear-splitter Space Cadet, remote-controlled toys like his Search-and-rescue Emergency Helicopter and ',
    'Jellyball-spitting Spider, action figures like Rabbit Racer, his red rubber elephant, his Super Bunny cape, and a life-size toy train ',
    'that Grandma and Ruby got for him as a surprise. He also refuses to go to sleep if he\'s not wearing his favorite Super Bunny pajamas. ',
    'When there is a tempting dish on a table, like Thanksgiving stuffing, New Year cookies, birthday cake, and spaghetti, he doesn\'t want ',
    'to wait to eat it. He despises being quiet when he wants to play with loud toys, dressing up formally (he never liked that sailor ',
    'suit), tea parties, and being told \"no\". He also has a toy lobster which can go on and on and antagonize him. Despite that the ',
    'lobster acts like his enemy, he still keeps it.\n',
    '\"App!\"'
  )
),
(
  'Ruby',
  concat(
    'Ruby is a seven-year-old bunny who is Max\'s big sister. She has white fur. In seasons 1-2, she wears a yellow dress with a polka-dot ',
    'design of green and orange flowers and purple sleeves. In seasons 3-5, she wears a pink dress with a trio of daisies on her left side ',
    'and light pink sleeves. She is patient, well-behaved, organized, and responsible, but she can also be a bit closed-minded and somewhat ',
    'of a perfectionist, and she has the tendency to underestimate Max. No matter how mischievous Max can be, she always manages to keep her ',
    'patience with him, but that\'s because she has to look over him as his big sister. Sometimes, when Max does something, she says ',
    '\"Little brothers...\" with a sigh.\n',
    'Ruby is a member of the local Bunny Scouts of her hometown East Bunnyhop, where she is in a troop with her best friends, Louise, ',
    'Valerie, and Martha. Some episodes will focus on her trying to accomplish something in order to earn a Bunny Scout badge or for ',
    'personal reasons. In those episodes, she wouldn\'t have accomplished her goal without Max interfering in a surprising way.\n',
    'Ruby enjoys hanging out with her best friends, playing with her dollies, making perfect greeting cards for special occasions, planning ',
    'perfect parties for her friends, making perfect gifts for Grandma, having tea parties, reading Bunny Drew novels, her favorite novel ',
    'series about her favorite detective, channeling her inner Bunny Drew to find her missing dollies, baking, fashion, beauty and makeup, ',
    'ballet, playing with Baby Huffington, and having a crush on Roger Piazza. Her absolute favorite dolly without a doubt is Curly Shirley. ',
    'She also has other favorite dollies like Rapunzel, Tooth Fairy, and Sally Swims-a-Lot. Her other favorite toys include Can\'t-sit-up ',
    'Slug and Walkie-Talkie Bear. She is also the self-proclaimed biggest fan of the famous ballerina Bunny Pavlova, whom she idolizes and ',
    'has an autograph of. She despises Max being too loud and dirty and messing with her belongings without her permission, things not going ',
    'the way she planned, things that are disgusting, like worms and old slime dribblers, and anyone or anything who tries to harm Max.'
  )
),
(
  'Grandma',
  concat(
    'Grandma is an elderly bunny who is Max and Ruby\'s paternal grandmother. She has gray fur and wears a frilly blue dress with purple ',
    'flowers and buttons, glasses, and high-heel shoes. I think her fur is gray because of her age if her grandbunnies Max and Ruby have ',
    'white fur.\n',
    'Grandma is loving, caring, nurturing, playful, and supportive of both of her grandbunnies Max and Ruby, maybe more so toward Max. She ',
    'lives next door to them. She is also their guardian in the absence of their parents, which shows when she took them on a trip to ',
    'Bunningham and a train trip to Bunnyville to visit Aunt Claire and Uncle Nate. She also has plenty of life experience to inspire her ',
    'grandbunnies with. Also, back in her youth, she was an award-winning tap dancer.\n',
    'In \"Grandma\'s Attic\", Grandma has a portrait of her with Grandpa. That was the only time Grandpa was seen and mentioned. If he is ',
    'not there anymore and she is widowed, that may explain why she lives alone in her house. Despite this, she is still smiling, but ',
    'that\'s because of her grandbunnies.\n',
    'Grandma is also an excellent baker. She can make delicious, tempting desserts such as birthday cake, scones, New Year cookies, and her ',
    'famous Five Fruit Fiesta Flan. She also taught Ruby how to bake, and now Ruby can bake her own perfect cakes.'
  )
),
(
  'Louise',
  concat(
    'Louise is a seven-year-old bunny who is Ruby\'s best friend. She has auburn fur and wears a dress with a plaid pattern of green, blue, ',
    'and white, and yellow sleeves. She and Ruby frequently hang out and play together. They share much of the same interests, including a ',
    'crush on Roger Piazza. Her personality is similar to that of Ruby. Plus, she has a little cousin named Morris who is like a little ',
    'brother to her, like how Max is Ruby\'s little brother. Like Ruby, Louise is a member of the local Bunny Scouts of East Bunnyhop.'
  )
),
(
  'Valerie',
  concat(
    'Valerie is another one of Ruby\'s best friends. She has brown fur and glasses (to me, the glasses make her look cute) and wears a ',
    'dress with daisies over maroon on the bottom and yellow on the top. She hangs out and plays with Ruby quite a bit, but not as much as ',
    'Louise does. She also shares several common interests with Ruby, such as fashion and ballet. Like Ruby, Valerie is a member of the ',
    'local Bunny Scouts of East Bunnyhop.'
  )
),
(
  'Martha',
  concat(
    'Martha is another one of Ruby\'s best friends. She has golden fur and normally wears a pink dress with a bow in the middle, but is seen ',
    'wearing her Bunny Scout uniform more often. Out of Ruby\'s best friends, Martha has had the fewest appearances. She and Ruby also have ',
    'common interests, like fashion. Like Ruby, Martha is a member of the local Bunny Scouts of East Bunnyhop.'
  )
),
(
  'Morris',
  concat(
    'Morris is a two-year-old bunny who is Louise\'s little cousin and Max\'s friend. He has auburn fur just like Louise and wears green ',
    'overalls and a blue shirt. He is about as cute and mischievous as Max, which sometimes causes Louise to say \"Little cousins\". He and ',
    'Max typically get along over the same mischievous ideas. Also like Max, he only says one or two words at a time.\n',
    'Morris\'s friendship with Max didn\'t start in the best way. In \"Max Meets Morris\", he originally wanted to play with all of Max\'s ',
    'toys and not share them with him, causing them to fight over Max\'s Jellyball-spitting Spider. The first time they got along was when ',
    'they were using the Spider to shoot jellyballs at Ruby and Louise\'s Bunny Scout banner, which was their first mischievous idea ',
    'together. Since then, they\'ve been great friends. Any episode that features Morris hanging out with Max will have twice the cuteness ',
    'and mischief as an episode without Morris!'
  )
),
(
  'Roger Piazza',
  concat(
    'Roger Piazza is a seven-and-a-half year-old bunny who is the son of Mr. Piazza and a friend and sports coach to Max. He has brown fur ',
    'with lighter spots on his left eye, right cheek, mouth, bottom of his tail, and his toes. He normally wears a blue shirt with a yellow ',
    'and orange shooting star design and light blue jeans. He is quite athletic and sporty, because he has been seen playing football, ',
    'baseball, soccer, ice hockey and basketball in the series. He also helps out his father in the grocery store and has his own toolbox, ',
    'which he used to build a float for the Thanksgiving parade and a tree fort. Based on the way Ruby and Louise say hi to him, they ',
    'probably have a crush on him.\n',
    'Roger originally could only say \"Uh huh\" and \"Nuh uh\", but later on he could speak actual sentences. Still, he will reply with ',
    'his classic \"Uh huh\" and \"Nuh uh\" as short answers to anyone\'s questions.\n',
    '\"Uh huh. That\'s my catchphrase, uh huh.\"'
  )
),
(
  'Mr. Piazza',
  concat(
    'Mr. Piazza is an adult bunny who is Roger\'s father and one of Grandma\'s friends. He has brown fur and wears a white apron, a green ',
    'dress shirt with white stripes, blue jeans with light blue stripes, brown dress shoes, and glasses. He runs the grocery store at East ',
    'Bunnyhop\'s town center. He is Italian because he ran the Italy booth with Roger at the East Bunnyhop Round-the-World Fair, \"Piazza\" ',
    'is an Italian surname, and when Max, Ruby, and Grandma hosted a spaghetti dinner for him, he stated that he loved opera, \"and now ',
    'that\'s Italian\", and suggested that the spaghetti was the \"one thing that matters in a real Italian restaurant\". Also, he may ',
    'have feelings for Grandma, because he accompanied her away from her house while everybunny back there prepared a surprise birthday ',
    'party for her with her old dance trophy, and when he arrived at her house for the spaghetti dinner, after she greeted him with ',
    '\"Yoo-hoo!\", he replied \"Ciao, bella!\" (Hello, beautiful!) with a blown kiss and a gentleman\'s bow.'
  )
),
(
  'Mr. Huffington',
  concat(
    'Mr. Huffington, also known as Mr. H., is an adult bunny who is one of Max and Ruby\'s next-door neighbors. He is Mrs. Huffington\'s ',
    'husband and Baby Huffington\'s father. He has dark brown fur and wears a green sweater over a yellow shirt, striped jeans, and black ',
    'dress shoes. He runs the toy department inside the department store in the town center of East Bunnyhop.'
  )
),
(
  'Mrs. Huffington',
  concat(
    'Mrs. Huffington, also known as Mrs. H., is an adult bunny who is one of Max and Ruby\'s next-door neighbors and Grandma\'s friends. ',
    'She is Mr. Huffington\'s wife and Baby Huffington\'s mother. She has brown fur and wears a yellow shirt, a blue jacket with yellow ',
    'flowers on it, a long purple skirt, and dark purple heels. Back in high school, she was a cheerleader. She runs the perfume ',
    'department inside the department store in the town center of East Bunnyhop. Later in the series, she becomes a co-leader of Ruby\'s ',
    'Bunny Scout troop.'
  )
),
(
  'Baby Huffington',
  concat(
    'Baby Huffington, also known as Baby H., is a baby bunny who is one of Max and Ruby\'s next-door neighbors. He is Mr. and Mrs. ',
    'Huffington\'s son, and Ruby likes to play with him to practice her babysitting skills and because she thinks he\'s so cute. In fact, ',
    'his parents task Max and Ruby to look after him when they have to do something else. He has dark brown fur and wears a purple onesie. ',
    'He is probably at least a year old because he has been seen walking (with the help of his mother). In the series, he has been seen ',
    'giggling more than crying.'
  )
),
(
  'Bunny Scout Leader',
  concat(
    'Bunny Scout Leader (real name unknown) is an adult bunny who is the scout leader of Ruby\'s Bunny Scout troop. She has brown fur and ',
    'wears her Bunny Scout uniform pretty much all the time. She usually rewards badges to her Bunny Scouts for accomplishing certain ',
    'missions. She likes the surprises that Max pulls off and awards Ruby badges for them, despite that Ruby thinks that Max ruined her ',
    'projects.'
  )
),
(
  'Candi',
  concat(
    'Candi is an adult bunny who runs the candy store in East Bunnyhop\'s town center. She has brownish tan fur with light blush marks on ',
    'her cheeks and her ears normally lean back at an angle. She wears a blue dress and a pink jacket dotted with ice cream cones. She is '
    'also one of Grandma\'s friends. She has also volunteered to help Ruby earn her Bunny Scout Careers badge by letting her work in her ',
    'candy store for a day. She is perhaps Indian because she ran the India booth at the East Bunnyhop Round-the-World Fair, where she ',
    'greeted bunnies with \"Namaste\".'
  )
),
(
  'Rosalinda',
  concat(
    'Rosalinda is an adult bunny who runs the gift shop with the photo booth in East Bunnyhop\'s town center. She has light brown fur and ',
    'wears glasses and a frilly light blue dress with sunflowers. She is also one of Grandma\'s friends. She has a pet parrot named Pandora ',
    'and entrusted Max and Ruby to look after him when she had an important errand. She is perhaps Mexican because she ran the Mexico booth ',
    'at the East Bunnyhop Round-the-World Fair.\n',
    'In \"Ruby\'s Autograph\", Ruby mentioned that Bunny Pavlova went to Miss Rosalinda\'s Dancing Academy. It is unknown if Rosalinda is ',
    'the so-called Miss Rosalinda the Dance Instructor who trained Bunny Pavlova, even though she is Pavlova\'s old friend and that her gift ',
    'shop has bunny ballerina figures on display.'
  )
),
(
  'Katie',
  concat(
    'Katie is an adult bunny who runs the diner in East Bunnyhop\'s town center. She originally had tan fur, but was later redesigned with ',
    'orange fur, light blue makeup on her eyes, and an orange wig. Regardless of her design, she always wore a light yellow dress and apron ',
    'along with glasses. She is perhaps Japanese because she ran the Japan booth at the East Bunnyhop Round-the-World Fair.'
  )
),
(
  'Bunny Pavlova',
  concat(
    'Bunny Pavlova is a famous ballerina bunny. She has white fur, long arms, long legs, and long ears, typical of a professional ballerina, ',
    'and wears a plum-sparkly violet leotard and tutu, violet gloves, violet Sugar Plum crown, and violet pointe shoes. She normally walks ',
    'while en pointe, a sign indicating that she is a ballerina 24/7. She is most famous for her performances as the Sugar Plum Fairy, which ',
    'Ruby says are the most beautiful ever. Ruby is her self-proclaimed number-one fan and idolizes her.\n',
    'A native of East Bunnyhop, Pavlova trained at Miss Rosalinda\'s Dancing Academy. Her old friends include Rosalinda (it is unknown if ',
    'she is Miss Rosalinda the Dance Instructor), and Mr. Piazza. She is known to have a sweet tooth. Her favorite candy is sour lemon ',
    'drops, her favorite fruit is bananas, and she also enjoys pizza. When Ruby took Max to Katie\'s Diner to get pizza, they encountered ',
    'her craving pizza there, which allowed Ruby to finally meet her, dance with her, and get her autograph.\n',
    'Probably based on the legendary ballerina Anna Pavlova, Bunny Pavlova is most likely a principal dancer at a prestigious ballet company ',
    'located in a big city. The only big city known in the series is Bunningham, based on real world London. As London has the Royal Ballet, ',
    'Bunningham must have a company called the Royal Ballet of Bunningham, which is probably as prestigious as London\'s Royal Ballet. ',
    'Therefore, Bunny Pavlova must be a principal dancer at the Royal Ballet of Bunningham, where she became famous.'
  )
),
(
  'HMS The Queen',
  concat(
    'Her Majesty The Queen is the Monarch of the Royal Bunny Kingdom that Max and Ruby live in. Ruby has dreamed of seeing Her Majesty when ',
    'she went on a trip to Bunningham (based on real world London) with Max and Grandma. Her Majesty was briefly seen in \"Ruby\'s Real Tea ',
    'Party\" when Her Majesty caught Max\'s wind-up froggy and Ruby asked to give it back to him. Realizing that she is The Queen, Max and ',
    'Ruby bow and curtsy to Her Majesty, respectively, and appropriately greeted Her Majesty with \"Your Majesty\". After giving Max his ',
    'froggy back, Her Majesty giggled and waved back at them. Probably based on the real world Queen Elizabeth II, Her Majesty lives ',
    'primarily in Bunningham Palace (based on real world Buckingham Palace) in Bunningham.'
  )
),
(
  'Aunt Claire',
  concat(
    'Aunt Claire is Max and Ruby\'s aunt who lives in Bunnyville, a town that is quite far from East Bunnyhop. She has white fur. She is ',
    'Uncle Nate\'s wife. Max, Ruby, and Grandma took an overnight train to Bunnyville to visit her and Uncle Nate.'
  )
),
(
  'Uncle Nate',
  concat(
    'Uncle Nate is Max and Ruby\'s uncle who lives in Bunnyville, a town that is quite far away from East Bunnyhop. He has gray fur and a ',
    'mustache. He is Aunt Claire\'s husband. Max, Ruby, and Grandma took an overnight train to Bunnyville to visit him and Aunt Claire.'
  )
),
(
  'Santa Claus',
  concat(
    'Santa Claus is the being that spreads cheer during Christmas by delivering toys to children in their homes, under their Christmas trees ',
    'and in their stockings, on the night of Christmas Eve while they sleep. In this series, he is a bunny with white fur and a mustache, ',
    'along with his signature beard and red and white Santa outfit. His favorite beverage is chocolate milk, because it\'s different from ',
    'the regular milk that most children leave him. He also enjoys the cookies that the children leave him as well.\n',
    'One Christmas Eve, Santa encountered Max, who was awake and witnessed him leaving gifts under his and Ruby\'s tree and in their ',
    'stockings, drinking the chocolate milk, and eating the cookies that Ruby left. He gave Max his Santa hat and told him that he should ',
    'be in bed for the night and that no one should ever see him.\n',
    '\"Why?\"\n',
    '\"Because.\"'
  )
),
(
  'Easter Bunny',
  concat(
    'Easter Bunny is the bunny that quietly and discreetly sneaks around and leaves colorful Easter eggs for the children to hunt for during ',
    'Easter. Whenever he hears children coming, he will hide. In this series, he has golden-orange fur, long legs like those of a kangaroo, ',
    'and no pants. At Max and Ruby\'s house, he leaves a chocolate chicken in addition to the eggs. After Ruby finds all the eggs in their ',
    'yard but Max eats the chocolate chicken by himself, he leaves a chocolate goose, which Max also ends up eating because he was seen ',
    'breaking off the goose\'s tail.'
  )
),
(
  'Conductor',
  concat(
    'Conductor is the conductor on the train that Max, Ruby, and Grandma take to go to Bunnyville to visit Aunt Claire and Uncle Nate. He ',
    'has grey fur and a lean figure, typical of a professional train conductor. He gives Max his hat as appreciation for helping out fellow ',
    'passengers on the train.'
  )
),
(
  'Mail Bunny',
  concat(
    'Mail Bunny is an adult bunny who works for East Bunnyhop\'s postal service. She has orange-tan fur. She delivered Max\'s valentine, a ',
    'cherry slime dribbler in an envelope, with Max in person to Grandma on Valentine\'s Day.'
  )
),
(
  'Bus Driver',
  concat(
    'Bus Driver is an adult bunny who drives the public bus in East Bunnyhop. He has white fur and a mustache. Max and Ruby typically take ',
    'his bus to go to the town center or the department store. In \"Max\'s Dragon Shirt\" the bus driver, without his mustache, also ran ',
    'the ice cream stand in the department store, where he offered Max a free sample of MunchaBunchaCrunch Ice Cream, which got a green ',
    'dragon shirt dirty, causing Ruby to have no choice but to buy it for $5. Afterward, she had \"no money left\".'
  )
),
(
  'Clerk',
  concat(
    'Clerk is an employee in the department store. In \"Max\'s Dragon Shirt\", she sold dragon shirts and charged Ruby $5 for a dragon shirt ',
    'that Max got dirty with MunchaBunchaCrunch Ice Cream. In \"Engineer Max\", she ran the button and bow department, where she sold a big ',
    'red bow to Ruby for Grandma\'s surprise for Max.'
  )
);

select * from bunny_character;
