
//
//  ViewController.swift
//  tipsApp
//
//  Created by Michael Winter on 1/15/15.
//  Copyright (c) 2015 PhotoCorpi. All rights reserved.
//

import UIKit

struct MyVariables {
    static var amt = 1.23   // bill amount w/ temp value
}

class ViewController: UIViewController {

    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLable.text = "$0.00"
        totalLable.text = "$100.00"
        var defaults = NSUserDefaults.standardUserDefaults()
        var dblValue = defaults.doubleForKey("bill")
        billField.text = String(format: "%.2f",dblValue)
        setValues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        setValues()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    override func viewDidAppear(animated: Bool) {
        var defaults = NSUserDefaults.standardUserDefaults()
        var dblValue = defaults.doubleForKey("bill")
        billField.text = String(format: "%.2f",dblValue)
        setValues()
    }
    
    
    // Calc values and set controls
    func setValues() {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text).doubleValue
        MyVariables.amt = billAmount
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        tipLable.text = String(format: "$%.2f",tip)
        totalLable.text = String(format: "$%.2f",total)
    }
}

