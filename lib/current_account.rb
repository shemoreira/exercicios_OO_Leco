require_relative 'account'

class CurrentAccount < Account
    def initialize
        super()
        @tax = 15
        @withdrawal_counter = 0
    end

    def withdraw quantity
        @withdrawal_counter = @withdrawal_counter + 1

        super

        if @withdrawal_counter > 3
            puts "You will pay #{@tax} for this withdrawal"
            @balance = @balance - @tax
        end
    end
end
