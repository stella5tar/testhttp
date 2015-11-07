//
//  ViewController.swift
//  testhttp
//
//  Created by stellastar on 2015-11-07.
//  Copyright © 2015 stellastar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func postToServerFunction() {
        
        let url = NSURL(string: "http://projecthashtag.website/comm.php?query=getevents")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        }
        
        task.resume()
        
    }

    @IBAction func myButton(sender: UIButton) {
        postToServerFunction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

