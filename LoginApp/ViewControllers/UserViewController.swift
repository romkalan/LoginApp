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
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = person.name
        surNameLabel.text = person.surName
        ageUserLabel.text = String(person.age)
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func viewWillLayoutSubviews() {
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? BioViewController {
            bioVC.navigationItem.title = (person?.name ?? "") + " " + (person?.surName ?? "")
            bioVC.person = person
        }
    }
}

