//
//  ToryEngagement troller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/7.
//

import UIKit

class ToryEngagementroller: UIViewController {

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

}
