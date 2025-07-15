//
//  AracterFluency Controller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import Photos
import SVProgressHUD
class AracterFluency_Controller: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{

    private  var ifrecording:Bool = false
    
    @IBOutlet weak var fluidTransitions: UIButton!
    
    @IBOutlet weak var seasonalTrends: UIButton!
    
    
    @IBOutlet weak var releasePhasing1: UIButton!
    
     
    
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
        let hasImage = recorinfIamger != nil
               
        let hasName = !(stagedRollouts.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
       
        
        guard hasImage else{
            SVProgressHUD.showInfo(withStatus: "Please add a room cover image")
            return
        }
        
        guard hasName else{
            SVProgressHUD.showInfo(withStatus: "Please give the room a name")
            return
        }
        
        guard ifrecording else{
            SVProgressHUD.showInfo(withStatus: "Please record your audio first")
            return
        }
      
        
        SVProgressHUD.show(withStatus: "Information is being uploaded")
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
    

    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    var recorinfIamger:UIImage?
    //uploa pic
    @IBAction func featureRequestPrioritization(_ sender: UIButton) {
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
        self.releasePhasing1.setImage(image, for: .normal)
        
    }
    
    @IBAction func CleadREcordIngbu(_ sender: UIButton) {
        if ifrecording == false {
            SVProgressHUD.showInfo(withStatus: "There are no audio files available for deletion")
            return
        }
        ifrecording = false
        self.seasonalTrends.setTitle("Recording", for: .normal)
        SVProgressHUD.showSuccess(withStatus: "Delete successfully")
    }
    
    @IBAction func seasonalTrendsTakeing(_ sender: Any) {
        
        let poasdDisc = OaiRecifrignController()
        
        poasdDisc.stringClosure = { [weak self] str in
            self?.ifrecording = true
            self?.seasonalTrends.setTitle("Recording " + str, for: .normal)
            
        }
        
        self.present(poasdDisc, animated: true)
    }
    
    
}
