//
//  GetWildButton.swift
//  AboutAutoLayout
//
//  Created by rotors123 on 2017/07/18.
//  Copyright © 2017年 rotors123. All rights reserved.
//

import UIKit

class GetWildButton: UIButton {

    
    init() {
        super.init(frame: .zero)
    }

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.setTitle("Get Wild!", for: .normal)
        self.titleLabel?.textAlignment = .center
        self.addTarget(self, action: #selector(self.getWild), for: .touchUpInside)

    }
    
    func getWild() {

        let alert = UIAlertController(title: nil, message: "Get wild and tough!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.window?.rootViewController?.present(alert, animated: true, completion: nil)
        
    }
    
}
