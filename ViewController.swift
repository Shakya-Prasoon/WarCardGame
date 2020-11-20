//
//  ViewController.swift
//  WarCardGame
//
//  Created by Prasoon Shakya on 11/20/20.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var LeftImageView: UIImageView!
    
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var leftScore = 0
    var rightScore = 0
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        // Update the image views
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        // Variable to keep track of score of players

        
        // Compare the random number to see who wins
        if leftNumber > rightNumber{
            // Left side winds
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
        }
        else{
            // Right side wins
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
        }
        
    }
    
}

