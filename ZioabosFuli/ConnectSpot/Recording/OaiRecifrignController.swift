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
    
    var stringClosure: ((String) -> Void)?
    
    @IBOutlet weak var timeingtraimming: UILabel!
    
    @IBOutlet weak var playActueButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAudioSession()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startRecording()
    }
    private func setupAudioSession() {
            recordingSession = AVAudioSession.sharedInstance()
            
            do {
                try recordingSession.setCategory(.playAndRecord, mode: .default)
                try recordingSession.setActive(true)
                
                recordingSession.requestRecordPermission { [weak self] allowed in
                    DispatchQueue.main.async {
                        if !allowed {
                            SVProgressHUD.showInfo(withStatus: "Access to the microphone is required for recording. Please enable microphone permissions in the settings.")
                        }
                    }
                }
            } catch {
                SVProgressHUD.showError(withStatus: "Recording error")
               
            }
       
    }
    
    private func startRecording() {
           let audioFilename = getDocumentsDirectory().appendingPathComponent("recording.m4a")
           
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
               
               startTimer()
           } catch {
               stopRecording()
               SVProgressHUD.showError(withStatus: "Recording error")
           }
       }
    
    @IBOutlet weak var recordingIcon: UIButton!
    
    // MARK: - Playback
    @IBAction func togglePlayback(_ sender: UIButton) {
        if audioPlayer?.isPlaying == true {
            pausePlayback()
        } else {
            startPlayback()
        }
    }
    
       
       private func startPlayback() {
           let audioFilename = getDocumentsDirectory().appendingPathComponent("recording.m4a")
           
           do {
               audioPlayer = try AVAudioPlayer(contentsOf: audioFilename)
               audioPlayer?.delegate = self
               audioPlayer?.play()
               playActueButton.isSelected = true
           } catch {
               SVProgressHUD.showError(withStatus: "Play error")
               
           }
       }
       
       private func pausePlayback() {
           audioPlayer?.pause()
           playActueButton.isSelected = false
       }
       
       private func stopPlayback() {
           audioPlayer?.stop()
           audioPlayer = nil
           playActueButton.isSelected = false
       }
       
       // MARK: - Timer
       private func startTimer() {
           recordingTime = 0
           timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
       }
       
       private func stopTimer() {
           timer?.invalidate()
           timer = nil
       }
       
       @objc private func updateTime() {
           recordingTime += 1
           timeingtraimming.text = formattedTime(recordingTime)
       }
       
       private func formattedTime(_ time: TimeInterval) -> String {
           let minutes = Int(time) / 60
           let seconds = Int(time) % 60
           return String(format: "%02d:%02d", minutes, seconds)
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
        deleteRecording()
        self.dismiss(animated: true)
    }
    
    
    
}

extension OaiRecifrignController: AVAudioRecorderDelegate {
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if !flag {
            SVProgressHUD.showError(withStatus: "Recording error")
        }
    }
}

// MARK: - AVAudioPlayerDelegate
extension OaiRecifrignController: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playActueButton.isSelected = false
        playActueButton.isHidden = false
    }
    
    private func stopRecording() {
        audioRecorder?.stop()
        audioRecorder = nil
        stopTimer()
        
    }
 
    private func deleteRecording() {
        let audioFilename = getDocumentsDirectory().appendingPathComponent("recording.m4a")
        
        do {
            try FileManager.default.removeItem(at: audioFilename)
        } catch {
            print("删除录音文件失败")
        }
    }
}
