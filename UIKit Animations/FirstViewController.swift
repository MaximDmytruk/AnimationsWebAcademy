//
//  FirstViewController.swift
//  UIKit Animations
//
//  Created by Maxim Dmytruk on 12.01.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var BounceView: UIView!
    
    @IBOutlet weak var BottomBounceViewConstrain: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BounceView.layer.cornerRadius = 100
    }
    
    @IBAction func ButtonBouncePressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1,
                       delay: 0,
                       usingSpringWithDamping: 0.4 ,
                       initialSpringVelocity: 0.5) {
            
            if self.BottomBounceViewConstrain.constant == 400 {
                self.BottomBounceViewConstrain.constant = 20
                self.view.layoutIfNeeded()
                
            } else {
                self.BottomBounceViewConstrain.constant = 400
                self.view.layoutIfNeeded()
            }
        }
    }
    
    
}
