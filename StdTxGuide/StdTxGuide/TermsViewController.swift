//
//  TermsViewController.swift
//  StdTxGuide
//
//  Created by jtq6 on 8/14/14.
//  Copyright (c) 2014 jtq6. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {
    
    
    @IBOutlet var webView:UIWebView!
    
    var sc = SiteCatalystService()

    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view, typically from a nib.
        let url = Bundle.main.url(forResource: "terms", withExtension: "html")
        let request = URLRequest(url:url!)
        webView.loadRequest(request)
        self.view.backgroundColor = UIColor(red: 45.0/255.0, green: 88.0/255.0, blue: 167.0/255.0, alpha: 1.0)

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sc.trackNavigationEvent(sc.SC_PAGE_TERMS, section: sc.SC_SECTION_TERMS)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // detailDescriptionLabel.text = "Loaded!"
    }
    
    
    override var prefersStatusBarHidden : Bool {
        return false
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

