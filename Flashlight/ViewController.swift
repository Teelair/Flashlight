//
//  ViewController.swift
//  Flashlight
//
//  Created by Tyler Rife on 1/25/18.
//  Copyright © 2018 Tyler Rife. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var brightness:Float = 1
    @IBOutlet weak var brightnessLabel: UILabel!
    
    @IBOutlet weak var brightnessSlider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //Resetting to white
        brightness = 1
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider)
    {
        brightness = Float(sender.value)
        updateScreen()
    }
    
    func updateScreen()
    {
        self.brightnessLabel.textColor = UIColor.init(red: CGFloat(1 - brightness), green: CGFloat(1 - brightness), blue: CGFloat(1 - brightness), alpha: 1)
        self.view.backgroundColor = .init(red: CGFloat(brightness), green: CGFloat(brightness), blue: CGFloat(brightness), alpha: 1)
    }
}
