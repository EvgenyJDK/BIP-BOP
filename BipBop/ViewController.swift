//
//  ViewController.swift
//  BipBop
//
//  Created by Administrator on 05.03.2018.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class BeginViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var beginButton: UIButton!
    
    private let topColor = UIColor(red: 102/255, green: 112/255, blue: 241/255, alpha: 1)
    private let bottomColor = UIColor(red: 184/255, green: 77/255, blue: 235/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    private func configurateUI() {
        backgroundView.addGradientWithColor(topColor: topColor, bottomColor: bottomColor)
        centerView.setRadius()
        beginButton.titleLabel?.textAlignment = .center
    }
    
    @IBAction func action(_ sender: Any) {
        print("action")
    }
    
}


extension UIView {
    
    func setRadius(radius: CGFloat? = nil) {
        self.layer.cornerRadius = radius ?? self.frame.width / 2;
        self.layer.masksToBounds = true;
    }
    
    func addGradientWithColor(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = UIScreen.main.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        self.layer.insertSublayer(gradient, at: 0)
    }
}

