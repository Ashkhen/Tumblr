//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Ashkhen Sargsyan on 2/24/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewDidAppear(animated: Bool) {
        // schedule animations of compose buttons
    }
    
    func viewWillAppear(animated: Bool) {
        // set initial positions of the buttons to below the screen
    }
    
    @IBAction func onNevermindTap(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
