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
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSave(_ sender: AnyObject) {
        let data = "Hello"
        userDefaults.set(data, forKey: "keyHello")
    }
    
    @IBAction func btnLoad(_ sender: AnyObject) {
        
        let data: String? = userDefaults.object(forKey: "keyHello") as! String?
        if(data != nil) {
            lblData.text = data
        } else {
            lblData.text = "Nothing Saved"
        }
        
    }


}

