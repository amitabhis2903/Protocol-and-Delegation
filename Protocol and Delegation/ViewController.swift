//
//  ViewController.swift
//  Protocol and Delegation
//
//  Created by Ammy Pandey on 30/01/18.
//  Copyright © 2018 Ammy Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataCanReverse {

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func changeScreen(_ sender: Any) {
        performSegue(withIdentifier: "secondView", sender: self)
    }
    

    @IBAction func changeColor(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
    }
    
    //Segue send data to Second Screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "secondView" {
        let destination = segue.destination as! SecondViewController
        destination.message = textField.text!
        destination.delegate = self
        }
    }
    
    func dataReverse(data: String) {
        label.text = data
    }
    
}

