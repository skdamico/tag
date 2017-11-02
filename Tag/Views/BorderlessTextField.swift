//
//  BorderlessTextField.swift
//  Tag
//
//  Created by Stefano D'Amico on 10/31/17.
//  Copyright © 2017 PlayWithJam. All rights reserved.
//

import Foundation
import UIKit

class BorderlessTextField: UITextField {
    init() {
        super.init(frame: .zero)
        
        borderStyle = .line // Debug
        background = nil
        backgroundColor = UIColor.clear
        
        textColor = Style.mainText
        tintColor = Style.mainTint
        
        textAlignment = .center
        contentVerticalAlignment = .center
        
        font = UIFont(name: "NexaThin", size: 28)
        adjustsFontSizeToFitWidth = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func caretRect(for position: UITextPosition) -> CGRect {
        let rect = super.caretRect(for: position)
        return CGRect(x: rect.minX, y: 0, width: 2, height: 80)
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIViewNoIntrinsicMetric, height: 80)
    }
}
