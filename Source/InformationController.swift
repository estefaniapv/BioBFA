//
//  InformationController.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/12/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit

class InformationController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak public var scrollView: UIScrollView!
    @IBOutlet weak public var pageControl: UIPageControl!
    
    public var slides:[SlideView] = []
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        slides = createSlides()
        setupSlideScrollView(slides: slides)
        
        pageControl.transform = CGAffineTransform(scaleX: 2, y: 2)
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
    }

    public func createSlides() -> [SlideView] {
        
        let slide1:SlideView = UINib(nibName: "SlideView", bundle: Bundle(for: InformationController.self)).instantiate(withOwner: nil, options: nil)[0] as! SlideView
        slide1.imageView.image = UIImage(named: "validate1")
        slide1.title.text = "Busca un fondo con buen contraste"
        
        let slide2:SlideView = UINib(nibName: "SlideView", bundle: Bundle(for: InformationController.self)).instantiate(withOwner: nil, options: nil)[0] as! SlideView
        slide2.imageView.image = UIImage(named: "validate2")
        slide2.title.text = "Coloca el documento dentro del recuadro"
        
        let slide3:SlideView = UINib(nibName: "SlideView", bundle: Bundle(for: InformationController.self)).instantiate(withOwner: nil, options: nil)[0] as! SlideView
        slide3.imageView.image = UIImage(named: "validate3")
        slide3.title.text = "Evita brillos que dificulten la lectura del documento"
        
        return [slide1, slide2, slide3]
    }
    
    public func setupSlideScrollView(slides : [SlideView]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }
    
    override public func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setupSlideScrollView(slides: slides)
    }

    @IBAction public func dismissViewAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
