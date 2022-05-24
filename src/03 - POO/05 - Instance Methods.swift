// Instance methods

class Counter{
    var counter = 0

    func increment(){
        self.counter += 1
    }

    func incrementByAmount(by amount: Int){
        self.counter += amount
    }

    func reset(){
        self.counter = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementByAmount(by: 7)
print(counter.counter)