//
//  ViewController.swift
//  Hello World
//
//  Created by Nicholas Smith on 9/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var buttonText: UIButton!
    
    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        buttonText.setTitle("Start", for: .normal)
    }

    @IBAction func buttonPressed() {
        
        x += 1
        
        buttonText.setTitle("Next", for: .normal)
        if x == 1 {
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        } else if x == 2 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if x == 3 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            x = 0
            viewDidLoad()
        }
    }
    
}
