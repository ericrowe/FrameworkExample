//
//  ViewController.swift
//  FrameworkExample
//
//  Created by ericrowe on 04/28/2017.
//  Copyright (c) 2017 ericrowe. All rights reserved.
//

import UIKit
import FrameworkExample

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        RPNMath.shared.push(value: 2)
        RPNMath.shared.push(value: 2)
        RPNMath.shared.add()
        if let answer = RPNMath.shared.stack.first {
            label.text = "\(answer)"
        }
    }

}

