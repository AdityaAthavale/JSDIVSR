//
//  ViewController.swift
//  JSDIVSR
//
//  Created by Athavale, Aditya on 8/31/21.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    private let urlString = "https://www.jsdivsr.in"
    
    private var webView: WKWebView = {
        let config = WKWebViewConfiguration()
        config.allowsAirPlayForMediaPlayback = false
        let webView = WKWebView(frame: CGRect.zero, configuration: config)
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: urlString) else { return }
        configureView()
        webView.load(URLRequest(url: url))
    }
    
    func configureView() {
        view.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5),
            webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}

