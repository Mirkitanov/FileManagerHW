//
//  FlowCoordinatorProtocol.swift
//  FileManagerHW
//
//  Created by Админ on 19.05.2022.
//

import UIKit

protocol FlowCoordinatorProtocol {
    var mainCoordinator: AppCoordinator? { get set }
    var navigationController: UINavigationController { get set }

    func start()
    func backtoRoot()
}
