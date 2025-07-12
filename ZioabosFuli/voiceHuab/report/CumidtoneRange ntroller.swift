//
//  CumidtoneRange ntroller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/9.
//

import UIKit
import SVProgressHUD
class CumidtoneRangentroller: UIViewController {
    
    @IBOutlet weak var voiceTutorials: UIView!
    
    
    @IBOutlet weak var midtoneRange: UITextField!
    
    @IBOutlet weak var sketchPad: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasTexture()
        sketchPad.layer.masksToBounds = true
        interactiveHelp()
    }

    private func canvasTexture()  {
        sketchPad.layer.cornerRadius =  32
    }
    @IBAction func contrastRatio(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func impressionisticStyle(_ sender: UIButton) {
        gestureDrawing()
        sender.isSelected = true
    }
    
    
    func gestureDrawing()  {
        let underpainting = view.viewWithTag(45) as? UIButton
        underpainting?.isSelected = false
        
        let underpainting1 = view.viewWithTag(46) as? UIButton
        underpainting1?.isSelected = false
        let underpainting2 = view.viewWithTag(47) as? UIButton
        underpainting2?.isSelected = false
        let underpainting3 = view.viewWithTag(48) as? UIButton
        underpainting3?.isSelected = false
        
    }
    
    @IBAction func smudgeEffect(_ sender: UIButton) {
        let underpainting3 = view.viewWithTag(48) as? UIButton
        if underpainting3?.isSelected == true {
            if let avbb = midtoneRange.text,!avbb.isEmpty {
                underpainting()
                return
            }
            
            let hyperrealism = "Please enter the specific reason"
            
            SVProgressHUD.showInfo(withStatus:hyperrealism )
        }else{
            
            underpainting()
            
        }
    }
    
    
    private func underpainting()  {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            self.dismiss(animated: true)
            let hyperrealism = "Submitted successfully, we will review and process it as soon as possible"
            
            SVProgressHUD.showSuccess(withStatus:hyperrealism )
        }))
    }
    
    private func interactiveHelp() {
        
        voiceTutorials.clipsToBounds = true
        voiceTutorials.layer.cornerRadius = 25
        voiceTutorials.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
