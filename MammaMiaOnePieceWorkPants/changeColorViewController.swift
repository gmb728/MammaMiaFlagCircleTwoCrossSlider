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
    @IBOutlet weak var circleImageView: UIImageView!
    @IBOutlet weak var crossImageView: UIImageView!
    
    
    
    
    @IBAction func resSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern.png")
        patternImageView.addSubview(donnaImageView)
        
    
    }
    
    @IBAction func greenSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern.png")
        patternImageView.addSubview(donnaImageView)
        
       
        
    }
    @IBAction func blueSliderValueChange(_ sender: Any) {
        let image = UIImage(named: "donna")
        let donnaImageView = UIImageView(image: image)
        let patternImageView = UIImageView(frame: donnaImageView.frame)
        patternImageView.image = UIImage(named: "pattern.png")
        patternImageView.addSubview(donnaImageView)
        
       
    }
    
   
    
    @IBAction func colorSliderChange(_ sender: UISlider) {
        var pattern = CGRect(x: 153, y: 197, width: 155, height: 225)
        patternImageView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha: 1)
            pattern = CGRect(x: 0, y: 0, width: patternImageView.frame.width, height: patternImageView.frame.height)
       
        let circle = CGRect(x:45,y: 170,width: 66, height:68)
        let circleImageView = UIView(frame:circle)
        circleImageView.backgroundColor = UIColor(red:1, green:1, blue: 1, alpha: 1)
        circleImageView.layer.cornerRadius = 34 
        circleImageView.clipsToBounds = true
        
        let cross = CGRect(x:0, y:0, width: circleImageView.frame.width, height:circleImageView.frame.height)
        let crossImageView = UIView(frame:circle)
        crossImageView.backgroundColor = UIColor(red:220/225, green:30/225, blue:53/255, alpha:1)
        
      
        //leftUp1
        let leftUp1 = CGRect(x:0, y:0, width:crossImageView.frame.width/22*7, height:crossImageView.frame.height/16*7)
        let leftUp1ImageView = UIView(frame:leftUp1)
        leftUp1ImageView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha: 1)
        //leftDown1
        let leftDown1 = CGRect(x:0, y:crossImageView.frame.height/16*9, width:crossImageView.frame.width/22*7, height:crossImageView.frame.height/16*7)
        let leftDown1ImageView = UIView(frame:leftDown1)
        leftDown1ImageView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha:1)
        //rightUp1
        let rightUp1 = CGRect(x:crossImageView.frame.width/22*9, y:0, width:crossImageView.frame.width/22*12, height:crossImageView.frame.height/16*7)
        let rightUp1ImageView = UIView(frame:rightUp1)
        rightUp1ImageView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha:1)
        //rightDown1
        let rightDown1 = CGRect(x:crossImageView.frame.width/22*9, y:crossImageView.frame.height/16*9, width:crossImageView.frame.width/22*12, height:crossImageView.frame.height/16*7)
        let rightDown1ImageView = UIView(frame:rightDown1)
        rightDown1ImageView.backgroundColor = UIColor(red: 1, green: 1, blue:1, alpha:1)
        
        //leftUp
        let leftUp = CGRect(x:0, y:0, width:crossImageView.frame.width/11*3, height:crossImageView.frame.height/8*3)
        let leftUpImageView = UIView(frame:leftUp)
        leftUpImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        //leftDown
        let leftDown = CGRect(x:0, y:crossImageView.frame.height/8*5, width:crossImageView.frame.width/11*3, height:crossImageView.frame.height/8*3)
        let leftDownImageView = UIView(frame:leftDown)
        leftDownImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        //rightUp
        let rightUp = CGRect(x:crossImageView.frame.width/11*5, y:0, width:crossImageView.frame.width/11*6, height:crossImageView.frame.height/8*3)
        let rightUpImageView = UIView(frame:rightUp)
        rightUpImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
       //rightDown
        let rightDown = CGRect(x:crossImageView.frame.width/11*5, y:crossImageView.frame.height/8*5, width:crossImageView.frame.width/11*6, height:crossImageView.frame.height/8*3)
        let rightDownImageView = UIView(frame:rightDown)
        rightDownImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:CGFloat(blueSlider.value), alpha: 1)
        
        crossImageView.frame.origin = .zero
        patternImageView.addSubview(circleImageView)
        circleImageView.addSubview(crossImageView)
        
        crossImageView.addSubview(leftUp1ImageView)
        crossImageView.addSubview(leftDown1ImageView)
        crossImageView.addSubview(rightUp1ImageView)
        crossImageView.addSubview(rightDown1ImageView)
        
        leftUp1ImageView.addSubview(leftUpImageView)
        leftDown1ImageView.addSubview(leftDownImageView)
        rightUp1ImageView.addSubview(rightUpImageView)
        rightDown1ImageView.addSubview(rightDownImageView)
        
        crossImageView.addSubview(leftUpImageView)
        crossImageView.addSubview(leftDownImageView)
        crossImageView.addSubview(rightUpImageView)
        crossImageView.addSubview(rightDownImageView)
        
       
        
       
        
      
        
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
