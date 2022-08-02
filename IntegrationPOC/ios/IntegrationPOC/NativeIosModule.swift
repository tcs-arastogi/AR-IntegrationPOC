//
//  NativeIosModule.swift
//  IntegrationPOC
//
//  Created by Aishwarya Rastogi on 21/07/22.
//

import Foundation

@objc(NativeIosModule)
class NativeIosModule: RCTEventEmitter {
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func supportedEvents() -> [String]! {
    return []
  }
  
  @objc
  func navigateToNativePage(_ value: String) -> Void {
    // Native Code will get called - navigating to Find Care page
    NSLog(value);
    DispatchQueue.main.async {
      let storyboard = UIStoryboard.init(name: "main", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "NativeViewController") as! NativeViewController
      let navigationController = UINavigationController(rootViewController: vc)

            
      let topController = UIApplication.topMostViewController()
      topController?.present(navigationController, animated: true, completion: nil)
      
    }
  }
  
//  @objc
//  func goBack() -> Void {
//    DispatchQueue.main.async {
//      let topController = UIApplication.topMostViewController()
//      topController?.dismiss(animated: true, completion: nil)
//    }
//  }
}

extension UIApplication {
  class func topMostViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
    if let navigationController = controller as? UINavigationController {
      return topMostViewController(controller: navigationController.visibleViewController)
    }
    if let tabController = controller as? UITabBarController {
      if let selected = tabController.selectedViewController {
        return topMostViewController(controller: selected)
      }
    }
    if let presented = controller?.presentedViewController {
      return topMostViewController(controller: presented)
    }
    return controller
  }
}
