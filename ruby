def boy_phase_one
  puts "Welcome to the realm of itsy-bitsy Spider, I'm so glad you have joined us tonight."
  puts "You see you are a prince, and since you haven't known it you haven't prepared at all."
  puts "I'm sure you know what that means."
  puts "We must give you a makeover."
  puts "Which color palette would you prefer? (Pink, Purple, or Magenta)"

  print "> "
  color = $stdin.gets.chomp

	if color == "Pink" || color == "pink"
      puts "Great!, I have the perfect suit for you. It is really fluffy and uncomfortable :-). 
      	Let's move on to Phase Two"
      girl_phase_one
    elsif color == "Purple" || color == "purple"
      puts <<-PARAGRAPH
      	Did you know that is my favorite color too? I don't think purple will accentuate your skin-tone
      	and eye color though. Here is a pastel green outfit instead. 
      PARAGRAPH
      puts "Now that we have that settle we can start Phase Two."
      girl_phase_one
    elsif color == "Magenta" || color == "magenta"
      puts <<-PARAGRAPH
      	Oh Magenta, such a great color! Which of these three dresses would you like to wear? Yes I 
      	said dresses. That is what real princes where. If you don't like it, you can go back to your dull
      	life. Will a dress be ok?
      PARAGRAPH
      if dress != "yes"
      	wake("Well, that was interesting!")
      else
      	girl_phase_one
      end
    else
    	puts "I'm sorry that is not an option."
    	wake("#{color} must not exist in that world")
	end
end

def girl_phase_one
  puts "I am so glad you made it!"
  puts "We are in terrible trouble!"
  puts "The citizens have been locked in a tower, and it is guarded by a dragon."
  puts "We need you to defeat it and save the kingdom. Would you prefer Pie or Puppies?"
  print "> "
  choice = $stdin.gets.chomp

    if choice == "Pie"
      puts "I LOVE Pie! I hope this works!"
      puts "Apparently the dragon loves pie as well! Yay, you have a new pet!"
      astronaut
    elsif choice == "Puppies"
      puts "The dragon falls in love with the adorable Husky puppies you brought along."
      puts "We now have a new problem. Your puppies have a second mother."
      astronaut
    else
      puts "I have no idea if that will work, let's try it."
      number = rand(1..50)
      if number % 2 == 0
      	puts "Yay, it worked!"
      	astronaut
      else
      	puts "Sadness, :'( It failed, we still need to win over the dragon."
      	astronaut
      end
    end
end

def neither_phase_one
  puts "You are awesome!"
  puts "You win at life."
  astronaut
end

def astronaut
	puts "We are in a space ship in space, but the trajectory has yet to be set!"
	puts "What should we do? Fly to the moon, Play with Pluto, or Make it to Mars?"

	print "> "
	location = $stdin.gets.chomp

	if location.include? "moon"
    	puts "You have reached the moon, you find it out it actually is just made of cheese"
    	wake ("You wake up with a completely satisfied tummy.")
 	elsif location.include? "Pluto"
    	puts "Pluto is the puppy you brought on the ship with you."
    	puts "I recommend you choose another option so you don't fly off into the nethers of the unknown world"
    	astronaut
  	elsif location.include? "Mars"
  		puts "You land only to find perfect sandcastle building sand!"
  		puts "What are you going to build first? (we happen to have the plans for a unicorn, a merman, or a castle in the ship."

  		print "> "
  		sandthing = $stdin.gets.chomp

  		if sandthing == "unicorn"
  			puts "You did such an amazing job. It looks so real."
  			wake(" You wake up startled by the feeling of flying on a unicorn.")
  		elsif sandthing == "merman"
  			puts "He's so beautiful, do you think he would like to be my best friend?... no offense."
  			wake (" He tried to give you a hug, but the sliminess of his scales was really unsettling.")
  		elsif sandthing == "castle"
  			wake (" You wake up feeling like royalty.")
  		else
  			puts "Not quite there yet, I guess we shouldn't go to Mars."
  			astronaut
  		end
  	end
end

def wake(why)
  puts why, "Good job!"
  exit(0)
end

def start
	sleeping = 0
	while sleeping != "yes" do
		puts "Are you sleeping? "
		sleeping = gets.chomp
	end

	puts "I'm so glad you are sleeping. We are going to drift off to dreamland and explore your imagination!"
	puts "Are you a boy, a girl, or neither?"
	puts "> "
	gender = $stdin.gets.chomp

	if gender == "boy"
		boy_phase_one
	elsif gender == "girl"
		girl_phase_one
	elsif gender == "neither"
		neither_phase_one
	else 
		wake("I didn't intend to shock you into waking up so soon!")
	end
end

start	
