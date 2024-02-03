//
//  WebViewController.swift
//  B202212028ksy
//
//  Created by comsoft on 2023/12/04.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goWeb(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            let myURL = URL(string:"https://www.naver.com")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest) }
        else {
            let myURL = URL(string:"https://m.daum.net")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://jessica31025.tistory.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)

        // Do any additional setup after loading the view.
    }

    @IBAction func GoGoogle(_ sender: UIButton) {
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
