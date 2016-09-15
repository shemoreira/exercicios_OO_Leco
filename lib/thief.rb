class Thief
  def steal_from(account)
    puts "Someone is stealing from an account!"
    2.times do
      account.withdraw 50
    end
  end

end
