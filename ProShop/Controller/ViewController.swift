//
//  ViewController.swift
//  ProShop
//
//  Created by kousha ghodsizad on 11/1/18.
//  Copyright © 2018 kousha ghodsizad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLoadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var loadingView: UntitledView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingView.addLoadingAnimation()
        UIView.animate(withDuration: 1.0, animations: {
            self.topLoadingConstraint.constant = -80
            self.view.layoutIfNeeded()
        }) { (status) in
            if status {
                self.loadingView.isHidden = false
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

