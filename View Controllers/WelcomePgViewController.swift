//
//  WelcomePgViewController.swift
//  Deer Diary
//
//  Created by Clara Hung on 7/29/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class WelcomePgViewController: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //show welcome message with user's custom name
        let loginVC = LoginViewController()
        
        let user = "\(loginVC.userName)"
        
        welcomeText.text = "Welcome to your world, \(user)!"
        
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
