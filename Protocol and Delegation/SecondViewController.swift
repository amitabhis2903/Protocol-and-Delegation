//
//  SecondViewController.swift
//  Protocol and Delegation
//
//  Created by Ammy Pandey on 30/01/18.
//  Copyright © 2018 Ammy Pandey. All rights reserved.
//

import UIKit

protocol DataCanReverse {
    func dataReverse(data: String)
}

class SecondViewController: UIViewController {

    var message: String?
    var delegate: DataCanReverse?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = message

       
    }

    @IBAction func reveseData(_ sender: Any) {
        delegate?.dataReverse(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
