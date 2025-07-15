//
//  ConnectSpoController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class ConnectSpoController: UIViewController, ConnectSpotusedViewDelegate {
    func beginartisticCipher(indess: Int) {
        monochromeArt()
    }
    

    @IBOutlet weak var roleplayGuide: UICollectionView!
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 - 7)/2, height: 190)
        voiceTimbred.minimumLineSpacing = 7
        voiceTimbred.minimumInteritemSpacing = 7
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ZuoGeuoGhhh), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
    }
    
    @objc func ZuoGeuoGhhh()  {
        self.roleplayGuide.reloadData()
    }
    
    @IBAction func unwindB(unwindSegue: UIStoryboardSegue) {  }
    private func dialogueFlow()  {
        roleplayGuide.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        roleplayGuide.delegate = self
        roleplayGuide.dataSource = self
        roleplayGuide.register(UINib(nibName: "ConnectSpotusedView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ConnectSpotusedView")
        roleplayGuide.collectionViewLayout = self.voiceTimbre
        roleplayGuide.register(UINib.init(nibName: "ConnectSpotCell", bundle: nil), forCellWithReuseIdentifier: "ConnectSpotCell")
        roleplayGuide.showsVerticalScrollIndicator = false
    }
    

    @IBAction func interactiveScene(_ sender: UIButton) {
    }
    

}


extension ConnectSpoController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        AppDelegate.themeCustomization.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "ConnectSpotCell", for: indexPath) as! ConnectSpotCell
        jjIo.backgroundAmbience.image = UIImage(named: AppDelegate.themeCustomization[indexPath.row]["RoomAlpDCOver"] ?? "")
        jjIo.audioLatency.image = UIImage(named: AppDelegate.themeCustomization[indexPath.row]["ayChallenge"] ?? "")
        jjIo.roleplayGuidelines.text = AppDelegate.themeCustomization[indexPath.row]["RoomAlpTitle"]
        jjIo.characterAlignment.text = AppDelegate.themeCustomization[indexPath.row]["RoomAlpDades"]
        jjIo.storySeeds.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
        jjIo.voiceMorphing.setTitle("1 online", for: .normal)
        return jjIo
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 30, height: 256 + 12) 
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard kind == UICollectionView.elementKindSectionHeader else {
                return UICollectionReusableView()
            }
            
            guard let header = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "ConnectSpotusedView",
                for: indexPath) as? ConnectSpotusedView else {
                    fatalError("Failed to load ConnectSpotusedView from nib. Check registration and class inheritance.")
            }
        header.delegater = self
        header.disvoverpage.addTarget(self, action: #selector(monochromeArt), for: .touchUpInside)
        header.creeatertoem.addTarget(self, action: #selector(warmTones), for: .touchUpInside)
        header.buildAio.addTarget(self, action: #selector(vibrantColors), for: .touchUpInside)
            
        return header
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let roromedetail = FallINreoomtiproller.init(nnsteBase: AppDelegate.themeCustomization[indexPath.row])
        self.navigationController?.pushViewController(roromedetail, animated: true)
        
    }
    
}


extension ConnectSpoController{
    //举报
   @objc func storyboardTools()  {
       self.present(CumidtoneRangentroller.init(), animated: true)
    }
    
    @objc func monochromeArt()  {
        let  cheicking =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DswVcoverontroller") as! DswVcoverontroller
        
        self.navigationController?.pushViewController(cheicking, animated: true)
    }
    
    
    @objc func warmTones()  {
        let  cheicking =  NurraamSetiproller.init()
        
        self.navigationController?.pushViewController(cheicking, animated: true)
    }
    
    @objc func vibrantColors()  {
        
        if ToryEngagementroller.aiGEtingTimes >= 1 {
            ToryEngagementroller.aiGEtingTimes -= 1
            let  cheicking =  ToryEngagemCkatroller.init()
            
            self.navigationController?.pushViewController(cheicking, animated: true)
            return
        }
        let  cheicking =  ToryEngagementroller.init()
        
        self.navigationController?.pushViewController(cheicking, animated: true)
    }
}
