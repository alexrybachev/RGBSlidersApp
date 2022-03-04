//
//  ViewController.swift
//  RGBSlidersApp
//
//  Created by Aleksandr Rybachev on 03.03.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = string(redSlider.value)
        greenLabel.text = string(greenSlider.value)
        blueLabel.text = string(blueSlider.value)
    }

    // MARK: - IBActions
    @IBAction func changeColorSliders(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            redLabel.text = string(sender.value)
        case 1:
            greenLabel.text = string(sender.value)
        default:
            blueLabel.text = string(sender.value)
        }
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

// MARK: - Extension
extension ViewController {
    private func string(_ value: Float) -> String {
        String(format: "%.2f", value)
    }
}

