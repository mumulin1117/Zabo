//
//  StoryBabuStageontroller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
//

import UIKit

class StoryBabuStageontroller: UIViewController {
    
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
    
    //message
    @IBAction func interactiveScene(_ sender: UIButton) {
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
