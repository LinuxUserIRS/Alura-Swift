//
//  MealsTableController.swift
//  FoodRater
//
//  Created by Viitra 2 on 23/10/18.
//  Copyright © 2018 irs. All rights reserved.
//

import UIKit

class MealsTableController: UITableViewController, ViewControllerDelegate{
    //Criando array que vai segurar as refeições
    var meals = [Meal(name: "Pizza", happiness: 4),
                 Meal(name: "Salada", happiness: 5)]
    /*Antes da view de adicionar ser criada e mostrada, crio uma variável
     que guarda uma referência para o destino da ação, no caso, a view de adicionar a comida, então passo o valor da variável mealsTable como uma referência para este controller aqui.*/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="addMeal"){
            let view:ViewController=segue.destination as! ViewController
            view.delegate=self
        }
        
    }
    //Função que adiciona um refeição no array e dá refresh na tabela quando um alimnto é adicionado
    //Underline quer dizer que não é necessário colocar o nome do parâmetro quando for usar a função
    func addMeal(_ meal: Meal){
        meals.append(meal)
        tableView.reloadData()
    }
    //Criando função que retorna número de linhas na tabela
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    //Função que povoa a tabela
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text=meal.name
        return cell
    }
}
