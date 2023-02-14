//
//  ViewController.swift
//  LoginApp
//
//  Created by Roman Lantsov on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    let userName = "Alexey"
    let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInButtonPressed() {
        if userName != userNameTF.text || password != passwordTF.text {
            showAlert(
                withTitle: "Invalid Login or Password",
                andMessage: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotNameButtonPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is Alexey 🥸")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 123 🥸")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTF.text = ""
            }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
