//
//  MonsterImg.swift
//  mylittlemonster
//
//  Created by Larsen Eisenberg on 3/5/16.
//  Copyright © 2016 Magiclarsen. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png") // default idle animation imgage
        
        self.animationImages = nil //clears animation
        
        //animates the idle Golem
        var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
        // end of idle Golem animation
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage (named: "dead5.png") //default death image
        
        self.animationImages = nil //clears animation
        
        // animates the Death of the Golem
        var imgArray = [UIImage]()
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        // end of Death of Golem Animation
    }
}
