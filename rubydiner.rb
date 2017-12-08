#  You get one entree and two side choices at regular cost.
#- show them the entire menu (print out)
#- waitress suggests a chef’s special, which is a random mix of 1 entree and 2 side choices
#- User selects an entree.
#- “Waitress” makes a comment based on their selection (you ordered this? That’s gross)
#- comment can either be a comparison of the two items, or random comment pulled from a comment vault.
#- Tell them the price
#- repeat the above options for side choices (suggestion and a price, don’t repeat chef suggestion)
#- total up the cost
#Have a breakfast, lunch and dinner menu.  Breakfast has different items, lunch and dinner have the same items but are different prices.
#BONUS: Allow for item customization (how items are prepared, decide addtional cost implications)
#EXTRA BONUS: 3D print out actual food and eat it.
#Add Comment Collapse
puts "Welcome to the ruby diner! You get one item and two sides. Heres the menu!!"

breakfast = {breakfast: {pancakes: 10, eggs:  12, omlet:  10, waffle:  15, scones:  2}}
breakfast_sides = {sides: {bacon:  3, hashbrown:  2, sausage:  2}}
lunch = {entree: {steak:  10, chicken:  8, pork:  9}}
sides = {sides: {fries:  6, mash:  2, poutine:  5, salad:  6, veggies:  4}}
dinner = {entree: {steak:  20, chicken: 16, pork:  18}}
dinner_sides = {sides: {fries:  12, mash:  4, poutine:  10, salad:  12, veggies:  8}}

time = rand(3)

def sassysoup

 answer = false
  puts "Did you want some soup?"
  
  until answer == true 

   answer2 = gets.chomp!.downcase
   if answer2 == "yes" || answer2 == "fine" || answer2 == "okay" || answer2 == "ill try it" || answer2 == "sure" || answer2 == "probably" || answer2 == "i guess"
     puts "We are all out of soup! "
     answer = true
   else
      soup_suggestion = ["Are you sure? The soup is delicious.", "Somebody’s got to have the soup!", "The chef’s souped up now!", "Come on, the soup is really good.", "You gotta try some soup, yes or no?"]
     puts "#{soup_suggestion.sample}"
   end   
  end

end

  def dinermenu menu, sides, timemod, timename

  
 menu.each do |x,y| puts "\n\n--#{timename} Menu--\n\n"
      y.each {|x,y| puts "#{x.to_s} is $#{y*timemod}"} 
    end
    sides.each do |x,y| puts "\n\n--Sides--\n\n"
      y.each {|x,y| puts "#{x.to_s} is $#{y*timemod}"} 
    end
    
  end

def random_sug valuelist, valuelist2, valuelist3

randomsug = valuelist.to_a.sample.first.to_s
randomsug1 = valuelist2.to_a.sample.first.to_s
randomsug2 = valuelist3.to_a.sample.first.to_s 

puts "Did you want to try our #{randomsug} with #{randomsug1} and #{randomsug2}"
reply = gets.chomp!

  if reply == 'yes' || reply == 'ya' || reply == 'sure' || reply == "totally" || reply == "grr"
    value = valuelist[randomsug.to_sym]
       
    value2 = valuelist2[randomsug1.to_sym]        
  
    value3 = valuelist3[randomsug2.to_sym]
    

     return  value + value2 + value3

  else

    return 0

  end



end 

def waitress_comment answer, answer2, answer3, total, value
  p "Are you sure you want the #{answer.to_s}?"
disgust = gets.chomp!

  if disgust == 'yes' || disgust == 'ya' || disgust == 'sure'
    opinion =  [ "THATS DISGUSTING!! YOU PIG!!!!!!", "What a wonderful choice. I’ll be back with your food.", "That’s my favoite. Be right back honey.", "Go sit in the corner and think about what you just ordered", "Awwwww, I think i love you now", "Damn son, that shit is goooood eatin’s", "WE GOT A FLABBY BIKERACK WITH SANDLES!" ]

   puts "You want a #{answer.to_s} with #{answer2.to_s} and #{answer3.to_s}? #{opinion.sample}"
   puts "Did you want to leave a tip?"
   reply2 = gets.chomp!
   
   if reply2 == 'yes' || reply2 == 'ya' || reply2 == 'sure'
    return puts "Alright your new total is $#{'%.2f'%(total * 1.15)}. Itll be out shortly."
   end 

   puts "Your total is $#{total}. Enjoy."

  else
  
   puts "Alright your total is $#{total-value} minus the entree. Food will be out shortly."
 end
end


def adding_items entreetime, sidetime, timely, timely2  
 valuelist3 = sidetime[timely2]
 valuelist2 = sidetime[timely2]
 valuelist = entreetime[timely]
 random_suggestion = random_sug valuelist, valuelist2, valuelist3
 
 if random_suggestion.zero?

       return   "Okay your total is $#{(random_sug valuelist, valuelist2, valuelist3)}. Itll be out shortly."
 end
        

 puts "Whats your first entree"
 answer = gets.chomp!
 puts "And what is your first side?"
 answer2 = gets.chomp!
 puts "And your second?"
 answer3 = gets.chomp!

answer = answer.to_sym
answer2 = answer2.to_sym
answer3 = answer3.to_sym

       
value = valuelist[answer]
       
value2 = valuelist2[answer2]        
  
value3 = valuelist3[answer3] 


total = value + value2 + value3

waitress_comment answer, answer2, answer3, total, value

  end 




  


case time

when 0  
  puts "Its breakfast time"
  
  dinermenu breakfast, breakfast_sides, 1, "Breakfast"
  
  adding_items breakfast, breakfast_sides, :breakfast, :sides
when 1  
  puts "Its lunch time"
  
  dinermenu lunch, sides , 1, "Lunch"
  sassysoup
  
  adding_items dinner, sides, :entree, :sides
      
when 2 
 puts "Its dinner time"
 
  dinermenu lunch, sides, 2, "Dinner"
  sassysoup
  
  adding_items lunch, dinner_sides, :entree, :sides 
  
end

 

         

