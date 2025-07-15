//
//  StoryBabuStageontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

struct Uniquevoice {
    var based:Dictionary<String,String> = Dictionary<String,String>()//聊天对象
    var diologlsiedt:Array<String> = Array<String>()
    
    
}
class StoryBabuStageontroller: UIViewController {
    static var ccoude:Array<Uniquevoice> =  Array<Uniquevoice>()
    
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
        
        if ifChiej == 0 && StoryBabuStageontroller.ccoude.count > 0{
            noenuill.isHidden = true
        }else{
            noenuill.isHidden = false
        }
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
        noenuill.isHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(ZuoGeuoGhhh), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
    }
    
    @objc func ZuoGeuoGhhh()  {
        self.roleplayGuide.reloadData()
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
        if ifChiej == 0 {
            return StoryBabuStageontroller.ccoude.count
        }
        return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryBabuSmeaCell", for: indexPath) as! StoryBabuSmeaCell
        let autolay = StoryBabuStageontroller.ccoude[indexPath.row]
        
        jjIo.refined.image = UIImage(named: autolay.based["ayChallenge"] ?? "")
        jjIo.spatialAudio.text = autolay.based["audioClarity"] ?? ""
        
        jjIo.voiceActing.text =   autolay.diologlsiedt.first
        return jjIo
        
    }
    
  
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let autolay = StoryBabuStageontroller.ccoude[indexPath.row]
        let paetaikl = SayHIontroller.init(nnsteArry: autolay)
        self.navigationController?.pushViewController(paetaikl, animated: true)
        
    }
    
}
