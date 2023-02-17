//
//  PetViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 16.02.2023.
//

import UIKit

class PetViewController: UIViewController {

    @IBOutlet var petImageView: UIImageView!
    @IBOutlet var petNameLabel: UILabel!
    @IBOutlet var petToyLabel: UILabel!
    
    var pet: Pet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petNameLabel.text = pet.name
        petToyLabel.text = pet.toy
        view.setGradientBackground(colorTop: .opaqueSeparator, colorBottom: .systemMint)
    }
    
    override func viewWillLayoutSubviews() {
        petImageView.layer.cornerRadius = petImageView.frame.width / 2
    }

}


