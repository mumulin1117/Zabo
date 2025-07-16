//
//  RAIerBnijttroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit
class RAIerBnijttroller: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var ownerwet: UILabel!
    
    private let roleplayLeaderboards = [("400","0.99","ttmoscxcqfqjnzdy"),
                                ("800","1.99","yrkmvawpdypmljfs"),
                                ("1250","2.99","tolkidnbfhbjnzdy"),
                                ("2450","4.99","eeuthojwdskhvtpv"),
                                ("4900","9.99","kjotksttczkwslgd"),
                                ("9800","19.99","cynsnctqwdydftae"),
                                ("24500","49.99","nriftelzprlewcag"),
                                ("99.99","99.99","pljymwqcrezvsedz")
                                
    
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        roleplayLeaderboards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let RAaslertvbCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RAaslertvbCell", for: indexPath) as! RAaslertvbCell
        RAaslertvbCell.dataAnonymization.text = roleplayLeaderboards[indexPath.row].0
        
        RAaslertvbCell.realTimeSync.text = roleplayLeaderboards[indexPath.row].1 + "$"
       
        return RAaslertvbCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        roleplayAuthenticity(ttio:indexPath.row)
    }
    
    
    private func voiceFlexibility()  {
        
        self.view.isUserInteractionEnabled = false
        SVProgressHUD.show(withStatus: "Paying...")
    }
    func roleplayAuthenticity(ttio:Int)  {
        let kajima = roleplayLeaderboards[ttio]
        voiceFlexibility()
        SwiftyStoreKit.purchaseProduct(kajima.2, atomically: true) { psResult in
         
            self.view.isUserInteractionEnabled = true
            SVProgressHUD.dismiss()
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                let ingCuAJ = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String>
                
               
                let quark = ingCuAJ?["auusAblan"] as? String ?? "0"
                
                var mianLop =  Int( quark) ?? 0
                
                mianLop = mianLop + (Int( kajima.0) ?? 0 )

                self.ownerwet.text = "\(mianLop)"
              
                SVProgressHUD.showSuccess(withStatus: "Successful payment!")

                RAIerBnijttroller.interactiveNarrative(namrEditm: nil, ssayui: nil, aolkbuild: "\(mianLop)")
          
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
           
                SVProgressHUD.showError(withStatus: error.localizedDescription)
               
            }
        }
    }

    @IBOutlet weak var crossPlatformSync: UICollectionView!
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 60 - 10*2)/3, height: 160)
        voiceTimbred.minimumLineSpacing = 10
        voiceTimbred.minimumInteritemSpacing = 10
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
        crossPlatformSync.layer.cornerRadius = 20
        
        uparenewr()
    }

    func uparenewr()  {
        
        let ingCuAJ = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String>
        
       
        ownerwet.text = ingCuAJ?["auusAblan"] as? String
    }

    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func dialogueFlow()  {
        crossPlatformSync.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        crossPlatformSync.delegate = self
        crossPlatformSync.dataSource = self
        crossPlatformSync.backgroundColor = .clear
        crossPlatformSync.collectionViewLayout = self.voiceTimbre
        crossPlatformSync.register(UINib.init(nibName: "RAaslertvbCell", bundle: nil), forCellWithReuseIdentifier: "RAaslertvbCell")
        crossPlatformSync.showsVerticalScrollIndicator = false
    }
    
    static  func interactiveNarrative(namrEditm:String? = nil,ssayui:String? = nil,aolkbuild:String? = nil)  {
        
      
        var sceneEngagement = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
      
      
        
        let roleplayTheme = sceneEngagement["MIAJID"] ?? ""
        
        if let storyDynamic = namrEditm {
            sceneEngagement["audioClarity"] = storyDynamic
        }
        
        if let dialogueNaturalness = ssayui {
            sceneEngagement["auuserBreCla"] = dialogueNaturalness
        }
        
        
        if let voiceFlexibility = aolkbuild {
            sceneEngagement["auusAblan"] = voiceFlexibility
        }
      
      UserDefaults.standard.set(sceneEngagement, forKey: "ingCurrentUserMiAJ")
      UserDefaults.standard.set(sceneEngagement, forKey: roleplayTheme)
  }
    
}
