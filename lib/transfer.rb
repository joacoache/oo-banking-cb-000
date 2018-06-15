class Transfer
  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?
  end

  def execute_transaction
  end

  def reverse_transfer
  end


end
