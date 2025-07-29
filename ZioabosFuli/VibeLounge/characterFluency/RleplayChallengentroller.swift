//
//  RleplayChallengentroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD

class RleplayChallengentroller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let vdoo = [("Uhseegra jAsgervexebmfeknit".characterBelievability(),"voiceRange0"),("Purliyvtaucgy".characterBelievability(),"voiceRange1"),("Colwebaurs otahbed ccuaycghfe".characterBelievability(),"voiceRange2"),("Atbxovuat".characterBelievability(),"voiceRange3"),
                ("Dneplreqtsei qAbctcoobutnzt".characterBelievability(),"voiceRange6")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vdoo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let table = tableView.dequeueReusableCell(withIdentifier: "sidjginjgnb", for: indexPath)
        table.selectionStyle = .none
        table.backgroundColor = .clear
        table.imageView?.image = UIImage(named: vdoo[indexPath.row].1)
        table.textLabel?.text = vdoo[indexPath.row].0
        return table
    }
    
    
    @IBOutlet weak var emotiveVoice: UITableView!
    
    
    @IBOutlet weak var dynamicddDialoguefs: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dynamicddDialoguefs.layer.masksToBounds = true
        
        emotiveVoice.delegate = self
        characterAlignment()
        emotiveVoice.register(UITableViewCell.self, forCellReuseIdentifier: "sidjginjgnb")
        emotiveVoice.backgroundColor = .clear
    }
    
    private func characterAlignment() {
        emotiveVoice.dataSource = self
        emotiveVoice.separatorStyle = .singleLine
        dynamicddDialoguefs.layer.cornerRadius = 26
    }

    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
 
    @IBAction func dynamicddDialoguefsFor(_ sender: Any) {
        userSpotlight()

    }
    
    
    func userSpotlight()  {
        RekaointonCell.featureDiscovery.removeAll()
        UserDefaults.standard.set(nil, forKey: "emotionalWeight")
        VCoiCommentCell.contextualTips.removeAll()
        AppDelegate.accessibilityOptions(darkMode:false)
        StoryBabuSmeaCell.Metrics = UIImage(named: "ZaboIO")!
        
        
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let  cheicking =  UIStoryboard(name: "Main".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "zaboterm")
            
            self.navigationController?.pushViewController(cheicking, animated: true)
            
        case 1:
            let  cheicking =  UIStoryboard(name: "Main".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "zabopricy")
            
            self.navigationController?.pushViewController(cheicking, animated: true)
        case 2:
            
            self.showSuccessHUD(message: "Crlwetarrp tcsovmapolbeotpewdo!".characterBelievability())
           
        case 3:
            self.navigationController?.pushViewController(RAccutettroller(), animated: true)
        case 4:
            let alert = AlertZABoBuilder(
                title: "Dsexlteeteeh nAecwcsohuanutx dPresrrmpavnxesnctplzy".characterBelievability(),
                message: "This will immediately: \n• Erase all profile data \n• Remove active subscriptions \n• Delete chat history"
            )
            .setTitleColor(.systemOrange)
            .addAction(title: "Cvahnncheml".characterBelievability(), style: .cancel)
            .addAction(title: "Sure", style: .destructive) { [weak self] in
                self?.userSpotlight()
            }
            .build()
            self.present(alert, animated: true)
        default:
            break

        }
    }
}


struct AlertZABoBuilder {
    private var title: String
    private var message: String
    private var actions: [UIAlertAction] = []
    private var titleAttributes: [NSAttributedString.Key: Any]?
    
    init(title: String, message: String) {
        self.title = title
        self.message = message
    }
    
    func addAction(title: String, style: UIAlertAction.Style, handler: (() -> Void)? = nil) -> AlertZABoBuilder {
        let action = UIAlertAction(title: title, style: style) { _ in
            handler?()
        }
        var builder = self
        builder.actions.append(action)
        return builder
    }
    
    func setTitleColor(_ color: UIColor) -> AlertZABoBuilder {
        var builder = self
        builder.titleAttributes = [.foregroundColor: color]
        return builder
    }
    
    func build() -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        actions.forEach(alert.addAction)
        
        if let attributes = titleAttributes {
            let attributedTitle = NSAttributedString(string: title, attributes: attributes)
            alert.setValue(attributedTitle, forKey: "attributedTitle")
        }
        
        return alert
    }
}


class QuTeConteoller: UIViewController {
    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


class QuTePrieteoller: UIViewController {
    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


class NOtiMourieteoller: UIViewController {
    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
