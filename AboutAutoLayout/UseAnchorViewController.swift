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
        
        
        // for TextViewLabel
        
        let traingSpaceTextViewLabel = NSLayoutConstraint(item: textViewLabel,
                                                     attribute: .trailing,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .trailingMargin,
                                                     multiplier: 1,
                                                     constant: 0)
        
        let leadingSpaceTextViewLabel = NSLayoutConstraint(item: textViewLabel,
                                                     attribute: .leading,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .leadingMargin,
                                                     multiplier: 1,
                                                     constant: 0)
        
        let topSpaceTextViewLabel = NSLayoutConstraint(item: textViewLabel,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .topMargin,
                                                     multiplier: 1,
                                                     constant: 20)
        
        let heightTextViewLabel = NSLayoutConstraint(item: textViewLabel,
                                                     attribute: .height,
                                                     relatedBy: .equal,
                                                     toItem: nil,
                                                     attribute: .height,
                                                     multiplier: 1,
                                                     constant: 50)
        
        // for middleFrame
        
        let trailingSpaceMiddleFrame = NSLayoutConstraint(item: middleFrame!,
                                                     attribute: .trailing,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .trailing,
                                                     multiplier: 1,
                                                     constant: -25)

        let leadingSpaceMiddleFrame = NSLayoutConstraint(item: middleFrame!,
                                                     attribute: .leading,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .leading,
                                                     multiplier: 1,
                                                     constant: 25)
        
        let topSpaceMiddleFrame = NSLayoutConstraint(item: middleFrame!,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: textViewLabel,
                                                     attribute: .bottom,
                                                     multiplier: 1,
                                                     constant: 20)
        
        // for bottomButton
        
        let trailingSpaceBottomButton = NSLayoutConstraint(item: self.view,
                                                     attribute: .trailing,
                                                     relatedBy: .equal,
                                                     toItem: bottomButton,
                                                     attribute: .trailing,
                                                     multiplier: 1,
                                                     constant: 40)
        
        let leadingSpaceBottomButton = NSLayoutConstraint(item: bottomButton!,
                                                     attribute: .leading,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .leading,
                                                     multiplier: 1,
                                                     constant: 40)
        
        let topSpaceBottomButton = NSLayoutConstraint(item: bottomButton!,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: middleFrame!,
                                                     attribute: .bottom,
                                                     multiplier: 1,
                                                     constant: 8)
        
        let bottomSpaceBottomButton = NSLayoutConstraint(item: bottomLayoutGuide,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: bottomButton,
                                                     attribute: .bottom,
                                                     multiplier: 1,
                                                     constant: 8) // can't use Standard Constant.
        
        NSLayoutConstraint.activate([
            
            traingSpaceTextViewLabel,
            leadingSpaceTextViewLabel,
            topSpaceTextViewLabel,
            heightTextViewLabel,
            
            trailingSpaceMiddleFrame,
            leadingSpaceMiddleFrame,
            topSpaceMiddleFrame,
            
            trailingSpaceBottomButton,
            leadingSpaceBottomButton,
            topSpaceBottomButton,
            bottomSpaceBottomButton,
            
            ])
        
    }
    
}
