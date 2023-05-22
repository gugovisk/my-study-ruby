# Ruby program to understand the concept of 
# Modifying attributes
class Language
    def initialize(language_name, topic_name)
          @language_name = language_name
          @topic_name = topic_name
      end
    
    # Defining Method
      def return_name
          return @language_name
      end
      def return_topic
          return @topic_name
      end
      def modify_topic(value)
          @topic_name = value
      end
  end
    
  # Creating object
  object = Language.new('Ruby','method') 
  puts 'Language name for object: '+object.return_name
  puts 'Topic name is '+object.return_topic
    
  # Modifying attribute
  object.modify_topic('string')
  puts 'New Topic Name is '+object.return_topic