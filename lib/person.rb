class Person
    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(num)
        @happiness = num
       self.happiness = 0 if self.happiness < 0
       self.happiness = 10 if self.happiness > 10
    end

    def hygiene=(num)
        @hygiene = num
       self.hygiene = 0 if self.hygiene < 0
       self.hygiene = 10 if self.hygiene > 10
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
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

    def call_friend(person)
        [self, person].each{|people| people.happiness += 3}
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            [self, person].each{|people| people.happiness -= 2}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, person].each{|people| people.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
