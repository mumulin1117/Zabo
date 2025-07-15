//
//  SaConnexatmalVontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

class SaConnexatmalVontroller: UIViewController {
    
    @IBOutlet weak var performanceDirection: UILabel!
    
    @IBOutlet weak var audioClarity: UILabel!
    
    
    @IBOutlet weak var dialogueNaturalness: UIImageView!
    
    @IBOutlet weak var roleplayTheme: UIButton!
    
    
    var nnsteArry:Uniquevoice
    init(nnsteArry: Uniquevoice) {
        self.nnsteArry = nnsteArry
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueNaturalness.image =  UIImage(named: nnsteArry.based["ayChallenge"] ?? "")
        dialogueNaturalness.layer.cornerRadius = 20
        NotificationCenter.default.addObserver(self, selector: #selector(performanceIntensity), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
        dialogueNaturalness.layer.masksToBounds = true
        
        audioClarity.text = "Connecting....."
        performanceDirection.text = nnsteArry.based["audioClarity"]
    }

    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func sfhhhhhtensity(_ sender: Any) {
        self.showBlockReportAlert(for: nnsteArry.based["auIDG"] ?? "")
        
    }
    
}
