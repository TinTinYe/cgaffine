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
    let penImageView = UIImageView(image:UIImage( named: "penge"))
    
    func getRabbit(X: CGFloat, Y: CGFloat, rotateDegree: CGFloat, scale: CGFloat) {
        
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
        
  getRabbit(X: 100, Y: 100, rotateDegree: 45, scale: 1)
//
  getRabbit(X: 100, Y:100, rotateDegree: 30, scale: 0.5)
//
 getRabbit(X: -50, Y: 150, rotateDegree: 45, scale: 0.2)
//
    
    }


}

