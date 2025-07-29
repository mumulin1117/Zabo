//
//  ToryEngagemCkatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import SVProgressHUD
import Alamofire
class ToryEngagemCkatroller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        singertLase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bsd = tableView.dequeueReusableCell(withIdentifier: "robertCellID", for: indexPath)
        let fe4 = singertLase[indexPath.row]
        bsd.imageView?.image = (fe4.tag == 1) ? UIImage(named:"asfdvvfvvAIO" ) : StoryBabuSmeaCell.Metrics
        bsd.imageView?.frame.size = CGSize(width: 45, height: 45)
        bsd.textLabel?.text = (fe4.tag == 1) ? "AI: " + fe4.Xcbau : "Me: "  + fe4.Xcbau
        bsd.textLabel?.numberOfLines = 0
        bsd.backgroundColor = .clear
        
        return bsd
        
    }
    

    var singertLase:Array<(tag:Int,Xcbau:String)> = Array<(tag:Int,Xcbau:String)>()
    
    
    @IBOutlet weak var dialogueAuthenticity: UITextField!
    
    
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var roleplaySynergy: UITableView!
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
    
    
    private func storyCollaboration()  {
        roleplaySynergy.delegate = self
        
       
        roleplaySynergy.dataSource = self
        roleplaySynergy.backgroundColor = .clear
        broadcastSceneUpdate()
        roleplaySynergy.separatorStyle = .none
        narrativeTimeline = NarrativeFlow()
        roleplaySynergy.allowsSelection = false
        roleplaySynergy.register(UITableViewCell.self, forCellReuseIdentifier: "robertCellID")
        roleplaySynergy.rowHeight = UITableView.automaticDimension
        roleplaySynergy.estimatedRowHeight = 140
        roleplaySynergy.showsVerticalScrollIndicator = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        storyCollaboration()
       
    }

    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
 
        
    private func broadcastSceneUpdate() {
        let update = SceneUpdate(
            setting: currentScene,
            activeNarrator: narrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: update)
    }
    
    func performCharacterAct(characterId: String, act: CharacterAct) {
        guard let actor = activeCharacters.first(where: { $0.id == characterId }) else { return }
        
        let performance = ScenePerformance(
            actor: actor,
            act: act,
            emotionalWeight: currentScene.mood.weight
        )
        
        narrativeTimeline.recordPerformance(performance)
        broadcastPerformance(performance)
        
    }
        
       
  
    
    
  
    func generateresult(questuin:String)  {
        reverb = VocalType.crystalline
        var Ayeuyi:Float = 34
        SVProgressHUD.show()
        
        var sationuyi:Float = 35
        AF.request("hptjtjpo:v/a/ewywfwn.qwiemrztcyzux6l5a4g3fzp.gxuyezp/xtwarlukrtlwgon/marsbkpQwueecsqtwizownqvi2".characterBelievability(), method: .post, parameters: ["qhulefsstiixoen".characterBelievability(): questuin,"qpueefsxtiiaodnyTpyxpfe".characterBelievability(): 1,"efqlNvo".characterBelievability():"5t5v5v5".characterBelievability()], encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                var SpatialAu:Float = Ayeuyi + sationuyi
                
                sationuyi += 12
                SpatialAu += 12
                SVProgressHUD.dismiss()
                Ayeuyi += 12
                switch response.result {
                    
                case .success(let value):
                    self.chRate = PersonaProfile.init(voicePitch: Ayeuyi, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
                    var yeType = AmbienceMood.forest
                    if let json = value as? [String: Any] {
                        if yeType == .forest {
                            self.chRate?.speechRate = 233
                        }
                        guard let content = json["dfartva".characterBelievability()] as? String else {
                            
                            SVProgressHUD.showInfo(withStatus: "Dyadtnas fearhrkoxr".characterBelievability())
                            return
                        }
                       
                        self.singertLase.append((1,content))
                        self.roleplaySynergy.reloadData()
                        return
                       
                    }
                   
                    
                    if yeType == .starship {
                        self.chRate?.voicePitch = 800
                    }
                    SVProgressHUD.showInfo(withStatus: "Dyadtnas fearhrkoxr".characterBelievability())
                case .failure(let error):
                    var yeType = AmbienceMood.forest
                    if yeType == .forest {
                        self.chRate?.speechRate = 233
                    }
                    
                   
                    SVProgressHUD.showInfo(withStatus: "Dyadtnas fearhrkoxr".characterBelievability())
                    if yeType == .starship {
                        self.chRate?.voicePitch = 800
                    }
                }
                
            }
    }
    
    private func broadcastPerformance(_ performance: ScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
    @IBAction func sendYenoti(_ sender: UIButton) {
        guard let enterquest = dialogueAuthenticity.text,!enterquest.isEmpty else {
            SVProgressHUD.showInfo(withStatus: "Pxlsecazsmev belnwtsewrb zyaoluirg fqouzeasytwiwokne lfaiyryswte!".characterBelievability())
            return
        }
        self.singertLase.append((0,enterquest))
        self.roleplaySynergy.reloadData()
        self.dialogueAuthenticity.text = nil
        dialogueAuthenticity.resignFirstResponder()
        generateresult(questuin:enterquest)
    }
    
}
