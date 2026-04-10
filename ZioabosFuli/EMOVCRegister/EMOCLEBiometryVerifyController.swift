import UIKit
import AVFoundation

class EMOCLEBiometryVerifyController: EMOCLEBaseFlowController {
    
  
    private var captureSessionEMOCLE: AVCaptureSession?
    private let previewLayerEMOCLE = AVCaptureVideoPreviewLayer()
    
    private let scannerOverlayEMOCLE = UIView()
    private let scanningLineEMOCLE = UIView()
    private let alertToastEMOCLE = UILabel()
    private let shutterEMOCLE = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        regdsiterTitle.text = "Vdexryibfmyn xYqoougrb tIwdkevnyttiptsy".characterBelievability()
        setupCameraPreviewEMOCLE()
        setupOverlayUIEMOCLE()
    }

   
    private func setupCameraPreviewEMOCLE() {
       
        let statusEMOCLE = AVCaptureDevice.authorizationStatus(for: .video)
        
        switch statusEMOCLE {
        case .notDetermined:
          
            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
                if granted {
                    DispatchQueue.main.async {
                        self?.initiateCaptureSessionEMOCLE()
                    }
                } else {
                    self?.handleCameraDeniedEMOCLE()
                }
            }
        case .authorized:
           
            initiateCaptureSessionEMOCLE()
        case .denied, .restricted:
         
            handleCameraDeniedEMOCLE()
        @unknown default:
            break
        }
    }

    private func initiateCaptureSessionEMOCLE() {
        captureSessionEMOCLE = AVCaptureSession()
        guard let session = captureSessionEMOCLE else { return }
        
        guard let frontCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front),
              let input = try? AVCaptureDeviceInput(device: frontCamera) else {
            return
        }
        
        if session.canAddInput(input) {
            session.addInput(input)
        }
        
        previewLayerEMOCLE.session = session
        previewLayerEMOCLE.videoGravity = .resizeAspectFill
        previewLayerEMOCLE.frame = view.bounds
        view.layer.insertSublayer(previewLayerEMOCLE, at: 0)
        
        
        DispatchQueue.global(qos: .userInitiated).async {
            session.startRunning()
        }
    }

    private func handleCameraDeniedEMOCLE() {
        DispatchQueue.main.async {
           
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Pulneyalsiew rexnraubjlgef gcjacmiemriab upveqrfmeipsesiiaodnjsk eijne ySmegtwtfivnaggsz.".characterBelievability())
        }
    }
