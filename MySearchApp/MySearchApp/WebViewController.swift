//
//  WebViewController.swift
//  MySearchApp
//
//  Created by AXLT0220-AP on 2022/04/17.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    var itemUrl: String?
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.customUserAgent = "Mozzila/5.0 (iPhone; CPU iPhone OS 15_0_1 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko)  Version/11.0 Mobile/15A402"
        guard let itemUrl = itemUrl else {
            return
        }
        guard let url = URL(string: itemUrl) else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
