class QuoteMailer < ApplicationMailer
  def weekly_quote

    @random_subject = random_subject.sample
    @quote = random_quote.sample
    mail(from: 'yoursupergreatgf@gmail.com',
         to: 'devan.moylan@backyardlion.com',
         subject: @random_subject)
  end

  def random_quote
    ["I used to think that the brain was the most wonderful organ in my body. Then I realized who was telling me this.", "We live in a Newtonian world of Einsteinian physics ruled by Frankenstein logic.", "If at first you don't succeed, failure may be your style.",
    "The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking", "I want to be like water. I want to slip through fingers, but hold up a ship.",
    "Being able to depend on someone doesn't mean you're dependent on them.", "If something is important enough, even if the odds are against you, you should still do it.",
    "Persistence is very important. You should not give up unless you are forced to give up.", "If you go back a few hundred years, what we take for granted today would seem like magic – being able to talk to people over long distances, to transmit images, flying, accessing vast amounts of data like an oracle. These are all things that would have been considered magic a few hundred years ago.",
    "Being an Entrepreneur is like eating glass and staring into the abyss of death", "The first step is to establish that something is possible; then probability will occur.",
    "Remember when you took that head of lettuce and bell pepper from the breakfast buffet at the Disney cruise... that was obviously there for decoration... and then the waitress came and brought you shredded lettuce and peppers?",
    "Walking on the beach in Florida.. you talking about giving the birds a shit ton of caffeine", "Waking up and going on a ruck-sack carry before the sun came up", "Almost missing the boat in the Bahamas", "Having sex on the balcony and then the people coming out....",
    "Me thinking you thought fish could fly up out of the river and die on the cement", "Cats ---> Lions, Lions <--- Cats", "Just tell me the story about getting high in Wal-mart again.  That always makes me laugh",
    "Playing catch in the backyard :) becoming lions!", "I'm sorry about the toothpaste", "This is my second similar direct experience.....", "Do you play rugby or something man?", "Can I get to that?", "Will you make me a cashew butter, sauerkraut sandwich please?",
    "You make me smile", "You make me laugh"]
  end

  def random_subject
    ["Well hey there", "DEVAN!!!  IT'S SUPER IMPORTANT!!!!!", "You're cute", "Stop farting", "I started a joke", "Did you know?",
     "Are you sick of these yet?", "Can we get ice cream?", "We should have sex", "Hello hello hello hello hello", "I hope that when you're reading this it's no longer cold",
    "You're the best", "Think about the last time I made you mad.  I'm sorry.", "I'm bored", "It's 2:30AM.  We need to sleep", "Hi", "Hey", "What's up"]
  end

end
