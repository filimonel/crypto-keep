class User
    def self.count
        current_user.cryptos.count
    end
end