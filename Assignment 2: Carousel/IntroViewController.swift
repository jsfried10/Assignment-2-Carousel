//
//  IntroViewController.swift
//  Assignment 2: Carousel
//
//  Created by Jeremy Friedland on 5/25/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var introImage: UIImageView!
   
    @IBOutlet weak var introImageOne: UIImageView!
    @IBOutlet weak var introImageTwo: UIImageView!
    @IBOutlet weak var introImageThree: UIImageView!
    @IBOutlet weak var introImageFour: UIImageView!
    @IBOutlet weak var introImagefive: UIImageView!
    @IBOutlet weak var introImageSix: UIImageView!
    
    var yOffsets : [Float] = [-285, -370, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 10, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = introImage.frame.size
        scrollView.delegate = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
    
        var offset = CGFloat(scrollView.contentOffset.y)
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[0]), r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[0]), r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[0]), r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[0]), r2Max: 0)

        introImageOne.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introImageOne.transform = CGAffineTransformScale(introImageOne.transform, CGFloat(scale), CGFloat(scale))
        introImageOne.transform = CGAffineTransformRotate(introImageOne.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        
        
        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[1]), r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[1]), r2Max: 0)
        var scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[1]), r2Max: 1)
        var rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[1]), r2Max: 0)
        
        introImageTwo.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        introImageTwo.transform = CGAffineTransformScale(introImageTwo.transform, CGFloat(scale1), CGFloat(scale1))
        introImageTwo.transform = CGAffineTransformRotate(introImageTwo.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[2]), r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[2]), r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[2]), r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[2]), r2Max: 0)
        
        introImageThree.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty2))
        introImageThree.transform = CGAffineTransformScale(introImageThree.transform, CGFloat(scale2), CGFloat(scale2))
        introImageThree.transform = CGAffineTransformRotate(introImageThree.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[3]), r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[3]), r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[3]), r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[3]), r2Max: 0)
        
        introImageFour.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty3))
        introImageFour.transform = CGAffineTransformScale(introImageFour.transform, CGFloat(scale3), CGFloat(scale3))
        introImageFour.transform = CGAffineTransformRotate(introImageFour.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[4]), r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[4]), r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[4]), r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[4]), r2Max: 0)
        
        introImagefive.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty4))
        introImagefive.transform = CGAffineTransformScale(introImagefive.transform, CGFloat(scale4), CGFloat(scale4))
        introImagefive.transform = CGAffineTransformRotate(introImagefive.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[5]), r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[5]), r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[5]), r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[5]), r2Max: 0)
        
        introImageSix.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty5))
        introImageSix.transform = CGAffineTransformScale(introImageSix.transform, CGFloat(scale5), CGFloat(scale5))
        introImageSix.transform = CGAffineTransformRotate(introImageSix.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
    
    }
    
    
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
