//
//  ViewController.swift
//  BlueLine
//
//  Created by Dose Office on 2016-07-15.
//  Copyright © 2016 Dose Media, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func login(sender: AnyObject) {
        if !isValidEmail(emailTextField.text) {
            print("Invalid email")
        } else if !isValidPassword(passwordTextField.text) {
            print("Password is too short")
        } else {
            print("Success")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func isValidEmail(testStr:String?) -> Bool {
        if let str = testStr {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluateWithObject(str)
        }
        
        return false
    }
    
    func isValidPassword(testPwd:String?) -> Bool {
        if let str = testPwd {
            return (str.characters.count > 4)
        }
        
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

