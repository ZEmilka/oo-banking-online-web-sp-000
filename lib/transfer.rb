class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender=sender
    @amount=amount
    @receiver=receiver
    @status="pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end




end
