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
    var cardInitialCenter: CGPoint!
    
    @IBOutlet weak var imageView: UIImageView!
    
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
        
        var point = panGestureRecognizer.locationInView(view)
        let translation = panGestureRecognizer.translationInView(self.view)
        var velocity = panGestureRecognizer.velocityInView(view)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            cardInitialCenter = trayView.center
            
          } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            
            imageView.center = CGPoint(x: cardInitialCenter.x, y: cardInitialCenter.y + translation.y)
            
       
          } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            
            
        }
        
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
