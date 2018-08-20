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
        var pattern = CGRect(x: 153, y: 197, width: 155, height: 225)
        patternImageView.backgroundColor = UIColor(red: 225, green: 255, blue:255, alpha: 1)
            pattern = CGRect(x: 0, y: 0, width: patternImageView.frame.width, height: patternImageView.frame.height)
        let cross = CGRect(x:35, y:165, width:100, height:68)
        let crossBackgroundView = UIView(frame: cross)
        crossBackgroundView.backgroundColor = UIColor(red:220/225, green:30/225, blue:53/255, alpha:1)
       
        //leftUp1
        let leftUp1 = CGRect(x:0, y:0, width:crossBackgroundView.frame.width/22*7, height:crossBackgroundView.frame.height/16*7)
        let leftUp1BackgroundView = UIView(frame:leftUp1)
        leftUp1BackgroundView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha: 1)
        //leftDown1
        let leftDown1 = CGRect(x:0, y:crossBackgroundView.frame.height/16*9, width:crossBackgroundView.frame.width/22*7, height:crossBackgroundView.frame.height/16*7)
        let leftDown1BackgroundView = UIView(frame:leftDown1)
        leftDown1BackgroundView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha:1)
        //rightUp1
        let rightUp1 = CGRect(x:crossBackgroundView.frame.width/22*9, y:0, width:crossBackgroundView.frame.width/22*12, height:crossBackgroundView.frame.height/16*7)
        let rightUp1BackgroundView = UIView(frame:rightUp1)
        rightUp1BackgroundView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha:1)
        //rightDown1
        let rightDown1 = CGRect(x:crossBackgroundView.frame.width/22*9, y:crossBackgroundView.frame.height/16*9, width:crossBackgroundView.frame.width/22*12, height:crossBackgroundView.frame.height/16*7)
        let rightDown1BackgroundView = UIView(frame:rightDown1)
        rightDown1BackgroundView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha:1)
        
        //leftUp
        let leftUp = CGRect(x:0, y:0, width:crossBackgroundView.frame.width/11*3, height:crossBackgroundView.frame.height/8*3)
        let leftUpBackgroundView = UIView(frame:leftUp)
        leftUpBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        //leftDown
        let leftDown = CGRect(x:0, y:crossBackgroundView.frame.height/8*5, width:crossBackgroundView.frame.width/11*3, height:crossBackgroundView.frame.height/8*3)
        let leftDownBackgroundView = UIView(frame:leftDown)
        leftDownBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        //rightUp
        let rightUp = CGRect(x:crossBackgroundView.frame.width/11*5, y:0, width:crossBackgroundView.frame.width/11*6, height:crossBackgroundView.frame.height/8*3)
        let rightUpBackgroundView = UIView(frame:rightUp)
        rightUpBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
       //rightDown
        let rightDown = CGRect(x:crossBackgroundView.frame.width/11*5, y:crossBackgroundView.frame.height/8*5, width:crossBackgroundView.frame.width/11*6, height:crossBackgroundView.frame.height/8*3)
        let rightDownBackgroundView = UIView(frame:rightDown)
        rightDownBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        
        
         patternImageView.addSubview(crossBackgroundView)
        crossBackgroundView.addSubview(leftUp1BackgroundView)
        crossBackgroundView.addSubview(leftDown1BackgroundView)
        crossBackgroundView.addSubview(rightUp1BackgroundView)
        crossBackgroundView.addSubview(rightDown1BackgroundView)
        
        leftUp1BackgroundView.addSubview(leftUpBackgroundView)
        leftDown1BackgroundView.addSubview(leftDownBackgroundView)
        rightUp1BackgroundView.addSubview(rightUpBackgroundView)
        rightDown1BackgroundView.addSubview(rightDownBackgroundView)
        
        crossBackgroundView.addSubview(leftUpBackgroundView)
        crossBackgroundView.addSubview(leftDownBackgroundView)
        crossBackgroundView.addSubview(rightUpBackgroundView)
        crossBackgroundView.addSubview(rightDownBackgroundView)
        
       
        
       
        
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
