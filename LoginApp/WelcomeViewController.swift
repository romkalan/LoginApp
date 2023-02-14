//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 13.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "")!"
        setGradientBackground(colorTop: .systemPink, andColorBottom: .systemBlue)
    }
    
    private func setGradientBackground(colorTop firstColor: UIColor, andColorBottom secondColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        
        let colorTop =  firstColor
        let colorBottom = secondColor
        
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.frame = view.bounds
        gradientLayer.shouldRasterize = true
        view.layer.addSublayer(gradientLayer)
        view.layer.insertSublayer(gradientLayer, at:0)
    }

}
