class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
      @prompt = prompt
      @answer = answer
  end
end

p1 = "\n1. A bat and a ball cost $1.10 in total. The bat costs $1 more than the ball. How much does the ball cost?\n(a) $0.05\n(b) $0.10\n(c) I don't know"

p2 = "\n2. If it takes 5 machines 5 minutes to make 5 widgets,\nhow long would it take 100 machines to make 100 widgets?\n(a) 100 minutes\n(b) 20 minutes\n(c) 5 minutes"

p3 = "\n3. In a lake, there is a patch of lily pads.\nEvery day, the patch doubles in size.\nIf it takes 48 days for the patch to cover the entire lake,\nhow long would it take for the patch to cover half of the lake?\n(a) 24\n(b) 47\n(c) 7"

p4 ="\n4. bat = ?\n(a) stick\n(b) axe\n(c) stone"

p5 ="\n5. kab = ?\n(a) hand\n(b) juice\n(c) fruit"

p6 ="\n6. si? = ?\n(a) hand\n(b) axe\n(c) wood"

p7 ="\nI see myself as someone who has an active imagination.\nDo you\n(a) neither agree nor disagree?\n(b) agree?\n(c) disagree?"

p8 ="\nI see myself as someone who can readily find fault in others.\nDo you\n(a) neither agree nor disagree?\n(b) agree?\n(c) disagree?"

p9 ="\nI see myself as someone who is the life and soul of the party.\nDo you\n(a) neither agree nor disagree?\n(b) agree?\n(c) disagree?"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "b")
]

questions2 = [
  Question.new(p4, "b"),
  Question.new(p5, "b"),
  Question.new(p6, "c")

]

questions3 = [
  Question.new(p7, "b"),
  Question.new(p8, "a"),
  Question.new(p9, "b")
]

def welcome
  puts "\e[H\e[2J"
  puts "Welcome to the world's shortest Language Aptitude test!\n\nEnter your name to begin:"
  @name = gets.chomp().to_s
  puts "\e[H\e[2J"
  puts ("Welcome, " + @name + ", let's start your test.")

end

def run_test(questions)
    answer = ""
    @score = 0
    for question in questions
      puts question.prompt
      answer = gets.chomp().to_s
      if answer == question.answer
        @score += 1
      end
  end
    puts "\e[H\e[2J"
    puts ("\nYou got " + @score.to_s + "/" + questions.length().to_s + ".")
      if @score >= 2
          puts "You're pretty smart, " + @name + "!\nNow get ready for part 2."
          sleep(5)
      else puts "You need to brush up on your puzzle-solving skills, " + @name + "...\nNever mind, get ready for part 2."
        sleep(5)
        end

puts "\n\nNow, let's test your vocabulary skills.\n\nYou have 20 seconds to study the following translations\nand then answer the questions as they appear.\n\nMaya -- English\nc?on    gun\nsi?     wood\nk?ab    hand\nkab     juice\nbat     axe\npal     son"
sleep(20)
end

def run_test2(questions2)
  puts "\e[H\e[2J"
    answer = ""
    @score2 = 0
    for question2 in questions2
      puts question2.prompt
      answer = gets.chomp().to_s
      if answer == question2.answer
        @score2 += 1
      end
    end
    puts "\e[H\e[2J"
    puts ("\nYou got " + @score2.to_s + "/" + questions2.length().to_s)
      if @score2 >= 2
        puts "\nYou're doing well so far, " + @name + "! Don't get cocky. Here comes part 3."
        sleep(5)
      else puts "\nVocabulary isn't your strong suit, " + @name + ".\nLet's look at your personality instead."
        sleep(5)
      end
end

def run_test3(questions3)
puts "\e[H\e[2J"
  answer = ""
  @score3 = 0
  for question in questions3
    puts question.prompt
    answer = gets.chomp().to_s
    if answer == question.answer
      @score3 += 1
  end
end
puts "\e[H\e[2J"
puts ("\nYou got " + @score3.to_s + "/" + questions3.length().to_s + ".")
  if @score3 >= 2
    puts "You've got the right mindset for languages, " + @name + ".\nNow, let's see your overall result."
    sleep(5)
  else puts "You might not be a natural linguist, " + @name + ", but let's see your overall result."
      sleep(5)
      puts "\e[H\e[2J"
  end
end

def final_score
puts "\e[H\e[2J"
  total = @score + @score2 + @score
  if total <=3
    puts "Spoken languages aren't really your thing.\n\nBut, if you are truly motivated to learn a language, anyone can do it!\n\nOhe of the easiest way for your to learn a new language would be to fall in love with a foreigner."
  elsif total == 4 or 5 or 6
    puts "You have the makings of a true linguist.\n\nIf you want to learn another language, find a culture and place that attracts you and motivates you."
  else puts "You have a natural talent for languages.\nHowever, motivation is truly the key to learning a new language.\n\nIf you want to learn another language, find a culture and place that attracts you and motivates you."
  end
end

welcome
run_test(questions)
run_test2(questions2)
run_test3(questions3)
final_score
