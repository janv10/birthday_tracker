//
//  LoginController.swift
//  birthday_tracker
//
//  Created by Janvi on 6/14/18.
//  Copyright © 2018 Jahnvi. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    //Use AutoLayout for Login name, email etc components
    let inputContainerView:  UIView = {
        let view = UIView()
        
        //Create a white background for our user input components
        view.backgroundColor = UIColor.white
        
        //round off corners
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true;
        
        //Make the white box appear!
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    //Set up Register Button
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        
        //Color your button
        button.backgroundColor = UIColor(r: 166, g: 172, b: 175)
        
        //Give it a title
        button.setTitle("Register", for: .normal)
        
        //Color the title
        button.setTitleColor(UIColor.white, for: .normal)
        
        //Font - make bigger
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        //Make edges rounder
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true;
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //Name Field
    let nameTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Name"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //Name seperator
    let nameSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    //Email Field
    let emailTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Email Address"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //Email seperator
    let emailSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //Add a logo
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "circle_logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        //scale the image
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    //Password Field
    let passwordTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Password"
        text.translatesAutoresizingMaskIntoConstraints = false
        text.isSecureTextEntry = true   //Hide yo kids, hide yo wife, hide yo password
        return text
    }()
    
    //Password seperator
    let passwordSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        //Display Login Screen Color - without convenience
        view.backgroundColor =
            UIColor(displayP3Red: 109/255, green: 121/255, blue: 147/255, alpha: 1)
        */
        
        //Use our convenience UIColor for coloring
        view.backgroundColor = UIColor(r: 109, g: 121, b: 147)
        
       
        //Components added to the view
        view.addSubview(inputContainerView)
        view.addSubview(registerButton)
        view.addSubview(profileImageView)
        
        //Call function that determines x,y, width and height of the white container
        setupInputContainerView()
        
        //Set up constraints for button
        setupRegisterButtonView()
        
        //Set up Logo
        setupLoginImageView()
        
        
    }//end viewDidLoad
    
    
    
    /* Login screen logo constraints */
    func setupLoginImageView(){
        //Need x, y, width and height constraits to pinpoint where the image will land
        //Set up X Value
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Set up Y Value
        profileImageView.bottomAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -12).isActive = true
        
        //Set up Width
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //Set up Height
        profileImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    
    
    /* User input container constraints */
    func setupInputContainerView(){
        //Need x, y, width and height constraits to pinpoint where the box will land
        //Set X value
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Set Y Value
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //Set width value
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        
        //Set height value
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        //Add the fields to view
        inputContainerView.addSubview(nameTextField)
        inputContainerView.addSubview(nameSeperatorView)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeperatorView)
        inputContainerView.addSubview(passwordTextField)
        inputContainerView.addSubview(passwordSeperatorView)
        
        
        //x, y, width and height constraints
        setupNameView()
        setupEmailView()
        setupPasswordView()
        
    }//end setupContainterView
    
  
    
    /* Set up name - x, y, width, height constraints */
    func setupNameView(){
        //Need x, y, width and height constraits to pinpoint where the text will land
        //Set X value
        nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        
        //Set Y field
        nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        
        //Set width
        nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        
        //Set X value
        nameSeperatorView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        
        //Set Y field
        nameSeperatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        
        //Set width
        nameSeperatorView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height
        nameSeperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }//end setupNameView
    
    
    
    /* Set up email - x, y, width, height constraints */
    func setupEmailView(){
        //Need x, y, width and height constraits to pinpoint where the text will land
        //Set X value
        emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        
        //Set Y field
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        
        //Set width
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        
        //Set X value
        emailSeperatorView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        
        //Set Y field
        emailSeperatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        
        //Set width
        emailSeperatorView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height
        emailSeperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }//end setupEmailView
    
    
    
    /* Set up password - x, y, width, height constraints */
    func setupPasswordView(){
        //Need x, y, width and height constraits to pinpoint where the text will land
        //Set X value
        passwordTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        
        //Set Y field
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        
        //Set width
        passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        
        //Set X value
        passwordSeperatorView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        
        //Set Y field
        passwordSeperatorView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor).isActive = true
        
        //Set width
        passwordSeperatorView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height
        passwordSeperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }//end setupEmailView

    
    /* Set up register button - x, y, width, height constraints */
    func setupRegisterButtonView() {
        //Need x, y, width and height constraits to pinpoint where the button will land
        //Set X value
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Set Y Value
        registerButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 12).isActive = true
        
        //Specify the width of the button
        registerButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        //Set height value
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }//end setupRegisterButtonView

    
    //Display White Status Bar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

//Create a UIColor Convenience for convenience
//Ain't nobody got time for that
extension UIColor{
    convenience init (r: CGFloat, g: CGFloat, b: CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
