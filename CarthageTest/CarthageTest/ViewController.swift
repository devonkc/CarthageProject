//
//  ViewController.swift
//  CarthageTest
//
//  Created by Devon on 2015-01-04.
//  Copyright (c) 2015 Devon. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Alamofire.request(.GET, "http://www.apple.com", parameters: nil)
            .responseJSON { _, _, responseObject, error in
                if error == nil {
                    println(responseObject)
                } else {
                    println(error)
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

