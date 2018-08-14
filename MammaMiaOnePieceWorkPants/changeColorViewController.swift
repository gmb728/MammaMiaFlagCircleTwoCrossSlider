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
    @IBOutlet weak var cross: UIImageView!
    
    
    
    
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
        var pattern = CGRect(x: 153, y: 197, width: 160, height: 225)
        patternImageView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha: 1)
            pattern = CGRect(x: 0, y: 0, width: patternImageView.frame.width, height: patternImageView.frame.height)
       
        let cross = CGRect(x:35, y:165, width:96, height:65)
        let crossBackgroundView = UIView(frame: cross)
        crossBackgroundView.backgroundColor = UIColor(red:254/255, green:204/255, blue:0, alpha:1)
        let leftUp = CGRect(x:0, y:0, width:33, height:21)
        let leftUpBackgroundView = UIView(frame:leftUp)
        leftUpBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        let leftDown = CGRect(x:0, y:(crossBackgroundView.frame.height)/5*3+5, width:33, height:21)
        let leftDownBackgroundView = UIView(frame:leftDown)
        leftDownBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        let rightUp = CGRect(x:(crossBackgroundView.frame.width)-36, y:0, width:33, height:21)
        let rightUpBackgroundView = UIView(frame:rightUp)
        rightUpBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        let rightDown = CGRect(x:(crossBackgroundView.frame.width)-36, y:(crossBackgroundView.frame.height)/5*3+5, width:33, height:21)
        let rightDownBackgroundView = UIView(frame:rightDown)
        rightDownBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        
        crossBackgroundView.addSubview(leftUpBackgroundView)
        crossBackgroundView.addSubview(leftDownBackgroundView)
        crossBackgroundView.addSubview(rightUpBackgroundView)
        crossBackgroundView.addSubview(rightDownBackgroundView)
        patternImageView.addSubview(crossBackgroundView)
        
            donnaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0)
        
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
