class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name=name
    @balance=1000
    @status="open"
  end

  def deposit(amount)
    #@balance+=amount or
    selfe.balance+=amount
  end

  def display_balance
    "You're balance is $#{self.balance}."
  end

end
