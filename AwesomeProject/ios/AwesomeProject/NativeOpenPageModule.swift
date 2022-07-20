//
//  NativeOpenPageModule.swift
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 20/07/22.
//


import Foundation
import React

@objc(NativeOpenPageModule)
class NativeOpenPageModule: RCTEventEmitter {
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func supportedEvents() -> [String]! {
    return []
  }
  
  @objc
  func navigateToLandingPage(_ value: String) -> Void {
    // Native Code will get called - navigating to Find Care page
    NSLog(value);
    DispatchQueue.main.async {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let fcViewController = storyboard.instantiateViewController(withIdentifier: "FindCareViewController") as! FindCareViewController
        
      if #available(iOS 13.0, *) {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let sceneDelegate = windowScene?.delegate as? SceneDelegate
        let navvc = sceneDelegate?.window?.rootViewController as? UINavigationController
//        let tabvc = sceneDelegate?.window?.rootViewController as? UITabBarController
//        let navbar = tabvc?.viewControllers?[tabvc?.selectedIndex ?? 3 ] as? UINavigationController
        navvc?.pushViewController(fcViewController, animated: true)
      } else {
        // Fallback on earlier versions
      }
       
    }
    
    
  }
}
