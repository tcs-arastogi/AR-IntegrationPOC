//
//  YourViewController.swift
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 19/07/22.
//

import UIKit
import React


class YourViewController: UIViewController {
  var onClick: RCTBubblingEventBlock?

    override func viewDidLoad() {
        super.viewDidLoad()
      setupView()
        // Do any additional setup after loading the view.
    }
  private func setupView() {
    self.view.backgroundColor = UIColor.green
   
    self.view.isUserInteractionEnabled = true
   
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

