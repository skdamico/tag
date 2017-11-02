//
//  MainViewController.swift
//  Tag
//
//  Created by Stefano D'Amico on 10/26/17.
//  Copyright © 2017 PlayWithJam. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let searchInputViewController = SearchInputViewController()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the Search Input
        searchInputViewController.willMove(toParentViewController: self)
        addChildViewController(searchInputViewController)
        view.addSubview(searchInputViewController.view)
        searchInputViewController.didMove(toParentViewController: self)
        
        searchInputViewController.view.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(view)
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
