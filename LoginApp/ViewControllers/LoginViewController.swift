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
    
    let user = User.getUserInformation()
    
    override func viewDidLoad() {
        userNameTF.text = user.userName
        passwordTF.text = user.password
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.person = user.person
            } else if let userNavigationVC = viewController as? UINavigationController {
                guard let userVC = userNavigationVC.topViewController as? UserViewController else { return }
                userVC.person = user.person
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInButtonPressed() {
        user.userName == userNameTF.text || user.password == passwordTF.text
        ? performSegue(withIdentifier: "openWelcomeVC", sender: nil)
        : showAlert(
            withTitle: "Invalid Login or Password",
            andMessage: "Please, enter correct login and password"
        )
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.userName) 🥸")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 🥸")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTF.text = ""
            }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
