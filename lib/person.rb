# your code goes here
# Attr_writer gives us the ability to update the bank_account= method (name= (argument))
# Attr- Reader: allows us to access the instance variable form outside the class (name)
#Attr-Writer updates attribute, Reader accesses

require "pry"
class Person

    attr_reader :name, :happiness, :hygiene 
    attr_accessor :bank_account
    def initialize(name)
        @name = name 
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8 
    end  
    
    #Because we have additional conditions needed for happiness,
    #We need to establish a new getter method.
    def happiness=(new_happiness_value)
        if new_happiness_value>= 10
            @happiness = 10
        elsif new_happiness_value <=0
            @happiness = 0
        else
             @happiness = new_happiness_value
        end
    end


def hygiene=(new_hygiene_value)
    if new_hygiene_value>= 10
        @hygiene = 10
    elsif new_hygiene_value <=0
        @hygiene = 0
    else
         @hygiene = new_hygiene_value
    end
end 

def happy?
self.happiness > 7
end

def clean?
    self.hygiene > 7 
end 

def get_paid (salary)
    self.bank_account = self.bank_account + salary
    "all about the benjamins"
end
def take_bath 
    self.hygiene = self.hygiene + 4 
    "♪ Rub-a-dub just relaxing in the tub ♫"
end 
def work_out 
    self.happiness = self.happiness + 2 
    self.hygiene = self.hygiene - 3 
    "♪ another one bites the dust ♫"
end
def call_friend (friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
p "Hi #{friend.name}! It's #{self.name}. How are you?"
end 
def start_conversation (friend, topic)
if topic == 'politics'
    friend.happiness = friend.happiness - 2 
    self.happiness = self.happiness - 2
    'blah blah partisan blah lobbyist' 
elsif topic == 'weather'
    friend.happiness = friend.happiness + 1 
    self.happiness = self.happiness + 1 
    'blah blah sun blah rain'
else 
    topic =! 'weather' | 'politics'
    'blah blah blah blah blah'
end
end
end
#binding.pry

#TODO: keep track of all people being created