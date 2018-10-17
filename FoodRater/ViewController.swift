//
//  ViewController.swift
//  FoodRater
//
//  Created by Viitra 2 on 16/10/18.
//  Copyright © 2018 irs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Swift força todas as variavéis a terem um valor inicial. Essa variavél do campo de texto só vai ter valor em tempo de execução, mas não de compilação. Então colocamos uma exclamação pra dizer ao compilador que ela é opcional. Dizemos ao compilador para confiar no programador.
    @IBOutlet var nameField:UITextField!
    @IBOutlet var happinessField:UITextField!
    @IBAction func addFood(){
        let name=nameField.text
        let happiness=happinessField.text
        print("Eu comi \(name!) e minha felicidade foi \(happiness!)");
    }
    //Comment for commit
}

