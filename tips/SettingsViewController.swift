//
//  SettingsViewController.swift
//  tips
//
//  Created by Shobek Sam on 12/12/15.
//  Copyright © 2015 Shobek Sam. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var number : Double = 1.0
    @IBOutlet weak var numberOf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.synchronize()
        number = NSString(string: numberOf.text!).doubleValue
        print(number)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getNumber() -> Double{
        return number
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
