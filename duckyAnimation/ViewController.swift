//
//  ViewController.swift
//  duckyAnimation
//
//  Created by Alyson Abril on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bulbasaur: UIButton!
    @IBOutlet weak var pokemonLabel: UILabel!
    @IBOutlet weak var ducky: UIImageView!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: { self.ducky.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)})
    }
  
    

    @IBAction func toggleDucky(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    @IBAction func bulbsaurTransition(_ sender: UIButton) {
        if bulbasaur.imageView?.image == UIImage(named: "bulba") {
            UIView.transition(with: bulbasaur, duration: 1.0, options: [.transitionFlipFromRight], animations: { self.bulbasaur.setImage(UIImage(named: "bulbaRanger"), for: .normal)})
            pokemonLabel.text = "BulbaRanger"
        } else {
             UIView.transition(with: bulbasaur, duration: 1.0, options: [.transitionFlipFromRight], animations: { self.bulbasaur.setImage(UIImage(named: "bulba"), for: .normal)})
            pokemonLabel.text = "Bulbasaur"
        }
        
    }
  
}
