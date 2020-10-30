class Transfer
  # your code here
    attr_reader :sender, :receiver
    attr_accessor :balance, :status, :amount

    @@trans = []

    def initialize(sender, receiver, status="pending", amount)
        @sender = sender
        @receiver = receiver
        @status = status
        @amount = amount
        @@trans << self
    end

    def valid?
      sender.valid? && receiver.valid?
    end

    def execute_transaction
      if sender.balance > amount && self.status == "pending"
        sender.balance -= amount
      end
    end
end
 