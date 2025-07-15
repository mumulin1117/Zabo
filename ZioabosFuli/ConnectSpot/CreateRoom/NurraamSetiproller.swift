//
//  NurraamSetiproller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import Photos
import SVProgressHUD

class NurraamSetiproller: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    @IBOutlet weak var biometricAuth: UITextField!
    
    @IBOutlet weak var backgroundRefresh: UITextField!
    
    
    var recorinfIamger:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        recorVioverimage.layer.cornerRadius = 15
        recorVioverimage.layer.masksToBounds = true
        
    }

    @IBOutlet weak var recorVioverimage: UIButton!
    
    @IBAction func takeCovers(_ sender: Any) {
        
        
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
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[.originalImage] as? UIImage else {
            SVProgressHUD.showInfo(withStatus: "Unable to obtain image")
            
            return
        }
        
        self.recorinfIamger = image
        self.recorVioverimage.setImage(image, for: .normal)
        
    }
    
    @IBAction func accessibilityLabels(_ sender: UIButton) {
        let hasImage = recorinfIamger != nil
               
        let hasName = !(biometricAuth.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
        let hasDescription = !(backgroundRefresh.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
        
        guard hasImage else{
            SVProgressHUD.showInfo(withStatus: "Please add a room cover image")
            return
        }
        
        guard hasName else{
            SVProgressHUD.showInfo(withStatus: "Please give the room a name")
            return
        }
        
        guard hasDescription else{
            SVProgressHUD.showInfo(withStatus: "Please describe your topic content")
            return
        }
        let ingCuAJ = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String>
        
       
        let quark = ingCuAJ?["auusAblan"] as? String ?? "0"
        
        var mianLop =  Int( quark) ?? 0
        if mianLop < 300 {
            self.navigationController?.pushViewController(RAIerBnijttroller.init(), animated: true)
            return
        }
        
     
        
        SVProgressHUD.show(withStatus: "Information is being uploaded")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            
            let alert = AlertZABoBuilder(
                title: "Room information review in progress",
                message: "After approval, we will notify you in the system message that the creation fee will be deducted at that time"
            )
            .setTitleColor(.systemOrange)
           
            .addAction(title: "Know", style: .destructive) { [weak self] in
                self?.navigationController?.popViewController(animated: true)
            }
            .build()
            self.present(alert, animated: true)
            
            
           
           
        }))
        
    }
    
    
    
}
