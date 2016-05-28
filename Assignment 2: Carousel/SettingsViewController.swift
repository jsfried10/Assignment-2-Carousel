//
//  SettingsViewController.swift
//  Assignment 2: Carousel
//
//  Created by Jeremy Friedland on 5/27/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 887)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didClose(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func didSignOut(sender: AnyObject) {
        let alertController = UIAlertController(title: nil, message: "Are you sure you want to logout?", preferredStyle: .ActionSheet)

     
        let logoutAction = UIAlertAction(title: "Log Out", style: .Destructive) { (action) in
            // handle case of user logging out
            self.performSegueWithIdentifier("logoutSegue", sender: nil)
        }
        // add the logout action to the alert controller
        alertController.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle case of user canceling. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alert controller
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
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
