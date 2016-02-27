//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Ashkhen Sargsyan on 2/25/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginFormImageView: UIImageView!
    @IBOutlet weak var loginFormView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.clearColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancelTap(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
