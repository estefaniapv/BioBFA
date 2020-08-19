//
//  IdentificationInfoController.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/12/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit
import os.log
import FPhiSelphIDWidgetiOS

class IdentificationInfoController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imageView: UIImageView!
    
    public var selphIDWidget: FPhiSelphIDWidget? //Documento

    public let locale = "PE"
    public var documentModel: String {
        "\(locale)|<ALL>"
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        pageControl.transform = CGAffineTransform(scaleX: 2, y: 2)
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override public func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    public func captureFrontDocument(sender: Any) {
        guard let path = Bundle.main.path(forResource: "FPhi_pe.interbank.bfa.pilot_iOS", ofType: "lic") else { return }
        guard let license = try? String(contentsOfFile: path, encoding: .utf8) else { return }
        
        guard let resource = Bundle.main.path(forResource: "fphi-selphid-widget-resources-selphid-1.0", ofType: "zip") else { return }
        
        do {
            try selphIDWidget = FPhiSelphIDWidget(frontCameraIfAvailable: true, resources: resource, delegate: sender, license: license)
        } catch {
            print(error.localizedDescription)
        }
        
        guard let widget = selphIDWidget else { return }
        
        widget.license = license
        widget.wizardMode = false
        widget.scanMode = .SMSearch
        widget.specificData = documentModel
        
        widget.debugMode = false
        widget.showAfterCapture = true
        widget.scanSide = .DSFront
        
        present(widget, animated: true)
    }
    
    @IBAction public func nextAction(_ sender: Any) {
        captureFrontDocument(sender: sender)
    }
    
    @IBAction public func closeAction(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension IdentificationInfoController: FPhiSelphIDWidgetProtocol {
    public func captureFinished() {
        //        selphIDWidget?.results.ocrResults
        imageView.image = selphIDWidget?.results.backDocument
    }
}

