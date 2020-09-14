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
  'Max is a three-year-old bunny who is Ruby\'s little brother. He has white fur and wears blue overalls featuring a prominent front ' +
  'pocket and a striped shirt. He is just about as cute and mischievous as any real-life pet bunny can be, plus he is determined to get ' +
  'what he wants every time, even if it means messing up Ruby\'s plans for the day.\n' +
  'Max typically speaks only one word or phrase at a time, and the word or phrase that he does say throughout an episode is the theme of ' +
  'what he does in that episode. For example, when he says \"Fire Truck\", he wants to play with his toy fire truck, even if he can\'t ' +
  'find it. Sometimes, in an episode, he may say words or phrases that are different from the one he says primarily in that episode.\n' +
  ''
), (
  'Ruby',
  ''
);
