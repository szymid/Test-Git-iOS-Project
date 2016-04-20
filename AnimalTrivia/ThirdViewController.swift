//
//  ThirdViewController.swift
//  AnimalTrivia
//
//  Created by Boguslaw Dawidow on 04.04.2016.
//  Copyright © 2016 Szymon Dawidow. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    @IBOutlet weak var inCorrectAImageView: UIImageView!
    @IBOutlet weak var inCorrectBImageView: UIImageView!
    @IBOutlet weak var correctCImageView: UIImageView!
    
    @IBOutlet weak var startOverButton: UIButton!
    
    let myRedColor = UIColor.init(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        startOverButton.layer.cornerRadius = 7.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func aButtonPressed(sender: AnyObject)
    {
        let inCorrectImage = UIImage(named: "incorrectAnswer")
        aButton.setImage(inCorrectImage, forState: UIControlState.Normal)
        disableButtons()
        
        aLabel.textColor = myRedColor
    }
    
    @IBAction func bButtonPressed(sender: AnyObject)
    {
        let inCorrectImage = UIImage(named: "incorrectAnswer")
        bButton.setImage(inCorrectImage, forState: UIControlState.Normal)
        disableButtons()
        
        bLabel.textColor = myRedColor
    }
    
    @IBAction func cButtonPresse(sender: AnyObject)
    {
        let correctImage = UIImage(named: "correctAnswer")
        cButton.setImage(correctImage, forState: UIControlState.Normal)
        disableButtons()
        
        cLabel.textColor = UIColor.greenColor()
    }
    
    func disableButtons()
    {
        aButton.enabled = false
        bButton.enabled = false
        cButton.enabled = false
    }
}
