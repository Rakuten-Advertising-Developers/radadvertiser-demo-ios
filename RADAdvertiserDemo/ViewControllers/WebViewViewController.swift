//
//  WebViewViewController.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 03.12.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import UIKit
import WebKit

let purchaseExpectedURL = "https://example.com/purchase.html"

class WebViewViewController: UIViewController {

    weak var orderModifier: OrderModifier?

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        addCancelButton()
        loadWebView()
    }

    func addCancelButton() {

        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel,
                                            target: self,
                                            action: #selector(cancelButtonPressed))
        navigationItem.leftBarButtonItem = barButtonItem
    }

    @objc func cancelButtonPressed() {

        dismiss(animated: true)
    }

    func loadWebView() {

        webView.navigationDelegate = self

        let htmlString = """
<form action="https://example.com/purchase.html">
    <input type="submit" value="Purchase" />
</form>
"""
        webView.loadHTMLString(htmlString, baseURL: nil)
    }

    func handlePurchase() {

        orderModifier?.purchase()
        dismiss(animated: true)
    }
}

extension WebViewViewController: WKNavigationDelegate {

    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {

        guard let urlString = navigationResponse.response.url?.absoluteString,
              urlString.hasPrefix(purchaseExpectedURL)
              else {
            decisionHandler(.allow)
            return
        }

        handlePurchase()
        decisionHandler(.cancel)
    }
}
