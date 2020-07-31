//
//  ScrollViewController.swift
//  Deer Diary
//
//  Created by Clara Hung on 7/31/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var pages = [ScrollStepViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isPagingEnabled = true
        let page1 = createAndAddCard("hongkong", text: "Democracy at Risk in Hong Kong")
        let page2 = createAndAddCard("yemen", text: "The Crisis in Yemen")
        let page3 = createAndAddCard("breonna", text: "Justice for Breonna Taylor")
        let page4 = createAndAddCard("uighurs", text: "Uighur Concentration Camps in China")
        let page5 = createAndAddCard("portland", text: "The Portland Protests")
        
        pages = [page1, page2, page3, page4, page5]
        
        let views: [String: UIView] = ["view" : view, "page1" : page1.view, "page2" : page2.view, "page3" : page3.view, "page4" : page4.view, "page5" : page5.view]
        
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[page1(==view)]", options: [], metrics: nil, views: views)
        
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[page1(==view)][page2(==view)][page3(==view)][page4(==view)][page5(==view)]", options: [.alignAllTop, .alignAllBottom], metrics: nil, views: views)
        
        NSLayoutConstraint.activate(verticalConstraints + horizontalConstraints)
        // Do any additional setup after loading the view.
    }
    
    private func createAndAddCard(_ backgroundImageName: String, text: String) -> ScrollStepViewController {
        let scrollStep =
            storyboard!.instantiateViewController(withIdentifier: "ScrollStepViewController") as! ScrollStepViewController
        scrollStep.view.translatesAutoresizingMaskIntoConstraints = false
        scrollStep.backgroundImage = UIImage(named: backgroundImageName)
        scrollStep.text = text
        
        scrollView.addSubview(scrollStep.view)
        
        addChild(scrollStep)
        scrollStep.didMove(toParent: self)
        
        return scrollStep
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
