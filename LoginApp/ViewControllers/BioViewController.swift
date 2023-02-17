//
//  BioViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 16.02.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var biographyLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = person.biography
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let petVC = segue.destination as? PetViewController {
            petVC.navigationItem.title = person?.pet.name
            petVC.pet = person?.pet
        }
    }
}

