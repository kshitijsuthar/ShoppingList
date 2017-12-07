//
//  ViewController.swift
//  ShoppingList
//
//  Created by Kshitij Suthar on 2017-12-06.
//  Copyright © 2017 Kshitij Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var listNameLabel: UILabel!
    
    @IBOutlet weak var listNameTextfield: UITextField!
    
    @IBOutlet weak var item1Quantity: UITextField!
    
    @IBOutlet weak var item2Quantity: UITextField!
    
    @IBOutlet weak var item3Quantity: UITextField!
    
    @IBOutlet weak var item4Quantity: UITextField!
    
    @IBOutlet weak var item5Quantity: UITextField!
    
    @IBOutlet weak var item1TextField: UITextField!
    @IBOutlet weak var item2TextField: UITextField!
    @IBOutlet weak var item3TextField: UITextField!
    @IBOutlet weak var item4TextField: UITextField!
    @IBOutlet weak var item5TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slider1Action(_ sender: UISlider) {
        
        item1Quantity.text = String(roundf(sender.value))
        
    }
    
    @IBAction func slider2Action(_ sender: UISlider) {
        
        item2Quantity.text = String(roundf(sender.value))
        
    }
    
    @IBAction func slider3Action(_ sender: UISlider) {
        
        item3Quantity.text = String(roundf(sender.value))
        
    }
    
    @IBAction func slider4Action(_ sender: UISlider) {
        
        item4Quantity.text = String(roundf(sender.value))

    }
    
    @IBAction func slider5Action(_ sender: UISlider) {
        
        item5Quantity.text = String(roundf(sender.value))

    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        listNameTextfield.text = ""
        //return resignFirstResponder()
    }
    
    @IBAction func userEnteredListName(_ sender: UITextField) {
        
        listNameLabel.text = listNameTextfield.text
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        item1Quantity.text = "1.0"
        item2Quantity.text = "1.0"
        item3Quantity.text = "1.0"
        item4Quantity.text = "1.0"
        item5Quantity.text = "1.0"
        item1TextField.text = ""
        item2TextField.text = ""
        item3TextField.text = ""
        item4TextField.text = ""
        item5TextField.text = ""
        listNameLabel.text = "My Shopping List"
        listNameTextfield.text = ""
        
    }
    
    
    
    
    
}

