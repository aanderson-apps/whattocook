//
//  ViewController.swift
//  What to Cook?
//
//  Created by Alison Anderson on 7/15/19.
//  Copyright © 2019 Alison Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dinners: [String] = ["Bolognese", "Tacos", "Shrimp Fried Rice", "Grilled Chicken", "Pulled Pork Sandwiches", "Salmon and Potatoes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func getRandomDinner(){
        var randomdinner = dinners.randomElement()
        recommendLabel.text = randomdinner
    }
    @IBOutlet weak var recommendLabel: UILabel!
    
    @IBAction func PickButton(_ sender: Any) {
        getRandomDinner()
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getRandomDinner()
    }
}

