//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 16.02.2023.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var surNameLabel: UILabel!
    @IBOutlet var ageUserLabel: UILabel!
    
    var name = ""
    var surName = ""
    var age = 0
    var biography = ""
    var petName = ""
    var petToy = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = name
        surNameLabel.text = surName
        ageUserLabel.text = String(age)
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func viewWillLayoutSubviews() {
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? BioViewController {
            bioVC.navigationItem.title = name + " " + surName
            bioVC.biography = biography
            bioVC.petName = petName
            bioVC.petToy = petToy
        }
    }
}

