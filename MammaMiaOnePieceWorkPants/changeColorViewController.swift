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
    @IBOutlet weak var crossImageView: UIImageView!
    
    
    
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

            var pattern = CGRect(x: 153, y: 197, width: 150, height: 225)
            patternImageView.backgroundColor = UIColor(red: 0, green: 0, blue: 255, alpha: 1)
            pattern = CGRect(x: 0, y: 0, width: patternImageView.frame.width, height: patternImageView.frame.height/9)
            let rectangleView1 = UIView(frame: pattern)
            rectangleView1.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView1)
            pattern = CGRect(x: 0, y: 225/9*1, width: patternImageView.frame.width, height: patternImageView.frame.height/9)
            let rectangleView2 = UIView(frame: pattern)
            rectangleView2.backgroundColor = UIColor(red: 0, green: 0, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView2)
            pattern = CGRect(x: 0, y: 225/9*2, width: patternImageView.frame.width, height: patternImageView.frame.height/9)
            let rectangleView3 = UIView(frame: pattern)
            rectangleView3.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView3)
            pattern = CGRect(x: 0, y: 225/9*3, width: patternImageView.frame.width, height: patternImageView.frame.height/9)
            let rectangleView4 = UIView(frame: pattern)
            rectangleView4.backgroundColor = UIColor(red: 0, green: 0, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView4)
            pattern = CGRect(x: 0, y: 225/9*4, width: patternImageView.frame.width, height: patternImageView.frame.height/9)
            let rectangleView5 = UIView(frame: pattern)
            rectangleView5.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView5)
            pattern = CGRect(x: 0, y: 225/9*5, width: patternImageView.frame.width, height:     patternImageView.frame.height/9)
            let rectangleView6 = UIView(frame: pattern)
            rectangleView6.backgroundColor = UIColor(red: 0, green: 0, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView6)
            pattern = CGRect(x: 0, y: 225/9*6, width: patternImageView.frame.width, height:     patternImageView.frame.height/9)
            let rectangleView7 = UIView(frame: pattern)
            rectangleView7.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView7)
            pattern = CGRect(x: 0, y: 225/9*7, width: patternImageView.frame.width, height:     patternImageView.frame.height/9)
            let rectangleView8 = UIView(frame: pattern)
            rectangleView8.backgroundColor = UIColor(red: 0, green: 0, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView8)
            pattern = CGRect(x: 0, y: 225/9*8, width: patternImageView.frame.width, height:     patternImageView.frame.height/9)
            let rectangleView9 = UIView(frame: pattern)
            rectangleView9.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
            patternImageView.addSubview(rectangleView9)
            pattern = CGRect(x: 0, y: 225, width: patternImageView.frame.width, height:     patternImageView.frame.height/9)
        
            donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
        
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
