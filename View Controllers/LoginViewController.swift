//
//  LoginViewController.swift
//  Deer Diary
//
//  Created by Clara Hung on 7/29/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    //default val is displayed on welcome page
    //can't figure out how to make it dynamic
    var userName = "Jenny"
    
    @IBAction func loginTapped(_ sender: UIButton) {
        if usernameText.text == "Jenny" && passwordText.text == "fakepw" {
            
            userName = "Jenny"
            
            self.performSegue(withIdentifier: "goToWelcomePage", sender: self)
            
            print("successful login") //for testing purposes
        }
        else {
            print("username or password incorrect, please try again")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
