//
//  UserSettingsViewController.swift
//  tipsApp
//
//  Created by Michael Winter on 1/16/15.
//  Copyright (c) 2015 PhotoCorpi. All rights reserved.
//

import UIKit

class UserSettingsViewController: UIViewController {
    
    @IBAction func SavePushed(sender: UIButton) {
        println("You tapped the button")
        
        var defaults = NSUserDefaults.standardUserDefaults()
       // defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
        var amt = MyVariables.amt
        defaults.setDouble(amt, forKey: "bill")
        println(" screeb Settings \(amt)")
        defaults.synchronize()
    }
    
    @IBOutlet weak var saveBillButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        //saveBillButton.= String(format: "$%.2f",123)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
