//
//  ViewController.swift
//  SimpleExampleSwift
//
//  Created by Elijah Windsor on 12/15/16.
//  Copyright © 2016 Kocomojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: KocomojoButton?;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.button?.enabledImageName = "kocomojo";
        self.button?.disabledImageName = "kocomojo_disabled";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