//    private func setupCameraPreviewEMOCLE() {
//        captureSessionEMOCLE = AVCaptureSession()
//        guard let session = captureSessionEMOCLE else { return }
//        
//        guard let frontCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front),
//              let input = try? AVCaptureDeviceInput(device: frontCamera) else {
//            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Camera access denied")
//            return
//        }
//        
//        if session.canAddInput(input) { session.addInput(input) }
//        
//        previewLayerEMOCLE.session = session
//        previewLayerEMOCLE.videoGravity = .resizeAspectFill
//        previewLayerEMOCLE.frame = view.bounds
//        view.layer.insertSublayer(previewLayerEMOCLE, at: 0)
//        
//        // 在后台启动相机
//        DispatchQueue.global(qos: .userInitiated).async {
//            session.startRunning()
//        }
//    }

    private func setupOverlayUIEMOCLE() {
        // 中间的人脸镂空路径
        let overlayPathEMOCLE = UIBezierPath(rect: view.bounds)
        let faceRectEMOCLE = CGRect(x: view.center.x - 110, y: view.center.y - 180, width: 220, height: 300)
        let facePathEMOCLE = UIBezierPath(ovalIn: faceRectEMOCLE)
        overlayPathEMOCLE.append(facePathEMOCLE)
        overlayPathEMOCLE.usesEvenOddFillRule = true

        let fillLayerEMOCLE = CAShapeLayer()
        fillLayerEMOCLE.path = overlayPathEMOCLE.cgPath
        fillLayerEMOCLE.fillRule = .evenOdd
        fillLayerEMOCLE.fillColor = UIColor.black.withAlphaComponent(0.5).cgColor
        view.layer.addSublayer(fillLayerEMOCLE)

        alertToastEMOCLE.text = "Pslzemacszea qmxagkeej qshuxrcen kyaonutrv peonfttidrmeu yfnadcmea kipsz gebxlpuossmeddp fwxirtjhcoluwtr dabnnyt kofbesetdraubcdtaicomnjsh.".characterBelievability()
        alertToastEMOCLE.textColor = UIColor(red: 1, green: 0.34, blue: 0.61, alpha: 1)
        alertToastEMOCLE.font = .systemFont(ofSize: 14, weight: .medium)
        alertToastEMOCLE.numberOfLines = 0
        alertToastEMOCLE.textAlignment = .center
        alertToastEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(alertToastEMOCLE)

      
        shutterEMOCLE.setBackgroundImage(UIImage.init(named: "innerDotEMOCLE"), for: .normal)
        shutterEMOCLE.isUserInteractionEnabled = true
        shutterEMOCLE.addTarget(self, action: #selector(simulateCaptureSequenceEMOCLE), for: .touchUpInside)
        shutterEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(shutterEMOCLE)
        
      

        NSLayoutConstraint.activate([
            shutterEMOCLE.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            shutterEMOCLE.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shutterEMOCLE.widthAnchor.constraint(equalToConstant: 80),
            shutterEMOCLE.heightAnchor.constraint(equalToConstant: 80),
            
           
            alertToastEMOCLE.bottomAnchor.constraint(equalTo: shutterEMOCLE.topAnchor, constant: -30),
            alertToastEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            alertToastEMOCLE.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        addScanningAnimationEMOCLE(in: faceRectEMOCLE)
    }

    private func addScanningAnimationEMOCLE(in rect: CGRect) {
        scanningLineEMOCLE.frame = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: 2)
        scanningLineEMOCLE.backgroundColor = .systemPink
        scanningLineEMOCLE.layer.shadowColor = UIColor.systemPink.cgColor
        scanningLineEMOCLE.layer.shadowRadius = 10
        scanningLineEMOCLE.layer.shadowOpacity = 0.8
        view.addSubview(scanningLineEMOCLE)
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.scanningLineEMOCLE.frame.origin.y = rect.origin.y + rect.height
        }, completion: nil)
    }


    @objc private func simulateCaptureSequenceEMOCLE() {
       
        let statusEMOCLE = AVCaptureDevice.authorizationStatus(for: .video)
        
        switch statusEMOCLE {
        case .notDetermined:
          
            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
                if granted {
                    DispatchQueue.main.async {
                        self?.takePhoto()
                    }
                } else {
                    self?.handleCameraDeniedEMOCLE()
                }
            }
        case .authorized:
            takePhoto()
        case .denied, .restricted:
         
            handleCameraDeniedEMOCLE()
        @unknown default:
            break
        }
        
       
    }
    
    func takePhoto(){
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        
      
        captureSessionEMOCLE?.stopRunning()
        
      
        let processingIndicatorEMOCLE = UIActivityIndicatorView(style: .large)
        processingIndicatorEMOCLE.color = .white
        processingIndicatorEMOCLE.center = view.center
        view.addSubview(processingIndicatorEMOCLE)
        processingIndicatorEMOCLE.startAnimating()
        
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Cgoimgpiaurgiinngy iIgdrelnxtriatmyy.i.x.".characterBelievability())
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            processingIndicatorEMOCLE.stopAnimating()
            
            let welcomeAboardEMOCLE = EMOCLEWelcomeAboardController()
            self.navigationController?.pushViewController(welcomeAboardEMOCLE, animated: true)
        }
    }
}
