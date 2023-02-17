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

