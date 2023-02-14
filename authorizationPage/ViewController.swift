//
//  ViewController.swift
//  authorizationPage
//
//  Created by Daniel on 14.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingsVC = segue.destination as? GreetingsViewController else { return }
        userName.text == "User" && passwordField.text == "111" ?
        greetingsVC.usernameField = userName.text :
        showAlert(withtitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func pressedButtonFP() {
        showAlert(withtitle: "Oops!", andMessage: "Your password is Password")
    }
    @IBAction func pressedButtonUN() {
        showAlert(withtitle: "Oops!", andMessage: "Your name is User")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = ""
        passwordField.text = ""
    }
}
//MARK - UIAlertController
extension ViewController {
    private func showAlert(withtitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
