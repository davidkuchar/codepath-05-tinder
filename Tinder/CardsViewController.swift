//
//  CardsViewController.swift
//  Tinder
//
//  Created by David Kuchar on 6/3/15.
//  Copyright (c) 2015 David Kuchar. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet var imageSwipe: UIPanGestureRecognizer!
    @IBOutlet weak var imageView: UIImageView!
    
    var cardInitialCenter: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nav = self.navigationController?.navigationBar
        // 2
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.yellowColor()
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        // 4
        let image = UIImage(named: "nav_bar.png")
        imageView.image = image
        nav?.setBackgroundImage(image, forBarMetrics: .Default)

        // Dispose of any resources that can be recreated.

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    @IBAction func onPanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        
        println("test")
        
        var point = panGestureRecognizer.locationInView(view)
        var velocity = panGestureRecognizer.velocityInView(view)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            cardInitialCenter = imageView.center
          } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            let translation = panGestureRecognizer.translationInView(self.view)
            
            println(translation)

            imageView.center = CGPoint(x: cardInitialCenter.x, y: cardInitialCenter.y + translation.y)
            
       
          } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            
            
        }
//        
//        var point = panGestureRecognizer.locationInView(view)
//        var velocity = panGestureRecognizer.velocityInView(view)
//        
//        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
//            println("Gesture began at: \(point)")
//            trayOriginalCenter = trayView.center
//        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
//            println("Gesture changed at: \(point)")
//            var translation_y = point.y - trayOriginalCenter.y
//            var newCenter = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation_y)
//            if newCenter.y <= trayUp.y {
//                trayView.center = newCenter
//            }
//        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
//            if velocity.y > 0 {
//                println("going down")
//                UIView.animateWithDuration(0.5, animations: { () -> Void in
//                    self.trayView.center = self.trayDown
//                })
//                //                UIView.animateWithDuration(0.5, delay: 0.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: <#UIViewAnimationOptions#>, animations: { () -> Void in
//                //
//                //                }, completion: { (<#Bool#>) -> Void in
//                //                    self.trayView.center = self.trayDown
//                //                })
//            } else {
//                println("going up")
//                trayView.center = trayUp
//            }
//            println("Gesture ended at: \(point)")
//        }
//        println(trayView.center)
//        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
