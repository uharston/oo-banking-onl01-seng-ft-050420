require 'pry'

class Transfer

  attr_reader :sender, :receiver
  attr_accessor :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    sender.valid?
    receiver.valid?
  end

  # def execute_transaction
  #     if @sender.balance > @amount && @status == 'pending' && self.valid?
  #        @sender.balance -= @amount
  #        @receiver.balance += @amount
  #        @status = 'complete'
  #      else
  #        @status = "Transaction rejected. Please check your account balance."
  #     end
  #
  # end
  def execute_transaction
    if sender.balance > amount && status == 'pending' && self.valid?
       sender.balance -= amount
       receiver.balance += amount
       @status = 'complete'
    elsif
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
     end
  end
 end
