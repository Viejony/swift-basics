// Class methods
class SomeClass{
    class func someMethod(){
        print("Hello")
    }
}

SomeClass.someMethod()


// Example
struct LevelTracker{
    static var highestUnlockLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int){
        if level > highestUnlockLevel{
            highestUnlockLevel = level
        }
    }

    static func isUnlocked(_ level: Int) -> Bool{
        return level <= highestUnlockLevel
    }

    mutating func advance(to level: Int) -> Bool{
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        }else{
            return false
        }
    }
}

class Player{
    var tracker = LevelTracker()
    let playerName: String

    func complete(level: Int){
        LevelTracker.unlock(level + 1)
        let canAdvance = tracker.advance(to: level + 1)
        if canAdvance{
            print("Can Advance")
        }
    }

    init(name: String){
        self.playerName = name
    }
}

let player = Player(name: "Jhony")
print(player.tracker.currentLevel)
player.complete(level: 5)
print(player.tracker.advance(to: 7))