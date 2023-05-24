//
//  PayPage.swift
//  Amazon
//
//  Created by R86 on 11/05/23.
//

import UIKit

class PayPage: UIViewController {

    @IBOutlet weak var webView11: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView11.loadRequest(URLRequest(url: URL(string: "https://www.amazon.in/amazonpay/home")!))
    }
    

}
