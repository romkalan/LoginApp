//
//  BioViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 16.02.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var biographyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user.person.name + " " + user.person.surName
        biographyLabel.text = user.person.biography
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let petVC = segue.destination as? PetViewController else { return }
        petVC.user = user
    }
}

