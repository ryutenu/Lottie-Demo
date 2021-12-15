//
//  ViewController.swift
//  Lottie-Demo
//
//  Created by Alan Liu on 2021/12/08.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playAnimation()
    }
    
    private func playAnimation() {
        // Create an animation view
        let animationView = AnimationView(name: "santa-pop-up")
        animationView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        animationView.contentMode = .scaleAspectFit
        
        // Set the animation style
        animationView.animationSpeed = 1
        
        // Add animation view to super view
        view.addSubview(animationView)
        
        // Play animation once then remove it from super view(fromProgress: start time, toProgress: end time)
        animationView.play(fromProgress: 0, toProgress: 1, loopMode: .playOnce) { finished in
            if finished {
                animationView.removeFromSuperview()
            }
        }
    }
}
