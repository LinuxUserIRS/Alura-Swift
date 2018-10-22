import UIKit

class Meal {
    var name:String
    var happiness:Int
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

class Item{
    var name:String
    var calories:Double
    
    init(name: String, calories: Double){
        self.name=name
        self.calories=calories
    }
}

let almoco = Meal(name: "Almoço", happiness: 5)

almoco.items.append(Item(name: "Frango", calories: 120))
almoco.items.append(Item(name: "Arroz", calories: 200))

print(almoco.allCalories())
