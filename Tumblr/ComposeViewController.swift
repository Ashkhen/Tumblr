//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Ashkhen Sargsyan on 2/24/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!

    var buttons: [UIButton]!
    var selectedIndex: Int = 0

    let yOffsets: [Float] = [146, 146, 146, 265, 265, 265]
    let delays: [Double] = [0.0, 0.2, 0.3, 0.4, 0.5, 0.6]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clearColor()

        buttons = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBubbleTap(sender: AnyObject) {
//        photoButton.selected = true
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // schedule animations of compose buttons
        setBubblesOnScreen()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // set initial positions of the buttons to below the screen
        setBubblesOffScreen()
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    func setBubblesOffScreen() {

        for i in 0 ..< (buttons.count) {
            buttons[i].frame.origin.y = 600
        }
    }

    func setBubblesOnScreen() {

        for i in 0 ..< (buttons.count) {
            UIView.animateWithDuration(0.3, delay: NSTimeInterval(delays[i]), options: [], animations: {
                () -> Void in
                self.buttons[i].frame.origin.y = CGFloat(self.yOffsets[i])
            },
                    completion: nil)
        }
    }
    
    @IBAction func onNevermindTap(sender: AnyObject) {
        
        for i in 0 ..< (self.buttons.count) {
            UIView.animateWithDuration(0.8, animations: {
                () -> Void in
                self.buttons[i].frame.origin.y = -600
            })
        }
        delay(0.55) { () -> () in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
