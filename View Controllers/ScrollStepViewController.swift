//
//  ScrollStepViewController.swift
//  Deer Diary
//
//  Created by Clara Hung on 7/31/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class ScrollStepViewController: UIViewController {
    @IBOutlet private weak var backgroundImageView: UIImageView!
    @IBOutlet private weak var textLabel: UILabel!
    
    var backgroundImage: UIImage?
    var text: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = backgroundImage
                
        if let text = text {
            let font = UIFont(name:"Charter-Bold", size: 17.0)!
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 8
            paragraphStyle.alignment = .center
            
            textLabel.attributedText = NSAttributedString(string:text, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        }

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
