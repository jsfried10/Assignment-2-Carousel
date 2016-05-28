//
//  TutorialViewcontroller.swift
//  Assignment 2: Carousel
//
//  Created by Jeremy Friedland on 5/27/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class TutorialViewcontroller: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var didTake: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        didTake.alpha = 0
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        pageControl.numberOfPages = 4
        
        if page == 3 {
            
            UIView.animateWithDuration(0.2, animations: {
            self.pageControl.alpha = 0
            self.didTake.alpha = 1
             })
        
        } else {
            UIView.animateWithDuration(0.2, animations: {
                self.pageControl.alpha = 1
                self.didTake.alpha = 0
            })
        
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
