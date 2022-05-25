// Deinit: destroy the object

class Bank{
    static var coinsInBank = 2000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int{
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int){
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int

    init(coins: Int){
        self.coinsInPurse = Bank.distribute(coins: coins)
    }

    func win(coins: Int){
        coinsInPurse += Bank.distribute(coins: coins)
    }

    deinit{
        Bank.receive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 1800)
print("playerOne coins = \(playerOne!.coinsInPurse)")
print("Bank coins = \(Bank.coinsInBank)")


playerOne = nil
print("playerOne destroyed. Bank coins = \(Bank.coinsInBank)")