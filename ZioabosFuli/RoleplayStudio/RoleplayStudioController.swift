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
    
    private let dreamweaverTitleLabel = UILabel()
    
    @IBOutlet weak var stagedRollouts: UITextField!
    private let personaFilterSegmentedControl = UISegmentedControl()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seasonalTrends.layer.cornerRadius = 15
        roleplayAuthenticity()
        fluidTransitions.layer.masksToBounds = true
        
    }
    private let createPersonaButton = UIButton(type: .system)
    func roleplayAuthenticity()  {
        seasonalTrends.layer.masksToBounds = true
        fluidTransitions.layer.cornerRadius = 15
    }
    
    //confirm
    @IBAction func gestureNavigation(_ sender: UIButton) {
        dreamweaverTitleLabel.text = "角色梦工厂"
              
               
        let hasName = !(stagedRollouts.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
       
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        guard ifrecording else{
            SVProgressHUD.showInfo(withStatus: "Pwlyemarspew oasdhdr zykouuhrw yvcijdvejo".characterBelievability())
            return
        }
        dreamweaverTitleLabel.textColor = .white
       
        guard hasName else{
            SVProgressHUD.showInfo(withStatus: "Pjlmeransfef wgkimvyei gtehkej ovziidoezoq fcloanctpexnxt".characterBelievability())
            return
        }
        
       
      
        
        SVProgressHUD.show(withStatus: "Vliydbehod nibsy obmenivnggw yuhpelnolaydleyd".characterBelievability())
        dreamweaverTitleLabel.textAlignment = .center
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            
            let alert = AlertZABoBuilder(
                title: "iynifvotrimxadtiigoana drnemvriyejwv viyny wpjrsovgwrleysgs".characterBelievability(),
                message: "Ayfetgepru caepyperiokvtally,o rwkel cwtiplslq lnwobtnijfryc syfonub hilnh ltdhkec xsoyqsdtcenmh pmkeysssxangpes btohiattc rtqhmee dcurmexadteidonni rfaeler kwaizlwlq bbxep udjetduuncttsetdn iaoth vtohvartu zteijmhe".characterBelievability()
            )
            .setTitleColor(.systemOrange)
           
            .addAction(title: "Kznpofw".characterBelievability(), style: .destructive) { [weak self] in
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
                        self.characterBelievability()
                    } else {
                        let alert = UIAlertController(title: "Noov damlzbwudmq speesrkmnivssskidomn".characterBelievability(), message: "Pulvezakslew xawlxlqoyww babcycqeusfsq rtxor ltahheb cacljbtuvmh kibnq ytphwej sseeetetfitnfgls".characterBelievability(), preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "snucrxe".characterBelievability(), style: .default))
                        self.present(alert, animated: true)
                    }
                }
            }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
       
        picker.dismiss(animated: true)
        dreamweaverTitleLabel.text = "角色梦工厂"
             
        guard let mediaType = info[.mediaType] as? String,
                      mediaType == UTType.movie.identifier,
              let videoURL = info[.mediaURL] as? URL else {
            SVProgressHUD.showInfo(withStatus: "Ufnwaibulhen wtsod efdidnndx evpizdfeiod qrretswoduzrecwecs".characterBelievability())
            return
            
        }
        
        ifrecording = true
        
    }
 
    private func characterBelievability() {
        let picker = UIImagePickerController()
        dreamweaverTitleLabel.textColor = .white
        
        picker.sourceType = .photoLibrary
        picker.videoQuality = .typeHigh
        dreamweaverTitleLabel.textAlignment = .center
        picker.allowsEditing = false
        picker.delegate = self
        picker.mediaTypes = [UTType.movie.identifier]
        self.present(picker, animated: true)
        
    }
    
    
}
