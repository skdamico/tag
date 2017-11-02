//
//  SearchInputViewController.swift
//  Tag
//
//  Created by Stefano D'Amico on 10/31/17.
//  Copyright © 2017 PlayWithJam. All rights reserved.
//

import Foundation
import UIKit

class SearchInputViewController: UIViewController {
    
    let searchView = SearchInputView()
    
    override func loadView() {
        let view = searchView
        searchView.textField.delegate = self
        
        self.view = view
    }
}

extension SearchInputViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.placeholder = nil
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let text = textField.text, text.count < 1 {
            textField.placeholder = searchView.placeholderText
        }
    }
}
