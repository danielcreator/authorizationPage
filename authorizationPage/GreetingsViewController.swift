//
//  GreetingsViewController.swift
//  authorizationPage
//
//  Created by Daniel on 14.02.2023.
//

import UIKit

final class GreetingsViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var userName: UILabel!
    var usernameField: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = usernameField
        let colorTop = UIColor(red: 0.87, green: 0.37, blue: 0.54, alpha: 1).cgColor
        let colorBottom = UIColor (red: 0.97, green: 0.73, blue: 0.33, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.backgroundView.bounds
        gradientLayer.colors = [colorTop, colorBottom]
        self.backgroundView.layer.insertSublayer(gradientLayer, at: 0)
    }
    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
}
