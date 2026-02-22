//
//  TabBarController.swift
//  HarryPotter
//
//  Created by Harun Gunes on 21/02/2026.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configure()
    }
    
    private func configure() {
        
        let booksVC = BooksVC()
        let charactersVC = CharactersVC()
        let housesVC = HousesVC()
        let spellsVC = SpellsVC()
        let moviesVC = MoviesVC()
        
        let nav1 = UINavigationController(rootViewController: booksVC)
        let nav2 = UINavigationController(rootViewController: charactersVC)
        let nav3 = UINavigationController(rootViewController: housesVC)
        let nav4 = UINavigationController(rootViewController: spellsVC)
        let nav5 = UINavigationController(rootViewController: moviesVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Books",
                                       image: UIImage(systemName: "books.vertical.circle.fill"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person.circle.fill"),
                                       tag: 2)
        
        nav3.tabBarItem = UITabBarItem(title: "Houses",
                                       image: UIImage(systemName: "house.lodge.circle"),
                                       tag: 3)
        
        nav4.tabBarItem = UITabBarItem(title: "Spells",
                                       image: UIImage(systemName: "lasso.and.sparkles"),
                                       tag: 4)
        
        nav5.tabBarItem = UITabBarItem(title: "Movies",
                                       image: UIImage(systemName: "popcorn.fill"),
                                       tag: 5)
        
        let navBars = [nav1, nav2, nav3, nav4, nav5]
        
        for nav in navBars {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(navBars, animated: true)
    }


}

