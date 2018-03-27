//
//  ViewController.swift
//  TextFlend
//
//  Created by D7703_22 on 2018. 3. 22..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Hello: UILabel!
    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // uiTextFieldDeleagte 객체와 viewConller 객체와 연결
        //TextField.delegate = self
        
        TextField.clearButtonMode = UITextFieldViewMode.always
        TextField.placeholder = "입력을 하세요"
    
    }
    
    @IBAction func btn1(_ sender: Any) {
        Hello.text = "Hello" + TextField.text!
        TextField.text = ""
        TextField.resignFirstResponder()
    }
    //background
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //TextField.resignFirstResponder()
        view.endEditing(true)

    }
    func textFieldShouldReturn(_ TextField: UITextField) -> Bool {
        print("I pressed return key")
        Hello.text = "Hello" + TextField.text!
        TextField.text = ""
        TextField.resignFirstResponder()
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.yellow
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        view.backgroundColor = UIColor.green
    }

}
