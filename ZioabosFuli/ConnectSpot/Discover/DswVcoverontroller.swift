//
//  DswVcoverontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class DswVcoverontroller: UIViewController {

    @IBOutlet weak var abstractGeometry: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        abstractGeometry.delegate = self
        abstractGeometry.dataSource = self
       
        abstractGeometry.collectionViewLayout = self.voiceTimbre
        abstractGeometry.register(UINib.init(nibName: "DswVcoverCell", bundle: nil), forCellWithReuseIdentifier: "DswVcoverCell")
        abstractGeometry.showsVerticalScrollIndicator = false
    }
}


extension DswVcoverontroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if ifChiej == 0 {
            return AppDelegate.themeCustomization.count
        }
        return AppDelegate.featureDiscovery.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let VcoverCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DswVcoverCell", for: indexPath) as! DswVcoverCell
         
        var juice :Dictionary<String,String> = AppDelegate.themeCustomization[indexPath.row]
        if ifChiej == 1 {
            juice =  AppDelegate.featureDiscovery[indexPath.row]
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
        
        
        return VcoverCell
        
    }
    //个人中心
    @objc func vibrantColors(dsu:UIButton)  {
        var juice :Dictionary<String,String> = AppDelegate.themeCustomization[dsu.tag]
        if ifChiej == 1 {
            juice =  AppDelegate.featureDiscovery[dsu.tag]
        }
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(), animated: true)
    }
    //heart
    @objc func accessibilityOptions(dsu:UIButton)  {
        dsu.isSelected = !dsu.isSelected
     }
    
    //播放
    @objc func playintColors(dsu:UIButton)  {
        var juice :Dictionary<String,String> = AppDelegate.themeCustomization[dsu.tag]
        if ifChiej == 1 {
            juice =  AppDelegate.featureDiscovery[dsu.tag]
        }
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
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
