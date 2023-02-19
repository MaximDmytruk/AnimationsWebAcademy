//
//  SecondViewController.swift
//  UIKit Animations
//
//  Created by Maxim Dmytruk on 12.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var ballView: UIView!
    
    @IBOutlet weak var leadingBallConstrain: NSLayoutConstraint!
    @IBOutlet weak var topBallConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingBallConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomBallConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ballView.layer.cornerRadius = 25
    }
    
    
    @IBAction func runButtonPressed(_ sender: Any) {
        
        self.ballView.alpha = 1
        
        UIView.animateKeyframes(withDuration: 4, delay: 0) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1.0) {
                self.leadingBallConstrain.isActive = false
                self.trailingBallConstraint.isActive = true
                self.view.layoutIfNeeded()
            }
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 2.0) {
                self.topBallConstraint.isActive = false
                self.bottomBallConstraint.isActive = true
                self.view.layoutIfNeeded()
            }
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 1.0) {
                self.leadingBallConstrain.isActive = true
                self.trailingBallConstraint.isActive = false
                self.view.layoutIfNeeded()
            }
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 2.0) {
                self.topBallConstraint.isActive = true
                self.bottomBallConstraint.isActive = false
                self.ballView.alpha = 0
                self.view.layoutIfNeeded()
            }
         
        }
       
    }
}
