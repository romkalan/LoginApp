//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(user.person.name)!"
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
}

// MARK: - Set background color
extension UIView {
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor) {
        let gradientLayer = CAGradientLayer()
            
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.frame = bounds
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradientLayer, at:0)
    }
}

