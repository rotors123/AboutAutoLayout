//
//  UseAnchorAttributeViewController.swift
//  AboutAutoLayout
//
//  Created by rotors123 on 2017/07/19.
//  Copyright © 2017年 rotors123. All rights reserved.
//

import UIKit

class UseAnchorViewController: UseIBViewController {
    
    @IBOutlet weak var middleFrame: UIView?
    @IBOutlet weak var bottomButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpConstraint()
    }
    
    func setUpConstraint() {
        
        textViewLabel.translatesAutoresizingMaskIntoConstraints = false
        middleFrame?.translatesAutoresizingMaskIntoConstraints = false
        bottomButton?.translatesAutoresizingMaskIntoConstraints = false
        
        if let view = self.view {
            
            // for TextViewLabel
            textViewLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor,
                                              constant: 0).isActive = true
            textViewLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor,
                                              constant: 0).isActive = true
            textViewLabel.topAnchor.constraint(equalTo: view.topAnchor,
                                              constant: 20).isActive = true
            textViewLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
            // for middleFrame
            middleFrame?.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                              constant: -25).isActive = true
            middleFrame?.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                              constant: 25).isActive = true
            middleFrame?.topAnchor.constraint(equalTo: textViewLabel.bottomAnchor,
                                              constant: 20).isActive = true
            
            // for bottomButton
            bottomButton?.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                              constant: -40).isActive = true
            bottomButton?.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                              constant: 40).isActive = true
            bottomButton?.topAnchor.constraint(equalTo: middleFrame!.bottomAnchor,
                                              constant: 8).isActive = true
            bottomButton?.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor,
                                              constant: -8).isActive = true
        }
        
    }
    
}
