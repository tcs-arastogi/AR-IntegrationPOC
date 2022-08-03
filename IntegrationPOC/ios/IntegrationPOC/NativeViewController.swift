//
//  NativeViewController.swift
//  IntegrationPOC
//
//  Created by Aishwarya Rastogi on 21/07/22.
//

import UIKit
import AR_framework

class NativeViewController: UIViewController {

  @IBOutlet weak var goBackBtn: UIButton!
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func goBackBtnAction(_ sender: UIButton) {
    DispatchQueue.main.async {
      let topController = UIApplication.topMostViewController()
      topController?.dismiss(animated: true, completion: nil)
    }
    
    
    
  }
  
  @IBAction func arFrameworkAction(_ sender: UIButton) {
//    let keyWindow = UIApplication.shared.connectedScenes
//            .filter({$0.activationState == .foregroundActive})
//            .compactMap({$0 as? UIWindowScene})
//            .first?.windows
//            .filter({$0.isKeyWindow}).first
    
    guard let navigation =  self.navigationController else { return }
//
    // ARProjectCoordinator - We are fetching this class from framework
    let coordinator = ARProjectCoordinator(presenter:navigation, project: nil)
    coordinator.start(animated: true)
   
  }
  /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
