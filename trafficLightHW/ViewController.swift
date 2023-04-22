//
//  ViewController.swift
//  trafficLightHW
//
//  Created by mac on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 12
        
        redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        
        yellowLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        
        greenLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        
    }

    @IBAction func tappedButtonToStart(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        switchColor()
    }
    
    func switchColor() {
        counter += 1
        if counter == 1 {
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        } else if counter == 2 {
            
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            counter = 0
        }
    }
}

