//
//  ViewController.swift
//  PDF_Viewer
//
//  Created by Jose Ramos on 4/20/18.
//  Copyright © 2018 Jose Ramos. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "KaitlinWorksheet", ofType: "pdf");
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        
        pdfView.load(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

