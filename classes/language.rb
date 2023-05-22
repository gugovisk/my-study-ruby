# Ruby program to understand the concept of 
# Class Variables
class Language
    $reader = 'ABCD'
  
    # Creating class variable
    @@count = 0
    def initialize(language_name, topic_name)
        @language_name = language_name
        @topic_name = topic_name
        @@count  += 1
    end
  
    # Defining method
    def return_name
        @language_name
    end
    def return_topic
        @topic_name
    end
      
    # Returning class variable
    def  return_count
        @@count
    end
end
  
# Creating object
object1 = Language.new('Ruby', 'method') 
object2 = Language.new('Scala', 'string')
puts 'Language name for object1: '+object1.return_name
puts 'Topic name for object1: '+object1.return_topic
  
puts 'Language name for object2: '+object2.return_name
puts 'Topic name for object2: '+object2.return_topic
  
puts 'The reader is '+ $reader 
  
puts 'The number of objects created is ' + object1.return_count.to_s
puts 'The number of objects created is ' + object2.return_count.to_s