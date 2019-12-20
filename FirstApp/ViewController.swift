//
//  ViewController.swift
//  FirstApp
//
//  Created by QA Intern on 12/20/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor = view.backgroundColor
    }
    
    
    @IBAction func didTapStringButton(_ sender: Any) {
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
        if textField.text!.isEmpty {
            textLabel.text = "Goodbye 👋"
        }
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func onReset(_ sender: Any) {
        textLabel.text = "Hello from Reshmi!"
        view.backgroundColor = backgroundColor
    }
    
}

