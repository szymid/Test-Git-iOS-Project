//
//  ViewController.swift
//  AnimalTrivia
//
//  Created by Boguslaw Dawidow on 01.04.2016.
//  Copyright © 2016 Szymon Dawidow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    @IBOutlet weak var inCorrectAImageView: UIImageView!
    @IBOutlet weak var inCorrectBImageView: UIImageView!
    @IBOutlet weak var correctCImageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func aButtonPressed(sender: UIButton)
    {
        inCorrectAImageView.hidden  = false
        aButton.hidden = true
        bButton.enabled = false
        cButton.enabled = false
        aLabel.textColor = UIColor.init(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
    }

    @IBAction func bButtonPressed(sender: UIButton)
    {
        inCorrectBImageView.hidden = false
        bButton.hidden = true
        aButton.enabled = false
        cButton.enabled = false
        bLabel.textColor = UIColor.init(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
        
    }

    @IBAction func cButtonPressed(sender: UIButton)
    {
        correctCImageView.hidden = false
        cButton.hidden = true
        aButton.enabled = false
        bButton.enabled = false
        cLabel.textColor = UIColor.greenColor()
        
    }
}

