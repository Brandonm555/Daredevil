//
//  EvidenceGalleryViewController.swift
//  DareDevil
//
//  Created by Bruce on 9/15/16.
//  Copyright © 2016 Bruce. All rights reserved.
//

import UIKit

class EvidenceGalleryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("EvidenceGal did load")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("EvidenceGalleryViewController viewWillAppear")
    }
    
    
}

