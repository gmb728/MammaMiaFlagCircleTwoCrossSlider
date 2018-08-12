//
//  changeColorViewController.swift
//  MammaMiaOnePieceWorkPants
//
//  Created by Chang Sophia on 2018/8/12.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

class changeColorViewController: UIViewController {
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var patternImageView: UIImageView!
    @IBOutlet weak var donnaImageView: UIImageView!
   
    
    @IBAction func resSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
         
    }
    
    @IBAction func greenSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
        
    }
    @IBAction func blueSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern")
        patternImageView.addSubview(donnaImageView)
        
    }
    
    
        @IBAction func colorSliderChange(_ sender: UISlider) {
            donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.4)
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
