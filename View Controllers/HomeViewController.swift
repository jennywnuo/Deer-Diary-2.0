//
//  HomeViewController.swift
//  Deer Diary
//
//  Created by Clara Hung on 7/29/20.
//  Copyright © 2020 jenny and clara. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    struct GlobalVariable{
        static var taskShow = false
        static var stickerShow = false
    }
    
    let transition = SlideinTransition()
    var topView: UIView?
    var label = UILabel()
    var finalName = "" 

    override func viewDidLoad() {
        super.viewDidLoad()
        let attributes = [NSAttributedString.Key.font: UIFont(name: "Charter-Bold", size: 17)!]
        
        UINavigationBar.appearance().titleTextAttributes = attributes


        var items = [UIBarButtonItem]()

        items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
        
        items.append( UIBarButtonItem(title: "📝", style: .plain, target: self, action: #selector(addEvent)) )
        
        items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
        
        items.append( UIBarButtonItem(title: "🌸", style: .plain, target: self, action: #selector(addSticker)) )
        
        items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
        
        items.append( UIBarButtonItem(title: "🔐", style: .plain, target: self, action: nil) )
        
        items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
        
        items.append( UIBarButtonItem(title: "📒", style: .plain, target: self, action: nil) )
        
        self.toolbarItems = items // this made the difference. setting the items to the controller, not the navigationcontroller
        
        addFirstSticker()
        
        createFirstLabel()
        
        // Do any additional setup after loading the view.
    }
    
    func addFirstSticker () {
        let imageName = "flower.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 10, y: 90, width: 120, height: 120)
        view.addSubview(imageView)
    }
    
    func createFirstLabel () {
        label.frame = CGRect(x: 15, y: 50, width: 400, height: 800)
        label.textAlignment = .left
        label.text = "Learn Swift with Kode with Klossy\n 9:45 to 3:15 \n - Take Brain Break \n \n Make a smoothie in the afternoon\n 12:15 to 1:00 \n - Use Hana's recipes from Slack! \n \n Finish English Summer Homework before school starts\n 5:30 to 6:30 \n - Jane Eyre Chapter 28 (Also finish analysis) \n \n Walk imaginay dog after dinner \n 7:45 to 8:30 \n - Don't get lost this time"
        label.numberOfLines = 19
        label.textColor = .black
        label.font = UIFont(name: "BradleyHandITCTT-Bold", size: 17)!
        
        self.view.addSubview(label)
    }
    
    
    
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
        menuViewController.didTapMenuType = { menuType in print(menuType)
            self.transitionToNew(menuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
    
    func transitionToNew(_ menuType: MenuType) {
        if String(describing: menuType) == "myWorld" {
            self.title = "My World"
            addFirstSticker()
        } else if String(describing: menuType) == "theWorld" {
            self.title = "The World"
        } else if String(describing: menuType) == "settings"{
            self.title = "Settings"
        } else if String(describing: menuType) == "Profile"{
            self.title = "My Profile"
        }
        
        topView?.removeFromSuperview()
        
        // switching between views
        switch menuType {
        case .myWorld:
            let view = UIView()
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.view.backgroundColor = UIColor(displayP3Red: 171/255, green: 164/255, blue: 152/255, alpha: 1)
            
            
            
            if HomeViewController.GlobalVariable.taskShow == true {
                label.isHidden = false
                createMyWorldLabel()
                
            }
            else {
                label.isHidden = true
            }
            
            if HomeViewController.GlobalVariable.stickerShow == true {
                let imageName = "flower2.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 200, y: 90, width: 120, height: 120)
                view.addSubview(imageView)
            }
            
            
            
            navigationController?.setNavigationBarHidden(false,animated: false)
            self.navigationController?.isToolbarHidden = false
            
            

            var items = [UIBarButtonItem]()

            items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
            
            items.append( UIBarButtonItem(title: "📝", style: .plain, target: self, action: #selector(addEvent)) )
            
            items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
            
            items.append( UIBarButtonItem(title: "🌸", style: .plain, target: self, action: #selector(addSticker)) )
            
            items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
            
            items.append( UIBarButtonItem(title: "🔐", style: .plain, target: self, action: nil) )
            
            items.append( UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil) )
            
            items.append( UIBarButtonItem(title: "📒", style: .plain, target: self, action: nil) )
            
            self.toolbarItems = items // this made the difference. setting the items to the controller, not the navigationcontroller
            
            
        case .theWorld:
            let view = UIView()
            label.isHidden = true

            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.view.backgroundColor = UIColor(displayP3Red: 171/255, green: 164/255, blue: 152/255, alpha: 1)
            self.performSegue(withIdentifier: "goToTheWorld", sender: self)
            
            navigationController?.setNavigationBarHidden(false,animated: false)
            self.navigationController?.isToolbarHidden = true
            
        case .settings:
            let view = UIView()
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.view.backgroundColor = UIColor(displayP3Red: 171/255, green: 164/255, blue: 152/255, alpha: 1)
            
            navigationController?.setNavigationBarHidden(false,animated: false)
            self.navigationController?.isToolbarHidden = true
            
        case .Profile:
            
            let view = UIView()
            label.isHidden = true
            
            
            view.frame = self.view.bounds
            self.view.addSubview(view)
            
            navigationController?.setNavigationBarHidden(false,animated: false)
            self.navigationController?.isToolbarHidden = true
        }
    }
    
  
        
    
    func createMyWorldLabel () {
        label.frame = CGRect(x: 10, y: 300, width: self.view.frame.width, height: 120)
        label.textAlignment = .left
        label.text = "\(AddEventViewController.FormAnswers.name)\n From \(AddEventViewController.FormAnswers.start) to \(AddEventViewController.FormAnswers.end)\n - \(AddEventViewController.FormAnswers.add)"
        label.numberOfLines = 3
        label.textColor = .black
        label.font = UIFont(name: "BradleyHandITCTT-Bold", size: 17)!
        self.view.addSubview(label)
    }


}


extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
    
    @objc func addEvent() {
        print("go to add event")
        self.performSegue(withIdentifier: "goToAddEvent", sender: self)
        
    }
    
    @objc func addSticker() {
    print("go to add event")
    self.performSegue(withIdentifier: "goToAddSticker", sender: self)
        
    }
}
