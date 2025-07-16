//
//  RlEadettroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD
import Photos
class RlEadettroller: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var audioQuality: UIImageView!
    var recorinfIamger:UIImage?
    
    @IBOutlet weak var realTimeFeedback: UITextField!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var audioClarity: UITextField!
    
    @IBOutlet weak var voiceStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        audioQuality.image = AppDelegate.Metrics
        
        storyTexture.layer.masksToBounds = true
        let sceneEngagement = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
      
        realTimeFeedback.text = sceneEngagement["audioClarity"]
        audioClarity.text = sceneEngagement["auuserBreCla"]
        
        audioQuality.layer.masksToBounds = true
       
        voiceStyle.layer.cornerRadius = 32
        voiceStyle.layer.masksToBounds = true
        audioQuality.image = AppDelegate.Metrics
        audioQuality.layer.cornerRadius = 50
        
      
        
    }

    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

    @IBAction func dynamicddDialoguefsFor(_ sender: Any) {
        RAIerBnijttroller.interactiveNarrative(namrEditm: realTimeFeedback.text, ssayui: audioClarity.text, aolkbuild: nil)
        if let im = self.recorinfIamger {
            AppDelegate.Metrics = im
        }
       
        supplementary()
    }
    
    func supplementary() {
        self.showSuccessHUD(message: "save Successful!"){
            self.navigationController?.popViewController(animated: true)
           
        }
        
    }
    
    
    @IBAction func roleplayAuthenticity(_ sender: UIButton) {
        
        PHPhotoLibrary.requestAuthorization { status in
                DispatchQueue.main.async {
                    if status == .authorized {
                        let picker = UIImagePickerController()
                        picker.sourceType = .photoLibrary
                        picker.delegate = self
                        self.present(picker, animated: true)
                    } else {
                        let alert = UIAlertController(title: "No album permission", message: "Please allow access to the album in the settings", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "sure", style: .default))
                        self.present(alert, animated: true)
                    }
                }
            }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            picker.dismiss(animated: true)
            
            guard let image = info[.originalImage] as? UIImage else {
                SVProgressHUD.showInfo(withStatus: "Unable to obtain image")
               
                return
            }
            
        self.recorinfIamger = image
        self.audioQuality.image = image
        }
}
