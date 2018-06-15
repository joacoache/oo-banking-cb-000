class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    execute_only_once = true
    if @sender.balance >= @amount && execute_only_once == true
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      execute_only_once = false
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end


  def reverse_transfer
  end


end
