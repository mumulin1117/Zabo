//
//  RoleplayStudioController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import SVProgressHUD
import Photos

class RoleplayStudioController: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    
    private  var ifrecording:Bool = false
    
    @IBOutlet weak var fluidTransitions: UIButton!
    
    @IBOutlet weak var seasonalTrends: UIButton!
    
  
    
    @IBOutlet weak var stagedRollouts: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seasonalTrends.layer.cornerRadius = 15
        seasonalTrends.layer.masksToBounds = true
        fluidTransitions.layer.cornerRadius = 15
        fluidTransitions.layer.masksToBounds = true
        
    }
    
    //confirm
    @IBAction func gestureNavigation(_ sender: UIButton) {
        
               
        let hasName = !(stagedRollouts.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
       
        
        guard ifrecording else{
            SVProgressHUD.showInfo(withStatus: "Please add your video")
            return
        }
        
        guard hasName else{
            SVProgressHUD.showInfo(withStatus: "Please give the video content")
            return
        }
        
       
      
        
        SVProgressHUD.show(withStatus: "Video is being uploaded")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            
            let alert = AlertZABoBuilder(
                title: "information review in progress",
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
    

    var recorinfIamger:UIImage?
    //uploa pic
    @IBAction func featureRequestPrioritization(_ sender: UIButton) {
        PHPhotoLibrary.requestAuthorization { status in
                DispatchQueue.main.async {
                    if status == .authorized {
                        let picker = UIImagePickerController()
                        picker.sourceType = .photoLibrary
                        picker.videoQuality = .typeHigh
                               
                        picker.allowsEditing = false
                        picker.delegate = self
                        picker.mediaTypes = [UTType.movie.identifier]
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
        
        guard let mediaType = info[.mediaType] as? String,
                      mediaType == UTType.movie.identifier,
              let videoURL = info[.mediaURL] as? URL else {
            SVProgressHUD.showInfo(withStatus: "Unable to find video resources")
            return
            
        }
        
        ifrecording = true
        
    }
 
  
    
    
}
