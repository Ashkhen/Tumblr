//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Ashkhen Sargsyan on 2/24/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeedImage: UIImageView!
    @IBOutlet weak var loadingImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        searchFeedImage.hidden = true
        loadingImage.hidden = false
        loadingImage.image = UIImage(named: "loading-1")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var images: [UIImage] = []
        for i in 1...3 {
            images.append(UIImage(named: "loading-\(i)")!)
        }
        
        loadingImage.animationImages = images
        loadingImage.animationDuration = 1.99
        loadingImage.startAnimating()
        
        delay(2) { () -> () in
            self.searchFeedImage.hidden = false
            self.loadingImage.hidden = true
            self.loadingImage.stopAnimating()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
}
