//
//  ToryEngagement troller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class ToryEngagementroller: UIViewController {
    
    static var aiGEtingTimes:Int = 0

    @IBOutlet weak var ramaticPerformance: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        voiceModulation()
        ramaticPerformance.layer.masksToBounds = true
    }

    func voiceModulation()  {
        ramaticPerformance.layer.cornerRadius = 25
    }

    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func accessibilityLabels(_ sender: UIButton) {
      
        
        let ingCuAJ = UserDefaults.standard.object(forKey: "emotionalWeight") as? Dictionary<String,String>
        
       
        let generic = ingCuAJ?["auusAblan"] as? String ?? "0"
        
        var purposeCxD =  Int( generic) ?? 0
        if purposeCxD < 300 {
          let navib =  UINavigationController.init(rootViewController: Enougthatroller())
            navib.navigationBar.isHidden = true
            self.present(navib, animated: true)
        
            return
        }
        
        purposeCxD = purposeCxD - 300
        ToryEngagementroller.aiGEtingTimes += 4
        self.navigationController?.pushViewController(ToryEngagemCkatroller(), animated: true)
    }
    
}
