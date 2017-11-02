//
//  SearchInputView.swift
//  Tag
//
//  Created by Stefano D'Amico on 10/18/17.
//  Copyright © 2017 PlayWithJam. All rights reserved.
//

import Foundation
import UIKit

class SearchInputView: UIView {
    
    let textField = BorderlessTextField()
    let placeholderText = "Search for tags"
    
    init() {
        super.init(frame: .zero)
        
        // Debug
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        
        // Add TextField
        textField.placeholder = placeholderText
        
        addSubview(textField)
        
        textField.snp.makeConstraints { (make) in
            make.left.right.equalTo(self).inset(10)
            make.bottom.equalTo(self).inset(10)
            make.top.equalTo(self).inset(30)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIViewNoIntrinsicMetric, height: 120)
    }
}
