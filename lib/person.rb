# your code goes here
# @bank_account` with an initial value of 25
#   - `@happiness` with an initial value of 8
#   - `@hygiene` with an initial value of 8
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =8
    end
    def happiness=(value)
        @happiness = if value > 10 
                          10
                      
                     elsif value <0
                        0
                      else 
                            value
                       end
    end 
    
    def hygiene=(value)
        @hygiene = if value > 10
                      10
                   elsif value < 0
                    0
                   else 
                    value
                   end

    end
    
    def happy?
        if self.happiness > 7
            return true 
        
        else
           return false 
        end
    end
    
    def clean?
        if self.hygiene > 7 
            return true
        else 
            return false
        end 
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"

    end
    
    def take_bath
        self.hygiene += 4
         "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    
    def work_out
        self.hygiene -= 3
       
        self.happiness += 2
        "♪ another one bites the dust ♫"
         
    end

    def call_friend(instance)
    self.happiness += 3
    instance.happiness +=3
    "Hi #{instance.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(buddy,topic)
       if topic == "politics"
         buddy.happiness -= 2
         self.happiness -= 2
        'blah blah partisan blah lobbyist'
       elsif topic == "weather"
        buddy.happiness += 1
        self.happiness += 1
        'blah blah sun blah rain'
       else
        'blah blah blah blah blah'
       end
    
       
        
        
       
        
    end
 
 
  end

  person = Person.new("john")
  
#   binding.pry
#   0
#   person.happiness 
#   person.hygiene 
  