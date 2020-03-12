//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Garrison Gorai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var TargetLabel: UILabel!
    
    @IBOutlet weak var Slider: UISlider!
    
    var currentValue: Int = 0
    
    // Part 3&4 Part 2a
    var targetValue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(Slider.value)
        
        targetValue = Int.random(in:0...100)
        
        startNewRound()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func GuessNumberPressed(_ sender: Any) {
       
        
        let message = "The value is: \(currentValue)" + "\n The Target Value is \(targetValue)"
        
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        
    }
    
    
    @IBAction func SliderMoved(_ sender: Any) {
    
        print("The Value of the Slider is:\(Slider.value)")
    
        currentValue = lroundf(Slider.value)
        
        
        
    }
    func startNewRound()
    
    {
    
    targetValue = Int.random(in: 0...100)
    currentValue = lroundf(Slider.value)
    
    }

    
    
    //problem set #1
    func updateTargetLabel(){
        
        //Set targetLabel to display the targetValue
        self.TargetLabel.text = String(targetValue)
        
    }
}
