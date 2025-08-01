//
//  DswVcoverontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import AVFoundation
import SVProgressHUD

class DswVcoverontroller: UIViewController {
    private var audioPlayer: AVPlayer?
    private var currentPlayingIndex: Int?
    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
    private func playAudio(at index: Int) {
       
            stopCurrentAudio()

            currentPlayingIndex = index
            
    
        abstractGeometry.reloadData()
            
        
        let audioItem = ((ifChiej == 0) ? RAaslertvbCell.themeCustomization[index] : RekaointonCell.featureDiscovery[index])
        guard let urlstr = Bundle.main.url(forResource: audioItem["audioDepth"] ?? "", withExtension: "MrPr3".characterBelievability())
        else{
            SVProgressHUD.showInfo(withStatus: "Noomtpiynmgx itvol rprlcaey".characterBelievability())
            return
        }
        
        
        let playerItem = AVPlayerItem(url:urlstr )
            
        audioPlayer = AVPlayer(playerItem: playerItem)
        audioPlayer?.play()
            
   
        }
    
    private func stopCurrentAudio() {

        abstractGeometry.reloadData()
            audioPlayer?.pause()
            audioPlayer = nil
            currentPlayingIndex = nil
        }
        
        @objc private func playerDidFinishPlaying() {
            if let currentIndex = currentPlayingIndex, currentIndex < RekaointonCell.featureDiscovery.count - 1 {
                playAudio(at: currentIndex + 1)
            } else {
                stopCurrentAudio()
            }
        }

    @IBOutlet weak var abstractGeometry: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.abstractGeometry.isHidden = true
        self.showSuccessHUD(message: nil){
            self.abstractGeometry.isHidden = false
        }
        dialogueFlow()
       
    }
    

    
    var ifChiej:Int = 0
    
    @IBAction func impressionisticStyle(_ sender: UIButton) {
        expressionisticStroke()
        sender.isSelected = true
        scroindiView .center.x = sender.center.x
        if sender.tag == 40 {
            ifChiej = 0
        }else{
            ifChiej = 1
        }
        
        self.abstractGeometry.reloadData()
    }
    
    private func expressionisticStroke()  {
        let cStroke = self.view.viewWithTag(40) as? UIButton
        cStroke?.isSelected = false
        let cStroke1 = self.view.viewWithTag(50) as? UIButton
        cStroke1?.isSelected = false
        
    }
    
    @IBOutlet weak var scroindiView: UIImageView!
    
    
    @IBAction func cubistForm(_ sender: UIButton) {
        self.navigationController?.pushViewController(AracterFluency_Controller.init(), animated: true)
    }
    
   
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 428)
        voiceTimbred.minimumLineSpacing = 5
        
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
   
    
    private func dialogueFlow()  {
        abstractGeometry.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        reverb = VocalType.crystalline
        abstractGeometry.delegate = self
       
        
        chRate = PersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
        abstractGeometry.dataSource = self
        if reverb == .crystalline {
            chRate?.speechRate = 233
        }
        abstractGeometry.register(UINib.init(nibName: "DswVcoverCell", bundle: nil), forCellWithReuseIdentifier: "DswVcoverCell")
        if reverb == .gravelly {
            chRate?.voicePitch = 800
        }
        
       
       
       
        abstractGeometry.collectionViewLayout = self.voiceTimbre
       
        abstractGeometry.showsVerticalScrollIndicator = false
    }
}


extension DswVcoverontroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if ifChiej == 0 {
            return RAaslertvbCell.themeCustomization.count
        }
        return RekaointonCell.featureDiscovery.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let VcoverCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DswVcoverCell", for: indexPath) as! DswVcoverCell
         
        var juice :Dictionary<String,String> = RAaslertvbCell.themeCustomization[indexPath.row]
        if ifChiej == 1 {
            juice =  RekaointonCell.featureDiscovery[indexPath.row]
        }
        VcoverCell.organicShapes.image = UIImage(named: juice["ayChallenge"] ?? "")
        VcoverCell.geometric.text = juice["audioClarity"]
        VcoverCell.Precision.text = juice["roleplayTheme"]
       
        VcoverCell.dynamicPose.tag = indexPath.row
        VcoverCell.dynamicPose.addTarget(self, action: #selector(vibrantColors(dsu:)), for: .touchUpInside)
        VcoverCell.Precision.text = juice["roleplayTheme"]
        
        VcoverCell.anatomicalStudy.tag = indexPath.row
        VcoverCell.anatomicalStudy.addTarget(self, action: #selector(playintColors(dsu:)), for: .touchUpInside)
        
        VcoverCell.fabricFolds.image = UIImage(named: juice["audpico"] ?? "")
        
        VcoverCell.woodGrain.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
        //
        VcoverCell.metalReflection.tag = indexPath.row
        VcoverCell.metalReflection.addTarget(self, action: #selector(accessibilityOptions(dsu:)), for: .touchUpInside)
        VcoverCell.glassTransparency.tag = indexPath.row
        VcoverCell.glassTransparency.addTarget(self, action: #selector(tutorialPrompts(dsu:)), for: .touchUpInside)
        
        if indexPath.row == self.currentPlayingIndex {
            VcoverCell.anatomicalStudy.isSelected = true
        }else{
            VcoverCell.anatomicalStudy.isSelected = false
        }
        return VcoverCell
        
    }

    @objc func vibrantColors(dsu:UIButton)  {
        var juice :Dictionary<String,String> = RAaslertvbCell.themeCustomization[dsu.tag]
        if ifChiej == 1 {
            juice =  RekaointonCell.featureDiscovery[dsu.tag]
        }
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: juice), animated: true)
    }
 
    @objc func accessibilityOptions(dsu:UIButton)  {
        dsu.isSelected = !dsu.isSelected
        
        
     }
    

    @objc func playintColors(dsu:UIButton)  {

        if self.currentPlayingIndex == dsu.tag {
            self.stopCurrentAudio()
            dsu.isSelected = false
            return
        }
        self.playAudio(at: dsu.tag)
    }
 
    @objc func storyboardTools()  {
        let VCoice = CumidtoneRangentroller.init()
        self.present(VCoice, animated: true)
        
    }

   @objc func tutorialPrompts(dsu:UIButton)  {
       let VCoice = VCoiceFilter_ntroller.init()

       self.present(VCoice, animated: true)
    }
    
   
    
   
}
