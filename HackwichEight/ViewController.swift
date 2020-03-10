//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Garrison Gorai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Slider: UISlider!
    
    var currentValue: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func GuessNumberPressed(_ sender: Any) {
       
        let alert = UIAlertController(title: "Hello World", message: "This is my first alert view", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func SliderMoved(_ sender: Any) {
    
        print("The Value of the Slider is:\(Slider.value)")
    
        currentValue = lroundf(Slider.value)
    }
}

