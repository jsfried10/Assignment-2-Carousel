//
//  ImageTimelineViewController.swift
//  Assignment 2: Carousel
//
//  Created by Jeremy Friedland on 5/27/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {

    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = feedImage.frame.size
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
