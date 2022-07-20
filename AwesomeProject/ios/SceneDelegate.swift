//
//  SceneDelegate.swift
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 20/07/22.
//

import Foundation
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {


    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
       
//        let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
//        //      let jsBundleLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
//        //The data is used as initialProperties to React Native App.
//        let data:NSDictionary = [:] //["data":"itemselected"]; //We can use this parameter to pass the data to the React native App from the Native App.
//        //The RCTRootView is a native view used to host React-managed views within the app. Can be used just like any ordinary UIView.
//
//        let rootView = RCTRootView(
//                bundleURL: jsBundleLocation!,
//                moduleName: "walgreen",
//                initialProperties: data as [NSObject : AnyObject],
//                launchOptions: nil)
//
//        if let windowScene = scene as? UIWindowScene {
//            let window = UIWindow(windowScene: windowScene)
//
//            let vc = UIViewController()
//            vc.view = rootView
//            let initialViewController = UINavigationController(rootViewController: vc)
//            window.rootViewController = initialViewController
//            self.window = window
//            window.makeKeyAndVisible()
//        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

