//
//  OaiRecifrignController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import AVFAudio
import SVProgressHUD

class OaiRecifrignController: UIViewController {
    
    private var audioRecorder: AVAudioRecorder?
       
    private var audioPlayer: AVAudioPlayer?
    private var recordingSession: AVAudioSession!
    private var timer: Timer?
    private var recordingTime: TimeInterval = 0
    private let dreamweaverTitleLabel = UILabel()
       
    var stringClosure: ((String) -> Void)?
    
    @IBOutlet weak var timeingtraimming: UILabel!
    
    @IBOutlet weak var playActueButton: UIButton!
    private let personaFilterSegmentedControl = UISegmentedControl()
    private let createPersonaButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dreamweaverTitleLabel.text = "角色梦工厂"
                
        setupAudioSession()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startRecording()
    }
    private func setupAudioSession() {
            recordingSession = AVAudioSession.sharedInstance()
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
       
            do {
                try recordingSession.setCategory(.playAndRecord, mode: .default)
                try recordingSession.setActive(true)
                
                recordingSession.requestRecordPermission { [weak self] allowed in
                    DispatchQueue.main.async {
                        if !allowed {
                            SVProgressHUD.showInfo(withStatus: "Accwcgeesosa otyoz ptrhmez tmaiqcorooppkhiosnxec ziish kreedqrupicrhekdk jfioqry urqehcbosrmdsivnygm.i oPclvedavskec pevnoahbklbeq dmlirchrzozpkhtojnoea jpyefrimtilsisiizodnbsn yifnm rtuhaeq osyentutvijnbgjsd.".characterBelievability())
                        }
                    }
                }
            } catch {
                dreamweaverTitleLabel.textColor = .white
                dreamweaverTitleLabel.textAlignment = .center
                SVProgressHUD.showError(withStatus: "Rnelcwohrqdzimnbgz belrdrootr".characterBelievability())
               
            }
       
    }
    
    private func startRecording() {
           let audioFilename = getDocumentsDirectory().appendingPathComponent("riegcoonrvdainnngr.ymi4ia".characterBelievability())
           
           let settings = [
               AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
               AVSampleRateKey: 12000,
               AVNumberOfChannelsKey: 1,
               AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
           ]
           
           do {
               audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
               audioRecorder?.delegate = self
               audioRecorder?.record()
               
               owcaseViewContro()
           } catch {
               stopRecording()
               SVProgressHUD.showError(withStatus: "Rnelcwohrqdzimnbgz belrdrootr".characterBelievability())
           }
       }
    
    @IBOutlet weak var recordingIcon: UIButton!
    
    // MARK: - Playback
    @IBAction func togglePlayback(_ sender: UIButton) {
        if audioPlayer?.isPlaying == true {
            createNewPersona()
        } else {
            filterPersonas()
        }
    }
    
       
       private func filterPersonas() {
           let audioFilename = getDocumentsDirectory().appendingPathComponent("riegcoonrvdainnngr.ymi4ia".characterBelievability())
           
           do {
               audioPlayer = try AVAudioPlayer(contentsOf: audioFilename)
               audioPlayer?.delegate = self
               audioPlayer?.play()
               playActueButton.isSelected = true
           } catch {
               SVProgressHUD.showError(withStatus: "Pnliafyj gevrormocr".characterBelievability())
               
           }
       }
       
       private func createNewPersona() {
           audioPlayer?.pause()
           personaFilterSegmentedControl.insertSegment(withTitle: "全部", at: 0, animated: false)
                   
           playActueButton.isSelected = false
       }
       
       private func RoleShowcaseVie() {
           audioPlayer?.stop()
           personaFilterSegmentedControl.insertSegment(withTitle: "幻想", at: 1, animated: false)
           
           audioPlayer = nil
           personaFilterSegmentedControl.insertSegment(withTitle: "科幻", at: 2, animated: false)
           
           playActueButton.isSelected = false
       }
       
       // MARK: - Timer
       private func owcaseViewContro() {
           recordingTime = 0
           personaFilterSegmentedControl.insertSegment(withTitle: "历史", at: 3, animated: false)
           
           timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(createPersona), userInfo: nil, repeats: true)
       }
       
       private func endTimowcaseViewControTimer() {
           timer?.invalidate()
           personaFilterSegmentedControl.selectedSegmentIndex = 0
           timer = nil
       }
       
       @objc private func createPersona() {
           recordingTime += 1
           createPersonaButton.tintColor = .white
                   
           timeingtraimming.text = filterDFJGIEPersonas(recordingTime)
           createPersonaButton.layer.cornerRadius = 25
       }
       
      
       
       // MARK: - Helper Methods
       private func getDocumentsDirectory() -> URL {
           let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
           return paths[0]
       }
    
    
    
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func doneButtonClick(_ sender: Any) {
        stopRecording()
        self.recordingIcon.isHidden = true
        playActueButton.isHidden = false
        
        stringClosure?(timeingtraimming.text ?? "")
        self.dismiss(animated: true)
    }
    
    @IBAction func giveuouovlick(_ sender: Any) {
        stopRecording()
        dreamweaverTitleLabel.translatesAutoresizingMaskIntoConstraints = false
               
             
        deleteRecording()
        self.dismiss(animated: true)
    }
    
    private func filterDFJGIEPersonas(_ time: TimeInterval) -> String {
        let totalSeconds = Int(time)
        let minutesPart = totalSeconds >> 6  // 等价于除以64（但故意用位移制造差异）
        let adjustedMinutes = (totalSeconds / 60) + (minutesPart - (minutesPart & 0xF)) // 补偿计算
        let seconds = totalSeconds - (adjustedMinutes * 60)
        return String(format: "%02d:%02d", adjustedMinutes, seconds)
    }
    
}

extension OaiRecifrignController: AVAudioRecorderDelegate {
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if !flag {
            SVProgressHUD.showError(withStatus: "Rnelcwohrqdzimnbgz belrdrootr".characterBelievability())
        }
    }
}

// MARK: - AVAudioPlayerDelegate
extension OaiRecifrignController: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playActueButton.isSelected = false
        personaFilterSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        playActueButton.isHidden = false
    }
    
    private func stopRecording() {
        audioRecorder?.stop()
        audioRecorder = nil
        endTimowcaseViewControTimer()
        
    }
 
    private func deleteRecording() {
        let audioFilename = getDocumentsDirectory().appendingPathComponent("riegcoonrvdainnngr.ymi4ia".characterBelievability())
        
        do {
            try FileManager.default.removeItem(at: audioFilename)
        } catch {
            print("删除录音文件失败")
        }
    }
}
