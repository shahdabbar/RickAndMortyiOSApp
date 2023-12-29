//
//  RMCharacterViewController.swift
//  RickAndMortyiOS
//
//  Created by Abbar on 20/12/2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        title = K.characters
        
        let request = RMRequest(
            endpoint: .character,
            pathComponents: ["1"],
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url!)
        
        RMService.shared.execute(request, expecting: String.self) { result in
//            switch result {
//            case .success()
//            }
        }
    }
}
