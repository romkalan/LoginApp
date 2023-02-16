//
//  BioViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 16.02.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var biographyLabel: UILabel!
    
    var biography = ""
    var petName = ""
    var petToy = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = biography
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let petVC = segue.destination as? PetViewController {
            petVC.navigationItem.title = petName
            petVC.petName = petName
            petVC.petToy = petToy
        }
    }
}

