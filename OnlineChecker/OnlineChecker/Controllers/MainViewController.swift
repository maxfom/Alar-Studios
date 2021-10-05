//
//  MainViewController.swift
//  OnlineChecker
//
//  Created by Максим Фомичев on 06.10.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    let loginLabel = UILabel(text: "Login:", font: .AvenirNext14(), aligment: .left)
    lazy var loginField = UITextField(placeholder: "Enter your login", keyboardType: .default, font: .AvenirNextDemiBold14())
    let passwordLabel = UILabel(text: "Password:", font: .AvenirNext14(), aligment: .left)
    lazy var passwordField = UITextField(placeholder: "Enter your password", keyboardType: .default, font: .AvenirNextDemiBold14())


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setConstraints()
        passwordField.isSecureTextEntry = true
    }
    
}


extension MainViewController {
    
    
    func setConstraints() {
        
        view.addSubview(loginLabel)
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -70),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            loginLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            loginLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        view.addSubview(loginField)
        NSLayoutConstraint.activate([
            loginField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 5),
            loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            loginField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            loginField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        view.addSubview(passwordLabel)
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 30),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            passwordLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        view.addSubview(passwordField)
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            passwordField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
    }
}
