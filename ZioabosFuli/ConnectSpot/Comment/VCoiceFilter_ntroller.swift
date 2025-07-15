//
//  VCoiceFilter ntroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import SVProgressHUD

class VCoiceFilter_ntroller: UIViewController {

    @IBOutlet weak var darkMode: UITextField!
   
    @IBAction func OIDShu(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    @IBAction func sendComamentFore(_ sender: Any) {
        
        guard let commentff = darkMode.text ,!commentff.isEmpty  else {
            SVProgressHUD.showInfo(withStatus: "Please enter comment first!")
            return
        }
       
        
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            self.darkMode.text = nil
            self.darkMode.resignFirstResponder()
            SVProgressHUD.showSuccess(withStatus: "send Successful!,Comments will be displayed after approval")
           
        }))
    }
}
