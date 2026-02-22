//
//  MoviesVC.swift
//  HarryPotter
//
//  Created by Harun Gunes on 22/02/2026.
//

import UIKit

class MoviesVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        title = "Movies"
    }
}
