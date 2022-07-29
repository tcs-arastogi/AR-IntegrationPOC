//
//  NativeViewController.swift
//  IntegrationPOC
//
//  Created by Aishwarya Rastogi on 21/07/22.
//

import UIKit
import ARFramework

//import LoginViewController

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
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
