//
//  ConnectingFile.swift
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 19/07/22.
//

import Foundation
import UIKit


@objc(Connect)
class Connect: NSObject {
  @objc func goToNativeView() -> Void {

    DispatchQueue.main.async {
      if #available(iOS 13.0, *) {
        let fcViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "YourViewController") as! YourViewController
        let topController = UIApplication.topMostViewController()
        topController?.present(fcViewController, animated: true, completion: nil)
      } else {
        // Fallback on earlier versions
      }
  
    }
  }
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
