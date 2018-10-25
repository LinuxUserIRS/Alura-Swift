//
//  ViewController.swift
//  FoodRater
//
//  Created by Viitra 2 on 16/10/18.
//  Copyright © 2018 irs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var itens = [Item(name: "Eggplant", calories: 10),
                 Item(name: "Brownie", calories: 10),
                 Item(name: "Zucchini", calories: 10),
                 Item(name: "Muffin", calories: 10),
                 Item(name: "Coconut oil", calories: 500),
                 Item(name: "Chocolate frosting", calories: 1000),
                 Item(name: "Chocolate chip", calories: 1000)]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text=itens[indexPath.row].name
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Swift força todas as variavéis a terem um valor inicial. Essa variavél do campo de texto só vai ter valor em tempo de execução, mas não de compilação. Então colocamos uma exclamação pra dizer ao compilador que ela é opcional. Dizemos ao compilador para confiar no programador.
    @IBOutlet var nameField:UITextField?
    @IBOutlet var happinessField:UITextField?
    //Criando uma referência para a interface que assina o método add da tabela
    var delegate : ViewControllerDelegate?
    @IBAction func addFood(){
        if( nameField == nil || happinessField == nil){
            return
        }
        let name:String=nameField!.text!
        if let happiness=Int(happinessField!.text!){
            let meal=Meal(name:name, happiness: happiness)
            print("Eu comi \(meal.name) e minha felicidade foi \(meal.happiness)")
            //Testando a referência é válida
            if(delegate == nil) {
                return
            }
            //Chamando a função que adiciona a refeição no array do controller
            //da tabela
            delegate!.addMeal(meal)
        }
        //Tirando a última view do stack
        navigationController?.popViewController(animated: true)
        
        
    }
}

