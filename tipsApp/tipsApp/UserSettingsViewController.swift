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
        var defaults = NSUserDefaults.standardUserDefaults()
        var amt = MyVariables.amt
        defaults.setDouble(amt, forKey: "bill")
        defaults.synchronize()
    }
    
    @IBOutlet weak var saveBillButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
