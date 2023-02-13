//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 13.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var backgroundGradientView: UIView!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        setGradientBackground(colorTop: .systemPink, andColorBottom: .systemBlue)
    }
    
    private func setGradientBackground(colorTop firstColor: UIColor, andColorBottom secondColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        
        let colorTop =  firstColor
        let colorBottom = secondColor
        
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.frame = self.view.bounds
        gradientLayer.shouldRasterize = true
        backgroundGradientView.layer.addSublayer(gradientLayer)
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }

}
