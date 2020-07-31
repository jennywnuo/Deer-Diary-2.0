//
//  AddEventViewController.swift
//  Deer Diary
//
//  Created by jenny nuo on 7/30/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {
    
        

    struct FormAnswers {
        static var name = ""
        static var start = ""
        static var end = ""
        static var add = ""
    }
    
    
    
    @IBOutlet weak var nameofEvent: UITextField!
    @IBOutlet weak var startTime: UITextField!
    @IBOutlet weak var endTime: UITextField!
    @IBOutlet weak var addNotes: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    
    @IBAction func addTapped(_ sender: Any) {
        AddEventViewController.FormAnswers.name = nameofEvent.text!
        AddEventViewController.FormAnswers.start = startTime.text!
        AddEventViewController.FormAnswers.end = endTime.text!
        AddEventViewController.FormAnswers.add = addNotes.text!
        print(AddEventViewController.FormAnswers.name)
        print(AddEventViewController.FormAnswers.start)
        print(AddEventViewController.FormAnswers.end)
        print(AddEventViewController.FormAnswers.add)
        HomeViewController.GlobalVariable.taskShow = true
        print(HomeViewController.GlobalVariable.taskShow)
        
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
