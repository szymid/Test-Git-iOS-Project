//
//  SecondViewController.swift
//  AnimalTrivia
//
//  Created by Boguslaw Dawidow on 04.04.2016.
//  Copyright © 2016 Szymon Dawidow. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var inCorrectAImageView: UIImageView!
    @IBOutlet weak var correctBImageView: UIImageView!
    @IBOutlet weak var inCorrectCImageView: UIImageView!
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    @IBAction func aButtonPressed(sender: UIButton)
    {
        inCorrectAImageView.hidden  = false
        aButton.hidden = true
        bButton.enabled = false
        cButton.enabled = false
        aLabel.textColor = UIColor.init(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
    }
    
    @IBAction func bButtonPressed(sender: AnyObject)
    {
        correctBImageView.hidden = false
        bButton.hidden = true
        cButton.enabled = false
        aButton.enabled = false
        bLabel.textColor = UIColor.greenColor()
        
    }
    
    @IBAction func cButtonPressed(sender: UIButton)
    {
        inCorrectCImageView.hidden = false
        cButton.hidden = true
        bButton.enabled = false
        aButton.enabled = false
        cLabel.textColor = UIColor.init(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
    }

}
