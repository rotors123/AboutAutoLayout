//
//  UseVFLViewController.swift
//  AboutAutoLayout
//
//  Created by rotors123 on 2017/07/14.
//  Copyright © 2017年 rotors123. All rights reserved.
//

import UIKit

class UseVFLViewController: UseIBViewController {
    
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
        
        let horizontalConstraintsTop = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[textViewLabel]-|", // use Standard Space.
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["textViewLabel": textViewLabel])
        NSLayoutConstraint.activate(horizontalConstraintsTop)
        
        let horizontalConstraintsMiddle = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-25-[middleFrame]-25-|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["middleFrame": middleFrame!,
                    "": self.edgesForExtendedLayout])
        NSLayoutConstraint.activate(horizontalConstraintsMiddle)
        
        let horizontalConstraintsBottom = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-40-[bottomFrame]-40-|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["bottomFrame": bottomButton!])
        NSLayoutConstraint.activate(horizontalConstraintsBottom)
        
        let verticalConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-20-[textViewLabel(==50)]-20-[middleFrame]-[bottomFrame]-[bottomLayoutGuide]|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["textViewLabel": textViewLabel,
                    "middleFrame": middleFrame!,
                    "bottomFrame": bottomButton!,
                    "bottomLayoutGuide": self.bottomLayoutGuide,
                    ])
        
        NSLayoutConstraint.activate(verticalConstraints)
        
    }
    
}

