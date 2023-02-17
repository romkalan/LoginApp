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
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user.person.name + " " + user.person.surName
        userNameLabel.text = user.person.name
        surNameLabel.text = user.person.surName
        ageUserLabel.text = String(user.person.age)
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func viewWillLayoutSubviews() {
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
            bioVC.user = user
    }
}

