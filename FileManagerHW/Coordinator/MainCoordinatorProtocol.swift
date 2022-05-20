//
//  MainCoordinatorProtocol.swift
//  FileManagerHW
//
//  Created by Админ on 19.05.2022.
//

import UIKit

protocol MainCoordinatorProtocol {
    
    var tabBarController: UITabBarController { get set }
    var flowCoordinators: [FlowCoordinatorProtocol] { get set }

    func start()
}
