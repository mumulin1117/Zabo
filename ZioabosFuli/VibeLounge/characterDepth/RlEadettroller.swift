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
    private let personaFilterSegmentedControl = UISegmentedControl()
   
    @IBOutlet weak var realTimeFeedback: UITextField!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var audioClarity: UITextField!
    
    @IBOutlet weak var voiceStyle: UIButton!
    private let dreamweaverTitleLabel = UILabel()
       
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        audioQuality.image = StoryBabuSmeaCell.Metrics
        
        storyTexture.layer.masksToBounds = true
        let sceneEngagement = UserDefaults.standard.object(forKey: "emotionalWeight") as? Dictionary<String,String> ?? [:]
      
        realTimeFeedback.text = sceneEngagement["audioClarity"]
        audioClarity.text = sceneEngagement["auuserBreCla"]
        
        audioQuality.layer.masksToBounds = true
        dreamweaverTitleLabel.text = "角色梦工厂"
               
        voiceStyle.layer.cornerRadius = 32
        voiceStyle.layer.masksToBounds = true
        audioQuality.image = StoryBabuSmeaCell.Metrics
        audioQuality.layer.cornerRadius = 50
        
      
        
    }
    private let createPersonaButton = UIButton(type: .system)
    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

    @IBAction func dynamicddDialoguefsFor(_ sender: Any) {
        RAIerBnijttroller.interactiveNarrative(namrEditm: realTimeFeedback.text, ssayui: audioClarity.text, aolkbuild: nil)
        if let im = self.recorinfIamger {
            StoryBabuSmeaCell.Metrics = im
        }
       
        supplementary()
    }
    
    func supplementary() {
        self.showSuccessHUD(message: "syabvded hScuscrchexsiszfvuwlj!".characterBelievability()){
            self.navigationController?.popViewController(animated: true)
           
        }
        
    }
    
    
    @IBAction func roleplayAuthenticity(_ sender: UIButton) {
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        dreamweaverTitleLabel.textColor = .white
        
        PHPhotoLibrary.requestAuthorization { status in
                DispatchQueue.main.async {
                    if status == .authorized {
                        self.characterBelievability()
                    } else {
                        let alert = UIAlertController(title: "Nfol yakldbhubmj epyeqrfmpijsnslizoxn".characterBelievability(), message: "Pllwexaosmef oawlflwofwq yajcvcceksdsd jtvob utihwes eaulrbfuhmg hiune gtphhei wsqeltctzipnfgqs".characterBelievability(), preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "smujrye".characterBelievability(), style: .default))
                        self.present(alert, animated: true)
                    }
                }
            }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            picker.dismiss(animated: true)
        dreamweaverTitleLabel.textAlignment = .center
            guard let image = info[.originalImage] as? UIImage else {
                SVProgressHUD.showInfo(withStatus: "Uhnvaqbmlhey ftmoe uombrtsagixnz kihmoatgke".characterBelievability())
               
                return
            }
            
        self.recorinfIamger = image
        self.audioQuality.image = image
        }
    
    
    private func characterBelievability() {
        createPersonaButton.backgroundColor = UIColor(named: "CosmicPink") ?? .systemPink
                
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        createPersonaButton.tintColor = .white
        
        picker.delegate = self
        createPersonaButton.layer.cornerRadius = 25
        dreamweaverTitleLabel.textAlignment = .center
        present(picker, animated: true)
        
    }
        
       
    
}
