//
//  ViewController.swift
//  MovingSquareTest
//
//  Created by MacStudent on 2020-01-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
@IBOutlet weak var MovingObject: UIImageView!
 var location = CGPoint(x: 0,y: 0)
    
 func moveImage(_ imageView: UIImageView,_ speed:CGFloat) {
   let speeds = speed
  let imageSpeed = speeds / view.frame.size.height
   let averageSpeed = (view.frame.size.height - MovingObject.frame.origin.x) * imageSpeed
   UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
   imageView.frame.origin.y = self.view.frame.size.height
   }, completion: { (_) in
   imageView.frame.origin.y = -imageView.frame.size.height
   self.moveImage(imageView,speeds)
   })
  }
    override func viewDidAppear(_ animated: Bool) {
        moveImage(MovingObject, 10)
    }
}
