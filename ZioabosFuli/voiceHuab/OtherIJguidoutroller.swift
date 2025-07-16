//
//  OtherIJguidoutroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD
//他人中心
class OtherIJguidoutroller: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    var nnsteBase:Dictionary<String,String>
    init(nnsteBase: Dictionary<String,String>) {
        self.nnsteBase = nnsteBase
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBOutlet weak var noaoudit: UILabel!
    @IBOutlet weak var operate: UICollectionView!
    

    @IBOutlet weak var manfui: UIButton!
    
    @IBOutlet weak var ertfhn: UIButton!
    
    @IBOutlet weak var afniaver: UIButton!
    
    
    @IBOutlet weak var ZuoGeuo: UIButton!
   
  
    @IBOutlet weak var tapgi: UIButton!
    
    @IBAction func ZuoGeuoGhhh(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBOutlet weak var audioQuality: UIImageView!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var dialogueSystem: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        storyTexture.layer.masksToBounds = true
        faruwoom()
        audioQuality.layer.masksToBounds = true
        NotificationCenter.default.addObserver(self, selector: #selector(ZuoGeuoGhhh), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
        
        audioQuality.image = UIImage(named: nnsteBase["ayChallenge"] ?? "")
        audioQuality.layer.cornerRadius = 50
        
       
        storyTexture.isSelected = (AppDelegate.featureDiscovery.filter({ divv in
            divv["auIDG"] == nnsteBase["auIDG"]
        }).count > 0)
        
        dialogueSystem.layer.cornerRadius = 25
        dialogueSystem.layer.masksToBounds = true
        
        audioQuality.image = UIImage(named: nnsteBase["ayChallenge"] ?? "")
    }
  
    
    @IBAction func dialogueSystemd(_ sender: Any) {
        storyTexture.isSelected = !storyTexture.isSelected
        if storyTexture.isSelected  {
            AppDelegate.featureDiscovery.append(nnsteBase)
        }else{
            AppDelegate.featureDiscovery = AppDelegate.featureDiscovery.filter({ dddd in
                dddd["auIDG"] != nnsteBase["auIDG"]
            })
        }
        
    }
    
    private func faruwoom() {
        manfui.titleLabel?.textAlignment = .center
        ertfhn.titleLabel?.textAlignment = .center
        afniaver.titleLabel?.textAlignment = .center
        manfui.titleLabel?.numberOfLines = 2
        ertfhn.titleLabel?.numberOfLines = 2
        afniaver.titleLabel?.numberOfLines = 2
        dialogueFlow()
        manfui.setTitle("\(Int.random(in: 0...3))\n Likes", for: .normal)
        
        ertfhn.setTitle("\(Int.random(in: 0...3))\n Followers", for: .normal)
        
        afniaver.setTitle("\(Int.random(in: 0...3))\n Fans", for: .normal)
    }
   
    
    
    @IBAction func characterNuance(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        operate.reloadData()
    }
    
    @IBAction func availablrCpisjck(_ sender: Any) {
        self.showBlockReportAlert(for: nnsteBase["auIDG"] ?? "")
        
    }
    
    
    @IBAction func voiceRichness(_ sender: UIButton) {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SVProgressHUD.showInfo(withStatus: "The gift you haven't received yet")
        }))
    }
    
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 32), height:490)
        voiceTimbred.minimumLineSpacing = 7
        voiceTimbred.minimumInteritemSpacing = 7
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    private func dialogueFlow()  {
        operate.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        operate.delegate = self
        operate.dataSource = self
       
        operate.collectionViewLayout = self.voiceTimbre
        operate.register(UINib.init(nibName: "DswVcoverCell", bundle: nil), forCellWithReuseIdentifier: "DswVcoverCell")
        operate.register(UINib.init(nibName: "CreatorLabCell", bundle: nil), forCellWithReuseIdentifier: "CreatorLabCell")
        
        operate.showsVerticalScrollIndicator = false
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if tapgi.isSelected == false && nnsteBase["audioDepth"] != nil{
            noaoudit.isHidden = true
            return 1
        }
        if tapgi.isSelected == true && nnsteBase["AldioAlpPath"] != nil{
            noaoudit.isHidden = true
            return 1
        }
        
        noaoudit.isHidden = false
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if tapgi.isSelected == false && nnsteBase["audioDepth"] != nil{
            let VcoverCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DswVcoverCell", for: indexPath) as! DswVcoverCell
           
            VcoverCell.organicShapes.image = UIImage(named: nnsteBase["ayChallenge"] ?? "")
            VcoverCell.geometric.text = nnsteBase["audioClarity"]
            VcoverCell.Precision.text = nnsteBase["roleplayTheme"]
           
            VcoverCell.dynamicPose.isHidden = true
           
            VcoverCell.Precision.text = nnsteBase["roleplayTheme"]
            
            
             
            VcoverCell.fabricFolds.image = UIImage(named: nnsteBase["audpico"] ?? "")
            
            VcoverCell.woodGrain.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
          
            VcoverCell.metalReflection.addTarget(self, action: #selector(accessibilityOptions(dsu:)), for: .touchUpInside)
           
            VcoverCell.glassTransparency.addTarget(self, action: #selector(tutorialPrompts(dsu:)), for: .touchUpInside)
            
            
            return VcoverCell
            
        }
        if tapgi.isSelected == true && nnsteBase["AldioAlpPath"] != nil{
            let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "CreatorLabCell", for: indexPath) as! CreatorLabCell
            
            
            
            jjIo.antiExploitation.image = UIImage(named: nnsteBase["AldioAlpCover"] ?? "")
            jjIo.trustAndSafety.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
            jjIo.userVerification.text =  nnsteBase["audioClarity"]
            jjIo.behavioralAnalysis.text =  nnsteBase["AldioAlpPost"]
            return jjIo
        }
        return UICollectionViewCell()
    }
    //heart
    @objc func accessibilityOptions(dsu:UIButton)  {
        dsu.isSelected = !dsu.isSelected
     }
    
   
    //举报
    @objc func storyboardTools()  {
        let VCoice = CumidtoneRangentroller.init()
        self.present(VCoice, animated: true)
        
    }
    
    //comment
   @objc func tutorialPrompts(dsu:UIButton)  {
       let VCoice = VCoiceFilter_ntroller.init()
//       VCoice.modalPresentationStyle = .fullScreen
       self.present(VCoice, animated: true)
    }
    
    @IBAction func divreVascr(_ sender: UIButton) {
        if sender.tag == 35 {
            if let filterResult = StoryBabuStageontroller.ccoude.filter({ dio in
                dio.based["auIDG"] == nnsteBase["auIDG"]
            }).first{
                self.navigationController?.pushViewController(SayHIontroller.init(nnsteArry: filterResult), animated: true)
            }else{
              let newChui =  Uniquevoice.init(based: nnsteBase,diologlsiedt:[])
                StoryBabuStageontroller.ccoude.append(newChui)
                self.navigationController?.pushViewController(SayHIontroller.init(nnsteArry: newChui), animated: true)
            }
            
            
        }
        
        if sender.tag == 45 {
            if let filterResult = StoryBabuStageontroller.ccoude.filter({ dio in
                dio.based["auIDG"] == nnsteBase["auIDG"]
            }).first{
                self.navigationController?.pushViewController(SaConnexatmalVontroller.init(nnsteArry: filterResult), animated: true)
            }else{
              let newChui =  Uniquevoice.init(based: nnsteBase,diologlsiedt:[])
                StoryBabuStageontroller.ccoude.append(newChui)
                self.navigationController?.pushViewController(SaConnexatmalVontroller.init(nnsteArry: newChui), animated: true)
            }
            
        }
    }
    
    
}


