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
  episode_no integer not null,
  little_brothers bit not null,
  max_word varchar(255),
  other_max_words text,
  plot text,
  season integer not null,
  segment char(1),
  primary key (id)
) engine=InnoDB;

create table appearance (
  character_id integer not null,
  episode_id integer not null,
  foreign key (character_id) references bunny_character (id),
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
    'find it. Sometimes, in an episode, he may say words or phrases that are different from the one he says primarily in that episode.\n',
    'Max enjoys playing with his toys, playing in the mud and getting dirty, making earthworm cakes, playing with Froggy, listening to the ',
    'radio show of his favorite super hero Super Bunny (based on Superman) and playing Super Bunny, eating candy and other delicious treats, ',
    'hiding slime dribblers and red-hot marshmallow squirters, dressing like a vampire on Halloween, and pulling off other kinds of bunny ',
    'mischief. His favorite toys include wind-up toys like his flipping chicks and Yappy Puppy, robots like his Ear-splitter Space Cadet, ',
    'remote-controlled toys like his Search-and-rescue Emergency Helicopter and Jellyball-spitting Spider, action figures like Rabbit ',
    'Racer, his red rubber elephant, his Super Bunny cape, and a life-size toy train that Grandma and Ruby got for him as a surprise. He ',
    'also refuses to go to sleep if he\'s not wearing his favorite Super Bunny pajamas. He despises being quiet when he wants to play with ',
    'loud toys, dressing up formally (he never liked that sailor suit), tea parties, and being told \"no\". He also has a toy lobster which ',
    'can go on and on and antagonize him. Despite that the lobster acts like his enemy, he still keeps it.'
  )
), (
  'Ruby',
  concat(
    'Ruby is a seven-year-old bunny who is Max\'s big sister. She has white fur. In seasons 1-2, she wears a yellow dress with a polka-dot ',
    'design of green and orange flowers and purple sleeves. In seasons 3-5, she wears a pink dress with a trio of daisies on her left side ',
    'and light pink sleeves. She is patient, well-behaved, organized, and responsible, but she can also be a bit closed-minded and somewhat ',
    'of a perfectionist. No matter how mischievous Max can be, she always manages to keep her patience with him, but that\'s because she has ',
    'to look over him as his big sister. Sometimes, when Max does something, she will say \"Little brothers...\" with a sigh.\n',
    'Ruby is a member of the local Bunny Scouts of her hometown East Bunnyhop, where she is in a troop with her best friends, Louise, ',
    'Valerie, and Martha. Some episodes will focus on her trying to accomplish something in order to earn a Bunny Scout badge or for ',
    'personal reasons. In those episodes, she wouldn\'t have accomplished her goal without Max interfering in a surprising way.\n',
    'Ruby enjoys hanging out with her best friends, playing with her dollies, making perfect greeting cards for special occasions, planning ',
    'perfect parties for her friends, making perfect gifts for Grandma, having tea parties, reading Bunny Drew novels, her favorite novel ',
    'series about her favorite detective, channeling her inner Bunny Drew to find her missing dollies, baking, fashion, beauty and makeup, ',
    'ballet, and having a crush on Roger Piazza. Her absolute favorite dolly without a doubt is Curly Shirley. She also has other favorite ',
    'dollies like Rapunzel, Tooth Fairy, and Sally Swims-a-Lot. Her other favorite toys include Can\'t-sit-up Slug and Walkie-Talkie Bear.',
    'She is also the self-proclaimed biggest fan of the famous ballerina Bunny Pavlova, whom she idolizes and has an autograph of. She ',
    'despises Max being too loud and dirty and messing with her belongings without her permission, things not going the way she planned, ',
    'and anyone or anything who tries to harm Max.'
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
    'that\'s because of her grandbunnies.'
  )
),
(
  'Louise',
  concat(
    'Louise is a seven-year-old bunny who is Ruby\'s best friend. She has auburn fur and wears a dress with a plaid pattern of green, blue, ',
    'and white, and yellow sleeves. She and Ruby frequently hang out and play together. They share much of the same interests, including a ',
    'crush on Roger Piazza. Her personality is similar to that of Ruby. Plus, she has a little cousin named Morris who is like a little ',
    'brother to her, like how Max is Ruby\'s little brother. Like Ruby, Louise is also a member of the local Bunny Scouts of East Bunnyhop.'
  )
);

select * from bunny_character;
