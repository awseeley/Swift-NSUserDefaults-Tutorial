//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by Andrew on 4/01/2016.
//  Copyright © 2016 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblData: UILabel!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSave(sender: AnyObject) {
        let data = "Hello"
        userDefaults.setObject(data, forKey: "keyHello")
    }
    
    @IBAction func btnLoad(sender: AnyObject) {
        
        let data: String? = userDefaults.objectForKey("keyHello") as! String?
        if(data != nil) {
            lblData.text = data
        } else {
            lblData.text = "Nothing Saved"
        }
        
    }


}

