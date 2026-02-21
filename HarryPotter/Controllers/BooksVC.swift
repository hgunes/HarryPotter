//
//  BooksVC.swift
//  HarryPotter
//
//  Created by Harun Gunes on 21/02/2026.
//

import UIKit

class BooksVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        title = "Books"
    }
}
