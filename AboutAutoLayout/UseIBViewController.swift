//
//  UseIBViewController.swift
//  AboutAutoLayout
//
//  Created by rotors123 on 2017/07/14.
//  Copyright © 2017年 rotors123. All rights reserved.
//

import UIKit

class UseIBViewController: UIViewController {
    
    @IBOutlet weak var textViewLabel: UITextView!
    
    override func viewDidLoad() {

        super.viewDidLoad()

        self.textViewLabel.font = .systemFont(ofSize: 20)
        self.textViewLabel.text = "\(Mirror(reflecting: self).subjectType)"
        self.textViewLabel.textAlignment = NSTextAlignment.center
        
    }
    
}
