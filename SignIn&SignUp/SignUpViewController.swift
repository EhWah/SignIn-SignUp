//
//  SignUpViewController.swift
//  SignIn&SignUp
//
//  Created by sowah on 1/30/19.
//  Copyright © 2019 sowah. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let logoContainer: UILabel = {
        var logo = UILabel()
        logo.text = "Sign Up"
        logo.font = UIFont.boldSystemFont(ofSize: 23)
        logo.textAlignment = .center
        return logo
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    @objc func handleTextInputChange() {
        let isFormValid = emailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false && nameTextField.text?.isEmpty == false
        
        if isFormValid {
            signUpButton.isEnabled = true
            signUpButton.backgroundColor = .black
        } else {
            signUpButton.isEnabled = false
            signUpButton.backgroundColor = .gray
        }
    }
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        return line
    }()
    
    let line2: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        return line
    }()
    
    let line3: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        return line
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .gray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    @objc func handleSignUp() {
       // handle sign up...
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogoContainer()
        setupInputFields()
        setLineUnderField()
    }
    
    fileprivate func setLogoContainer() {
        view.addSubview(logoContainer)
        logoContainer.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 117, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 184, height: 36)
        logoContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    fileprivate func setLineUnderField() {
        view.addSubview(line)
        view.addSubview(line2)
        view.addSubview(line3)
        
        line.anchor(top: nil, left: nameTextField.leftAnchor, bottom: nameTextField.bottomAnchor, right: nameTextField.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0.5)
        
        line2.anchor(top: nil, left: emailTextField.leftAnchor, bottom: emailTextField.bottomAnchor, right: emailTextField.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0.5)
        
        line3.anchor(top: nil, left: passwordTextField.leftAnchor, bottom: passwordTextField.bottomAnchor, right: passwordTextField.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0.5)
    }
    
    fileprivate func setupInputFields() {
        let stackView = UIStackView(arrangedSubviews: [nameTextField, emailTextField, passwordTextField, signUpButton])
        
        stackView.axis = .vertical
        stackView.spacing = 41
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.anchor(top: logoContainer.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 40, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 295)
    }
}
