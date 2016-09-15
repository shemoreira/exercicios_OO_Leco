require_relative 'account'

class SavingsAccount < Account
    def initialize number
        super()
        @number = number
    end

    def check
        puts "Total for account ##{@number}: #{@balance}"
    end
end
