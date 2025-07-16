//
//  VCoiceFilter ntroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import SVProgressHUD

class VCoiceFilter_ntroller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showSuccessHUD(message: nil)
    }
    @IBOutlet weak var darkMode: UITextField!
   
    @IBAction func OIDShu(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    @IBAction func sendComamentFore(_ sender: Any) {
        
        guard let commentff = darkMode.text ,!commentff.isEmpty  else {
            SVProgressHUD.showInfo(withStatus: "Please enter comment first!")
            return
        }
       
        self.showSuccessHUD(message: "send Successful!,Comments will be displayed after approval"){
            self.darkMode.text = nil
            self.darkMode.resignFirstResponder()
        }
       
    }
}


extension UIViewController {
    func showSuccessHUD(after delay: TimeInterval = 1.2, message: String?, completion: (() -> Void)? = nil) {
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            completion?()
            if message == nil{
                SVProgressHUD.dismiss()
                return
            }
            SVProgressHUD.showSuccess(withStatus: message)
        }
    }
}
