//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func OnOffChanged(_ sender: UISwitch) {
        if sender.isOn {
            sliderChanged()
        }
        else {
            colorView.backgroundColor = UIColor.gray
        }
        GreenSlider.isEnabled = sender.isOn
        redSlider.isEnabled = sender.isOn
        BlueSlider.isEnabled = sender.isOn
    
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(GreenSlider.value)
        let blue = CGFloat(BlueSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

