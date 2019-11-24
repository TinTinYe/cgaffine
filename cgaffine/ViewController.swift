//
//  ViewController.swift
//  cgaffine
//
//  Created by Yvonne on 2019/11/17.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // var rabbitImage = UIImage(named: "rabbit")
    
    
    //var lionImageView = UIImageView(image: lionImage)
  // var rabbitImageView = UIImageView(image:rabbitImage)
    //penImageView 如果設在這裡會只有一個圖
//    let penImageView = UIImageView(image:UIImage( named: "rabbit"))
    
    
    func getRabbit(X: CGFloat, Y: CGFloat, rotateDegree: CGFloat, scale: CGFloat) {
        
        
        let penImageView = UIImageView(image:UIImage( named: "rabbit"))
        
        let rabbitDegree = CGFloat.pi/180
      
        
        
        penImageView.transform = CGAffineTransform(translationX: X, y:Y).rotated(by: rabbitDegree * rotateDegree).scaledBy(x: scale, y: scale)
        
        
        view.addSubview(penImageView)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   //3種transfer縮方 位移 旋轉
        //rabbitImageView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
       // rabbitImageView.transform = CGAffineTransform(translationX: -100, y: 100)
  //let rabbitDegree = CGFloat.pi/180
       // rabbitImageView.transform = CGAffineTransform(rotationAngle: rabbitDegree*45)
    //綜合以上3種transfer
 //  penImageView.transform = CGAffineTransform.identity.scaledBy(x: 0.2, y: 0.2).translatedBy(x: -100, y: 100).rotated(by: rabbitDegree*45)
     //全部寫到FUNC裡
   // view.addSubview(penImageView)
 //呼叫fUNC
        
        getRabbit(X: -150, Y: 50, rotateDegree: 0, scale: 0.5)
//
        getRabbit(X: -100, Y:150, rotateDegree: 30, scale: 0.3)
//
        getRabbit(X: -80, Y: 200, rotateDegree: 45, scale: 0.2)
//
    
    }


}

