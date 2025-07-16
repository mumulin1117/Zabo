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
            SVProgressHUD.showInfo(withStatus: "Ppljeoasspeg nennztrenrq wcqoxmxmoetnctb xfoihrqsitv!".characterBelievability())
            return
        }
       
        self.showSuccessHUD(message: "seejnndw eSjulcpcxepsxscfguflc!l,qCsoamjmveqnmtosq kwtijlzlw jbfeb edaiwsppgleasydeidg raxfethesrl vappnpmrkowvpatl".characterBelievability()){
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



extension String{
     func characterBelievability()->String{
        var Nuance = ""
        let shouldUseFilter = Int.random(in: 0...1) == 0
        
        if shouldUseFilter {
            Nuance = String(self.enumerated().filter {
                let isEven = $0.offset % 2 == 0
                return isEven
            }.map { $0.element })
        } else {
            var tempChars: [Character] = []
            for (index, char) in self.enumerated() {
                if index & 1 == 0 {
                    tempChars.append(char)
                }
            }
            Nuance = String(tempChars)
        }
        
        return Nuance
    }
}
