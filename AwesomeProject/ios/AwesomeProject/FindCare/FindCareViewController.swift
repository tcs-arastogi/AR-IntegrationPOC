//
//  FindCareViewController.swift
//  SwiftApp
//
//  Created by Shruthi Salian on 02/12/21.
//  Copyright © 2021 Shruthi Salian. All rights reserved.
//

import UIKit

class FindCareViewController: UIViewController {
    
    @IBAction func findcareDetailButtonTapped(sender : UIButton) {
        let fcdViewController = self.storyboard?.instantiateViewController(withIdentifier: "FindCareDetailViewController") as! FindCareDetailViewController
        self.navigationController?.pushViewController(fcdViewController, animated: true)
    }
}


