//
//  ViewController.swift
//  RickAndMortyiOS
//
//  Created by Abbar on 20/12/2023.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        setUpTabs()
    }
    
    
    private func setUpTabs() {
        
        let charactersVC = RMCharacterViewController()
        let LocationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        LocationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: LocationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: K.characters, image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: K.locations, image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: K.episodes, image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: K.settings, image: UIImage(systemName: "gear"), tag: 4)
        
        let navItems = [nav1, nav2, nav3, nav4]
        
        for nav in navItems {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(navItems, animated: true)
        
    }
    
}

