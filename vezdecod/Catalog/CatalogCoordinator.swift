//
//  CatalogCoordinator.swift
//  vezdecod
//
//  Created by Aleksei Gorbunov on 18.06.2022.
//

import Foundation
import UIKit

final class CatalogCoordinator {
    var container: UIViewController = { () -> UINavigationController in
        let navigationController = UINavigationController()
        navigationController.setNavigationBarHidden(true, animated: false)
        return navigationController
    }()

    func start() {
        
    }
}
