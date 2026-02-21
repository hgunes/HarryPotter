//
//  HousesVC.swift
//  HarryPotter
//
//  Created by Harun Gunes on 21/02/2026.
//

import UIKit

class HousesVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        title = "Houses"
    }
}
