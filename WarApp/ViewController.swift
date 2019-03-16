//
//  ViewController.swift
//  WarApp
//
//  Created by Ramazan Abdullayev on 12/14/18.
//  Copyright © 2018 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            
            // Update the score
            leftScore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftScore)
            
        } else if leftRandomNumber < rightRandomNumber {
            
            // Update the score
            rightScore += 1
            
            // Update the label
            rightScoreLabel.text = String(rightScore)
            
        } else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    
}
