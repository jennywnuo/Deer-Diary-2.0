//
//  TheWorldViewController.swift
//  Deer Diary
//
//  Created by jenny nuo on 7/30/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class TheWorldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        let attributes = [NSAttributedString.Key.font: UIFont(name: "Charter-Bold", size: 17)!]
        
        UINavigationBar.appearance().titleTextAttributes = attributes


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
