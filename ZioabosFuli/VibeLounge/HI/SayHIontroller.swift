//
//  SayHIontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD

class SayHIontroller: UIViewController {
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        for (i,item) in StoryBabuStageontroller.ccoude.enumerated() {
            if item.based["auIDG"] == nnsteArry.based["auIDG"] {
                
                if nnsteArry.diologlsiedt.count == 0 {
                    StoryBabuStageontroller.ccoude.remove(at: i)
                    return
                }
                
                StoryBabuStageontroller.ccoude[i] = nnsteArry
                break
            }
        }
        
      
    }
    
    var nnsteArry:Uniquevoice
    init(nnsteArry: Uniquevoice) {
        self.nnsteArry = nnsteArry
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var roleplayTheme: UITextField!
    
    
    

    @IBAction func performanceIntensity(_ sender: Any) {
        self.showBlockReportAlert(for: nnsteArry.based["auIDG"] ?? "")
        
    }
    
    @IBAction func voiceRange(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var sceneHarmony: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        storyCollaboration()
    }

    @IBOutlet weak var storyRhythm: UITableView!
    
  
    @IBAction func interactiveRoleplay(_ sender: UIButton) {
        
        let interact = SaConnexatmalVontroller.init(nnsteArry: nnsteArry)
        self.navigationController?.pushViewController(interact, animated: true)
        
    }
    
    @IBAction func sceneRealism(_ sender: UIButton) {
        guard let enterquest = roleplayTheme.text,!enterquest.isEmpty else {
            SVProgressHUD.showInfo(withStatus: "Please enter your content first!")
            return
        }
        self.nnsteArry.diologlsiedt.append(enterquest)
        self.storyRhythm.reloadData()
        self.roleplayTheme.text = nil
        roleplayTheme.resignFirstResponder()
        
    }
    
    
    private func storyCollaboration()  {
        storyRhythm.delegate = self
        sceneHarmony.text = nnsteArry.based["audioClarity"]
        storyRhythm.dataSource = self
        storyRhythm.backgroundColor = .clear
        NotificationCenter.default.addObserver(self, selector: #selector(performanceIntensity), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
        storyRhythm.separatorStyle = .none
        storyRhythm.allowsSelection = false
        storyRhythm.register(UINib.init(nibName: "SayHIontrollerNOemalCell", bundle: nil), forCellReuseIdentifier: "SayHIontrollerNOemalCell")
        storyRhythm.rowHeight = UITableView.automaticDimension
        storyRhythm.estimatedRowHeight = 70
        storyRhythm.showsVerticalScrollIndicator = false
    }
}

extension SayHIontroller:UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nnsteArry.diologlsiedt.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bgoki = tableView.dequeueReusableCell(withIdentifier: "SayHIontrollerNOemalCell", for: indexPath) as!  SayHIontrollerNOemalCell
        
        bgoki.revocable.image  = AppDelegate.Metrics
        bgoki.characterPortrayal.text = nnsteArry.diologlsiedt[indexPath.row]
        
        return bgoki
        
    }
    
}
