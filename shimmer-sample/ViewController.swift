//
//  ViewController.swift
//  shimmer-sample
//
//  Created by Hiroki Matsue on 2016/12/12.
//  Copyright © 2016 Hiroki Matsue. All rights reserved.
//

import UIKit
import Shimmer

class ViewController: UIViewController {

    @IBOutlet weak var shimmeringView: FBShimmeringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shimmeringView.isShimmering = true
        shimmeringView.shimmeringBeginFadeDuration = 0.3
        shimmeringView.shimmeringOpacity = 0.3
        
        let contentView = UINib(nibName: "ContentView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
        contentView.frame = shimmeringView.frame
        shimmeringView.contentView = contentView
    }

}

