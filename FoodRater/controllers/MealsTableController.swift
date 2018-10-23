//
//  MealsTableController.swift
//  FoodRater
//
//  Created by Viitra 2 on 23/10/18.
//  Copyright © 2018 irs. All rights reserved.
//

import UIKit

class MealsTableController: UITableViewController{
    //Criando array que vai segurar as refeições
    var meals = [Meal(name: "Pizza", happiness: 4),
                 Meal(name: "Salada", happiness: 5)]
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
