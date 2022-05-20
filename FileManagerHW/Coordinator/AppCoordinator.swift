//
//  AppCoordinator.swift
//  FileManagerHW
//
//  Created by Админ on 19.05.2022.
//

import UIKit

class AppCoordinator: MainCoordinatorProtocol {
    
    /// Documents  tab bar navigation
    lazy var documentsNavigationController: UINavigationController = {
        var navigationController = UINavigationController()
        let title = "Documents"
        let image = UIImage(systemName: "note.text")
        navigationController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        return navigationController
    }()
    
    /// Settings tab bar navigation
    lazy var settingsNavigationController: UINavigationController = {
        var navigationController = UINavigationController()
        let title = "Settings"
        let image = UIImage(systemName: "wrench.and.screwdriver")
        navigationController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        return navigationController
    }()
    
    var tabBarController: UITabBarController
    var flowCoordinators = [FlowCoordinatorProtocol]()

    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    func start() {
        flowCoordinators = [
            DocumentsCoordinator(navigationController: documentsNavigationController, mainCoordinator: self),
            SettingsCoordinator(navigationController: settingsNavigationController, mainCoordinator: self)
        ]
        
        for coordinator in flowCoordinators {
            coordinator.start()
        }
        
        /// Add tab bars controllers
        tabBarController.viewControllers = [documentsNavigationController, settingsNavigationController]
    }
}
