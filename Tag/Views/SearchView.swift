//
//  BorderlessTextView.swift
//  Tag
//
//  Created by Stefano D'Amico on 10/18/17.
//  Copyright © 2017 PlayWithJam. All rights reserved.
//

import Foundation
import UIKit

class SearchView: UITextField {
    
    init() {
        super.init(frame: .zero)
        
        borderStyle = .none
        background = nil
        backgroundColor = UIColor.clear
        
        textAlignment = .center
        textColor = UIColor.init(hue: 204, saturation: 3, brightness: 60, alpha: 100)
        font = UIFont(name: "Nexa Thin", size: 30)

        placeholder = "Search for tags"
        adjustsFontSizeToFitWidth = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func caretRect(for position: UITextPosition) -> CGRect {
        var rect = super.caretRect(for: position)
        rect.size.width = 2
        rect.size.height = 80
        
        return rect
    }
}
