# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
  
    def initialize(name, bank_account = 0, happiness = 5, hygiene = 5)
      @name = name
      @bank_account = bank_account
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(value)
      @bank_account = value
    end
  
    def happiness=(value)
      @happiness = value.clamp(0, 10)
    end
  
    def hygiene=(value)
      @hygiene = value.clamp(0, 10)
    end
  
    def clean?
      hygiene > 7
    end
  
    def happy?
      happiness > 7
    end
  
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(friend, topic)
      case topic
      when "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end

  person1 = Person.new("Stella")
person2 = Person.new("Felix")

puts person1.clean?        
puts person1.happy?         

person1.get_paid(1000)
puts person1.bank_account   
puts person1.get_paid(500) 

puts person1.take_bath      

puts person1.work_out       
puts person1.happiness      
puts person1.hygiene        

puts person1.call_friend(person2)  
puts person1.happiness              
puts person2.happiness              

puts person1.start_conversation(person2, "politics")   
puts person1.happiness                                
puts person2.happiness                                

puts person1.start_conversation(person2, "weather")    
puts person1.happiness                                 
puts person2.happiness                                 

puts person1.start_conversation(person2, "music")     
puts person1.happiness                                 
puts person2.happiness                                 