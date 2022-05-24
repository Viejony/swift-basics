// Observers
class StepCounter{
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("The value of totalSteps will be \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("The totalSteps increase \(totalSteps - oldValue) steps")
            }
            
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 100
stepCounter.totalSteps = 170