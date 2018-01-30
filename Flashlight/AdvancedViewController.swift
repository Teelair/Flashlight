//
//  AdvancedViewController.swift
//  Flashlight
//
//  Created by Tyler Rife on 1/25/18.
//  Copyright © 2018 Tyler Rife. All rights reserved.
//

import UIKit

class AdvancedViewController: UIViewController
{
    var red:Float = 1
    var green:Float = 1
    var blue:Float = 1
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //Resetting to white
        red = 1
        green = 1
        blue = 1
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider)
    {
        switch sender
        {
        case redSlider:
            red = redSlider.value
        case greenSlider:
            green = greenSlider.value
        case blueSlider:
            blue = blueSlider.value
        default:
            print("There's literally no way this will ever be ran.")
        }
        updateScreen()
    }
    
    func updateScreen()
    {
        let labels = [redLabel, greenLabel, blueLabel]
        for label in labels
        {
            label?.textColor = UIColor.init(red: CGFloat(1 - red), green: CGFloat(1 - green), blue: CGFloat(1 - blue), alpha: 1)
        }
        
        view.backgroundColor = .init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
}
