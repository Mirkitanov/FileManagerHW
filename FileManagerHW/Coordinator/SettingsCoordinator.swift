//
//  SettingsCoordinator.swift
//  FileManagerHW
//
//  Created by Админ on 19.05.2022.
//

import UIKit

class SettingsCoordinator: FlowCoordinatorProtocol {
    
    var navigationController: UINavigationController
    weak var mainCoordinator: AppCoordinator?

    init(navigationController: UINavigationController, mainCoordinator: AppCoordinator?) {
        self.navigationController = navigationController
        self.mainCoordinator = mainCoordinator
    }

    func start() {
        
        let settingsVC = SettingsViewController()
        
        settingsVC.flowCoordinator = self
        
        navigationController.pushViewController(settingsVC, animated: true)
    }
    
    func backtoRoot() {
        guard navigationController.viewControllers.count > 0 else { return }

        navigationController.popToRootViewController(animated: true)
    }
    
 
    
    func gotoSortingSettingViewController() {
        let vc = SortingSettingViewController()
        vc.flowCoordinator = self
        
        navigationController.pushViewController(vc, animated: true)
    }

    func gotoLoginViewControllerForChange() {
        let vc = LoginViewController(for: .update)
        vc.flowCoordinator = self
        
        navigationController.pushViewController(vc, animated: true)
    }
}
