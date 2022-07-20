
import UIKit

class FindCareViewController: UIViewController {
    
    @IBAction func findcareDetailButtonTapped(sender : UIButton) {
        let fcdViewController = self.storyboard?.instantiateViewController(withIdentifier: "FindCareDetailViewController") as! FindCareDetailViewController
        self.navigationController?.pushViewController(fcdViewController, animated: true)
    }
}


