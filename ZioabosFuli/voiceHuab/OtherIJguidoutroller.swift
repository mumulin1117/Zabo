//
//  OtherIJguidoutroller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/8.
//

import UIKit
//他人中心
class OtherIJguidoutroller: UIViewController {

    @IBOutlet weak var ZuoGeuo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func ZuoGeuoGhhh(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
