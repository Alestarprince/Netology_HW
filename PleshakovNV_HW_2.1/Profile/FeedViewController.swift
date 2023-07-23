//
//  FeedViewController.swift
//  PleshakovNV_HW_2.1
//
//  Created by nikita pleshakov on 17.06.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        title = "Feed"
        view.backgroundColor = .white
    }
}
