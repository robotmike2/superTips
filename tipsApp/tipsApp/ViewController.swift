
//
//  ViewController.swift
//  tipsApp
//
//  Created by Michael Winter on 1/15/15.
//  Copyright (c) 2015 PhotoCorpi. All rights reserved.
//

import UIKit

struct MyVariables {
    static var amt = 23.45
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
        println(" main from settings \(dblValue)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        /*
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text).doubleValue
        println(" billAmount \(billAmount)")
        MyVariables.amt = billAmount
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLable.text = String(format: "$%.2f",tip)
        totalLable.text = String(format: "$%.2f",total)
*/
        setValues()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        //defaults.setDouble(amt, forKey: "bill")
        //var amt = 654.00
        //println(" fffff \(amt)")
    }
    
    override func viewDidAppear(animated: Bool) {
        var defaults = NSUserDefaults.standardUserDefaults()
        var dblValue = defaults.doubleForKey("bill")
        billField.text = String(format: "%.2f",dblValue)
        setValues()
        println(" fffff \(dblValue)")

    }
    
    func setValues() {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text).doubleValue
        println("1 billAmount \(billAmount)")
        println("2 billField \(billField.text)")
        MyVariables.amt = billAmount
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLable.text = String(format: "$%.2f",tip)
        totalLable.text = String(format: "$%.2f",total)
    }
}

