//
//  AddStickerViewController.swift
//  Deer Diary
//
//  Created by jenny nuo on 7/30/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class AddStickerViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addStickerTapped(_ sender: Any){
        HomeViewController.GlobalVariable.stickerShow = true
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