extension UIViewController{
    
    
    func showBlockReportAlert(for userID: String) {
        let alert = UIAlertController(
            title: "User Actions",
            message: "Choose action for \(userID)",
            preferredStyle: .actionSheet
        )
        
        // Block action
        let blockAction = UIAlertAction(
            title: "Block User",
            style: .destructive
        ) { _ in
            self.confirmBlockUser(userID)
        }
        
        // Report action
        let reportAction = UIAlertAction(
            title: "Report User",
            style: .destructive
        ) { _ in
            
            self.present(CumidtoneRangentroller(), animated: true)
           
        }
        
        // Cancel action
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .cancel
        )
        
        alert.addAction(blockAction)
        alert.addAction(reportAction)
        alert.addAction(cancelAction)
        
        // iPad presentation
        if let popover = alert.popoverPresentationController {
            popover.sourceView = self.view
            popover.sourceRect = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: 0, height: 0)
        }
        
        present(alert, animated: true)
    }
    
    func confirmBlockUser(_ userID: String) {
        let alert = UIAlertController(
            title: "Confirm Block",
            message: "You won't see \n his content anymore. They won't be notified.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        alert.addAction(UIAlertAction(
            title: "Block",
            style: .destructive
        ) { _ in
            AppDelegate.themeCustomization =  AppDelegate.themeCustomization.filter({ db in
                db["auIDG"] != userID
            })
           
            AppDelegate.featureDiscovery =  AppDelegate.featureDiscovery.filter({ db in
                db["auIDG"] != userID
            })
            
            AppDelegate.contextualTips =  AppDelegate.contextualTips.filter({ db in
                db["auIDG"] != userID
            })
            
            NotificationCenter.default.post(name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
            
        })
        
        present(alert, animated: true)
    }
    
    
    
    
}
