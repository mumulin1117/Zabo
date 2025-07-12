//
//  StoryBabuStageontroller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
//

import UIKit

class StoryBabuStageontroller: UIViewController {
    var ifChiej:Int = 0
    
 
    
    @IBOutlet weak var scroindiView: UIImageView!
    
  
   
    @IBAction func impressionisticStyle(_ sender: UIButton) {
        expressionisticStroke()
        sender.isSelected = true
        scroindiView .center.x = sender.center.x
        if sender.tag == 40 {
            ifChiej = 0
        }else{
            ifChiej = 1
        }
        
        self.roleplayGuide.reloadData()
    }
    
    private func expressionisticStroke()  {
        let cStroke = self.view.viewWithTag(40) as? UIButton
        cStroke?.isSelected = false
        let cStroke1 = self.view.viewWithTag(50) as? UIButton
        cStroke1?.isSelected = false
        
    }
    
    
    
    
    
    
    
    
    @IBOutlet weak var noenuill: UIImageView!
    
    

    @IBOutlet weak var roleplayGuide: UICollectionView!
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width  ), height: 60)
        voiceTimbred.minimumLineSpacing = 18
        
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
        
    }
    
    private func dialogueFlow()  {
        roleplayGuide.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        roleplayGuide.delegate = self
        roleplayGuide.dataSource = self
       
        roleplayGuide.collectionViewLayout = self.voiceTimbre
        roleplayGuide.register(UINib.init(nibName: "StoryBabuSmeaCell", bundle: nil), forCellWithReuseIdentifier: "StoryBabuSmeaCell")
        roleplayGuide.showsVerticalScrollIndicator = false
    }

   

}
extension StoryBabuStageontroller:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryBabuSmeaCell", for: indexPath) as! StoryBabuSmeaCell
        return jjIo
        
    }
    
  
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
