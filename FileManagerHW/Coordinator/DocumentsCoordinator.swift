//
//  DocumentsCoordinator.swift
//  FileManagerHW
//
//  Created by Админ on 19.05.2022.
//

import UIKit

class DocumentsCoordinator: FlowCoordinatorProtocol {
    
    var navigationController: UINavigationController
    weak var mainCoordinator: AppCoordinator?

    init(navigationController: UINavigationController, mainCoordinator: AppCoordinator?) {
        self.navigationController = navigationController
        self.mainCoordinator = mainCoordinator
    }

    func start() {
        
        let fileManagerVC = FileManagerViewController(title: "Documents", url: documentsUrl!)
        fileManagerVC.flowCoordinator = self
        
        navigationController.pushViewController(fileManagerVC, animated: true)
    }
    
    func backtoRoot() {
        guard navigationController.viewControllers.count > 0 else { return }

        navigationController.popToRootViewController(animated: true)
    }
}
