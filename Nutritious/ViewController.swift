//
//  ViewController.swift
//  Nutritious
//
//  Created by MinhNT on 11/12/19.
//  Copyright © 2019 MinhNT. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate  {
    
    var wkNutritious: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        wkNutritious.load(myRequest)
    }
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        wkNutritious = WKWebView(frame: .zero, configuration: webConfiguration)
        wkNutritious.uiDelegate = self
//        wkNutritious.
        view = wkNutritious
    }

}

