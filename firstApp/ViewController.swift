//
//  ViewController.swift
//  firstApp
//
//  Created by roberto rojas on 6/7/14.
//  Copyright (c) 2014 roberto rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var myLabel : UILabel
    
    @IBOutlet var myText : UITextField
    @IBOutlet var myOptions : UISegmentedControl
    var names = ["roberto", "bolivar", "alex"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "Type a name"
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func makeSelection(sender : AnyObject) {
        myText.resignFirstResponder()
        if myOptions.selectedSegmentIndex > -1 && !myText.text.isEmpty {
            if myText.text == names[myOptions.selectedSegmentIndex] {
                myLabel.text = "You win!"
            } else {
                myLabel.text = "Usted Perdio! Try again"
            }
        } else {
            if myOptions.selectedSegmentIndex == -1 {
                myLabel.text = "Please select Index"
            } else {
                myLabel.text = "Please type a name"
            }
           
        }
        
    }


}

