//
//  ViewController.swift
//  PresentationExample
//
//  Created by Michael Berg on 5/24/17.
//  Copyright © 2017 personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private weak var textView: UITextView!
    @IBOutlet private weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textView.text = textView.text + "\n> " + textField.text!
        textField.text = ""
        
        return true
    }
}
