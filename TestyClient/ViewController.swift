//
//  ViewController.swift
//  TestyClient
//
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit
import APIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.request()
    }
    
    func request() {
        let request = TestyApi()
        Session.send(request) {
            switch $0 {
            case let .success(testies):
                print("success")
                testies.testies.forEach {
                    print("id: \($0.id), uri: \($0.uri), domain: \($0.domain)")
                }
            case let .failure(error):
                print("failure")
                print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

