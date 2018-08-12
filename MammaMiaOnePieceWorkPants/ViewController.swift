//
//  ViewController.swift
//  MammaMiaOnePieceWorkPants
//
//  Created by Chang Sophia on 2018/8/10.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var donnaImageView: UIImageView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var patternImageView: UIImageView!
  
    
    
    @IBAction func resSliderValueChange(_ sender: Any) {
        donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
       
    }

    @IBAction func greenSliderValueChange(_ sender: Any) {
        donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func blueSliderValueChange(_ sender: Any) {
        donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func colorSliderChange(_ sender: UISlider) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
        donnaImageView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.4)
        if sender == redSlider {
            redLabel.text = String(format:"%.f", redSlider.value*255)
        }else if sender == greenSlider {
            greenLabel.text = String(format:"%.f", greenSlider.value*255)
        }else if sender ==  blueSlider {
            blueLabel.text = String(format:"%.f", blueSlider.value*255)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

