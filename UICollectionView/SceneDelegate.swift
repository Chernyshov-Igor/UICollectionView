//
//  SceneDelegate.swift
//  UICollectionView
//
//  Created by Игорь Чернышов on 23.06.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let viewController = ViewController()
        let emptyViewController = EmptyViewController()
        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .lightGray

        let oneNavigationController = UINavigationController(rootViewController: emptyViewController)
        oneNavigationController.tabBarItem = UITabBarItem(title: "Медиатека",
                                                          image: UIImage(systemName: "photo.fill.on.rectangle.fill"),
                                                          tag: 0)
        let twoNavigationController = UINavigationController(rootViewController: emptyViewController)
        twoNavigationController.tabBarItem = UITabBarItem(title: "Для Вас",
                                                          image: UIImage(systemName: "heart.text.square.fill"),
                                                          tag: 1)
        let treeNavigationController = UINavigationController(rootViewController: viewController)
        treeNavigationController.tabBarItem = UITabBarItem(title: "Альбомы",
                                                           image: UIImage(systemName: "folder.fill"),
                                                           tag: 2)
        let fourNavigationController = UINavigationController(rootViewController: emptyViewController)
        fourNavigationController.tabBarItem = UITabBarItem(title: "Поиск",
                                                           image: UIImage(systemName: "magnifyingglass"),
                                                           tag: 3)

        tabBarController.setViewControllers([oneNavigationController,
                                            twoNavigationController,
                                            treeNavigationController,
                                            fourNavigationController],
                                            animated: false)

        guard let windowScene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }



}

