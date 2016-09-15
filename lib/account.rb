class Account
    def initialize
        @balance = 0
    end

    def check
        puts "Total: #{@balance}"
    end

    def deposit quantity
        @balance = @balance + quantity
    end

    def withdraw quantity
        @balance = @balance - quantity
    end
end
