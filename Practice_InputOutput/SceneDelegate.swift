//
//  SceneDelegate.swift
//  Practice_InputOutput
//
//  Created by Natasha Radika on 11/07/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let rootVC = ProfileRouter.build()
        window.rootViewController = UINavigationController(rootViewController: rootVC)
        self.window = window
        window.makeKeyAndVisible()
    }
}
