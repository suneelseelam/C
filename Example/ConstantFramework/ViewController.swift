//
//  ViewController.swift
//  ConstantFramework
//
//  Created by suneelseelam on 12/05/2017.
//  Copyright (c) 2017 suneelseelam. All rights reserved.
//

import UIKit
import ConstantFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Reachablilityswift.Instance.callInternetConnection()
        if Reachablilityswift.Instance.networkConnectionBool == true{
            print("connected")
        }else{ print("not connected")}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

