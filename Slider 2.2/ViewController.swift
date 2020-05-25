//
//  ViewController.swift
//  Slider 2.2
//
//  Created by Kureev on 25.05.2020.
//  Copyright © 2020 Kureev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var preview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func updateViewBackground() {
        self.preview.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(1)
        )
    }
    
    @IBAction func onBlueSliderChange() {
       blueLabel.text = "Blue: \(String(format: "%.2f", blueSlider.value))"
        updateViewBackground()
    }
    @IBAction func onGreenSliderChange() {
        greenLabel.text = "Green: \(String(format: "%.2f", greenSlider.value))"
        updateViewBackground()
    }
    @IBAction func onRedSliderChange() {
        redLabel.text = "Red: \(String(format: "%.2f", redSlider.value))"
        updateViewBackground()
    }
}

