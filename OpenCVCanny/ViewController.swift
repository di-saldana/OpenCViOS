//
//  ViewController.swift
//  OpenCVCanny
//
//  Created by Dianelys Saldaña on 5/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cameraView: UIImageView!
    @IBOutlet weak var blurSlider: UISlider!
    @IBOutlet weak var edgeSlider: UISlider!
    @IBOutlet weak var angleSlider: UISlider!
    @IBOutlet weak var applyFilterBtn: UIButton!
    
    var cameraWrapper : OpenCVWrapper!
    var isCameraRunning = false {
        didSet {
            DispatchQueue.main.async {
                self.applyFilterBtn.setTitle(self.isCameraRunning ? "Deshabilitar filtro" : "Aplicar filtro", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.cameraWrapper = OpenCVWrapper(imageView: cameraView)
        isCameraRunning = false
    }
    
    @IBAction func blurSlider(_ sender: UISlider) {
        cameraWrapper.setBlur(Int32(sender.value))
    }
    
    @IBAction func edgeSlider(_ sender: UISlider) {
        cameraWrapper.setEdgeGradient(Int32(Int(sender.value) * 2 + 3))
    }
    
    @IBAction func angleSlider(_ sender: UISlider) {
        cameraWrapper.setAngle(Int32(sender.value))
    }
    
    @IBAction func toggleButton(_ sender: UIButton) {
        isCameraRunning.toggle()
        isCameraRunning ? cameraWrapper.startCamera() : cameraWrapper.stopCamera()
    }
    
}

