require_relative 'lib/savings_account'
require_relative 'lib/current_account'
require_relative 'lib/thief'

puts "Creating account instances"

savings_account = SavingsAccount.new("12345")
current_account = CurrentAccount.new

savings_account.check
current_account.check

puts "---"
puts "Depositing 300 to each account"

savings_account.deposit 300
current_account.deposit 300

savings_account.check
current_account.check

puts "---"
puts "Withdrawing 10 from each account 6 times"

6.times do
    savings_account.withdraw 10
    current_account.withdraw 10
end

savings_account.check
current_account.check

puts "---"
puts "Stealing some cash..."

thief = Thief.new
accounts = [savings_account, current_account]

accounts.each do |account|
    thief.steal_from account
end

savings_account.check
current_account.check
