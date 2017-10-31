//
//  MainViewController.swift
//  Tag
//
//  Created by Stefano D'Amico on 10/26/17.
//  Copyright © 2017 PlayWithJam. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    let searchView = SearchView()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(searchView)
        
        // TODO: snapkit placement
        
    }
}
