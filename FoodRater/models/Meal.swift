import Foundation

class Meal {
    let name:String
    let happiness:Int
    var items=Array<Item>()
    
    init (name: String, happiness: Int){
        self.name=name
        self.happiness=happiness
    }
    
    func allCalories() -> Double{
        var total:Double=0;
        for i in items{
            total+=i.calories
        }
        return total
    }
}


