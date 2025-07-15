//
//  Enougthatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class Enougthatroller: UIViewController {

    @IBAction func disomaif(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
  


    @IBAction func storyVibrancy(_ sender: UIButton) {
        self.navigationController?.pushViewController(RAIerBnijttroller.init(), animated: true)
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
