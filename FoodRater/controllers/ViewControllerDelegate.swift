import Foundation

//Interface que assina o método addMeal do TableViewController
protocol ViewControllerDelegate{
    func addMeal(_ meal: Meal)
}
