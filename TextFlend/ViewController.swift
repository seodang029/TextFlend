//
//  ViewController.swift
//  TextFlend
//
//  Created by D7703_22 on 2018. 3. 22..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var Hello: UILabel!
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func btn1(_ sender: Any) {
        Hello.text = "Hello" + TextField.text!
        TextField.text = ""
        
        TextField.resignFirstResponder()
    }
    //background
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //TextField.resignFirstResponder()
        view.endEditing(false)
        
    }
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

