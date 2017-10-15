//
//  ViewController.swift
//  LearnDictionary
//
//  Created by Janjan on 10/14/2560 BE.
//  Copyright © 2560 Janjanx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit Variable
    
    //ตัวแปรที่เอาไว้รับค่าจากการกรอกผ่าน TextField
    var userString: String = ""
    var passwordString: String = ""
    
    //กำหนดค่าคงที่
    let userDictionary = ["user1":"u1234", "user2":"u2234", "user3":"u3234"]
    let alertDictionary = ["userFalse":"User Fail", "passFalse":"Password Fail", "authenOK":"Welcome!"]
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value from TextField
        userString = userTextField.text!
        passwordString = passwordTextfield.text!
        
        //Display ค่าที่รับมาจาก TextField บน Console
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
        let resultString = userDictionary[userString]
        print("result==> \(String(describing: resultString))")
        
        //Check User
        if (resultString == nil) {
            //User False
            alertLabel.text = alertDictionary["userFalse"]
        }
    
        
        if (passwordString == resultString) {
            //Password True
            alertLabel.text = alertDictionary["authenOK"]
            
        } else {
            //Password False
            alertLabel.text = alertDictionary["passFalse"]
            
        }
        
        
    } //Login Button
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

