//
//  SceneDelegate.swift
//  PleshakovNV_HW_2.1
//
//  Created by nikita pleshakov on 12.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        let tabBarController = UITabBarController()
        
        let feedTab = FeedViewController()
        // feedUser.title = "Feed"
        // feedUser.view.backgroundColor = .systemYellow
        
        let profileTab = ProfileViewController()
        // profileUser.title = "Profile"
        // profileUser.view.backgroundColor = .systemRed
        
        feedTab.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "house.fill"), tag: 0)
        // UITabBarItem(tabBarSystemItem: .history, tag: 0)
        profileTab.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        
        let controllers = [feedTab, profileTab]
        tabBarController.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }
        tabBarController.selectedIndex = 0
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}
