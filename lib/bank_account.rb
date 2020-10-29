class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    @@account = []

    def initialize(name, status="open")
        @name = name
        @balance = 1000
        @status = status
        @@account << self
    end

    def self.name
        @name
    end
    
    def self.balance
        @balance
    end

    def self.status
        @status
        
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def deposit(deposit_amount)
        self.balance += deposit_amount
    end

    def valid?
        balance > 0 && status == "open"   
    end
    
    def close_account
        self.status = "closed"
    end

      

end
