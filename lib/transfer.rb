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

  def execute_transaction
    if @sender.balance>@amount && @status=="pending"
      @sender.balance-=@amount
      @receiver.balance+=@amount
      @status="complete"
    else
      @status="rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if condition

    end @status=="complete"
    @sender.balance+=@amount
    @receiver.balance-=@amount
    @status="reversed"
  end
end
