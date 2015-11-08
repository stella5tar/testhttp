//
//  ViewController.swift
//  testhttp
//
//  Created by stellastar on 2015-11-07.
//  Copyright © 2015 stellastar. All rights reserved.
//

import Alamofire
import UIKit

class ViewController: UIViewController {

    func postToServerFunction(){

        Alamofire.request(.GET, "http://projecthashtag.website/comm.php?query=getevents")
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    print(JSON[0]["dish"])
                }
        }
        
        let url = NSURL(string: "http://projecthashtag.website/comm.php?query=getevents");
        
        // modify the request as necessary, if necessary
        
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

