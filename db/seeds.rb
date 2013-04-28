# encoding: UTF-8

rafi = Reader.create(
  first_name: "Rafi",
  last_name: "Khan",
  password: "rafi",
  about: "Student at Yale University",
  email: "rafi.fa.khan@gmail.com",
  curator: true
)

kenta = Reader.create(
  first_name: "Kenta",
  last_name: "Koga",
  password: "kenta",
  about: "Student at Yale University",
  email: "kentamagic@gmail.com",
  curator: true
)

nyker = Article.create(
  title: "DRAFT NO. 4",
  author: "JOHN MCPHEE",
  text: "Block. It puts some writers down for months. It puts some writers down for life. A not always brief or minor form of it mutes all writers from the outset of every day. “Dear Joel . . .” This is just a random sample from letters written to former students in response to their howling cries as they suffer the masochistic self-inflicted paralysis of a writer’s normal routine. “Dear Joel . . .” This Joel will win huge awards and write countless books and a nationally syndicated column, but at the time of this letter he has just been finding out that to cross the electric fence from the actual world to the writing world requires at least as much invention as the writing itself. “Dear Joel: You are writing, say, about a grizzly bear. No words are forthcoming. For six, seven, ten hours no words have been forthcoming. You are blocked, frustrated, in despair. You are nowhere, and that’s where you’ve been getting. What do you do? You write, ‘Dear Mother.’ And then you tell your mother about the block, the frustration, the ineptitude, the despair. You insist that you are not cut out to do this kind of work. You whine. You whimper. You outline your problem, and you mention that the bear has a fifty-five-inch waist and a neck more than thirty inches around but could run nose-to-nose with Secretariat. You say the bear prefers to lie down and rest. The bear rests fourteen hours a day. And you go on like that as long as you can. And then you go back and delete the ‘Dear Mother’ and all the whimpering and whining, and just keep the bear.”

You could be Joel, even if your name is Jenny. Or Julie, Jillian, Jim, Jane, Joe. You are working on a first draft and small wonder you’re unhappy. If you lack confidence in setting one word after another and sense that you are stuck in a place from which you will never be set free, if you feel sure that you will never make it and were not cut out to do this, if your prose seems stillborn and you completely lack confidence, you must be a writer. If you say you see things differently and describe your efforts positively, if you tell people that you “just love to write,” you may be delusional. How could anyone ever know that something is good before it exists? And unless you can identify what is not succeeding—unless you can see those dark clunky spots that are giving you such a low opinion of your prose as it develops—how are you going to be able to tone it up and make it work?

The idea of writing “Dear Mother” and later snipping off the salutation popped into my head forty-one years ago while I was participating in a panel of writers at the Y in Princeton. Jenny was the only member of my family there. She was ten. The bear got a big laugh, but cheerlessly I also served up the masochism and the self-inflicted paralysis, causing Jenny to tell me afterward that I was not sketching a complete picture. . . .",
  url: "http://www.newyorker.com/reporting/2013/04/29/130429fa_fact_mcphee"
)

nyker.curators << kenta

