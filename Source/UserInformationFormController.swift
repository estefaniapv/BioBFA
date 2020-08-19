//
//  UserInformationFormController.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/5/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit

class UserInformationFormController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameError: UILabel!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var lastNameError: UILabel!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var birthdayError: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var addressError: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    var isEnableField = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.isUserInteractionEnabled = false
        lastNameTextField.isUserInteractionEnabled = false
        birthdayTextField.isUserInteractionEnabled = false
        addressTextField.isUserInteractionEnabled = false
        
        nameError.isHidden = true
        lastNameError.isHidden = true
        birthdayError.isHidden = true
        addressError.isHidden = true
        
        configureNavBar()
    }
    
    func configureNavBar() {
        let backItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backItem
        
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    func validateEmptyTextFields() {
        if nameTextField.text == "" {
            nameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.layer.cornerRadius = 3.0
            nameTextField.layer.borderWidth = 1.0
            nameError.isHidden = false
        } else {
            nameTextField.layer.borderColor = UIColor.lightGray.cgColor
            nameError.isHidden = true
        }
        
        if lastNameTextField.text == "" {
            lastNameTextField.layer.borderColor = UIColor.red.cgColor
            lastNameTextField.layer.cornerRadius = 3.0
            lastNameTextField.layer.borderWidth = 1.0
            lastNameError.isHidden = false
        } else {
            lastNameTextField.layer.borderColor = UIColor.lightGray.cgColor
            lastNameError.isHidden = true
        }
        
        if birthdayTextField.text == "" {
            birthdayTextField.layer.borderColor = UIColor.red.cgColor
            birthdayTextField.layer.cornerRadius = 3.0
            birthdayTextField.layer.borderWidth = 1.0
            birthdayError.isHidden = false
        } else {
            birthdayTextField.layer.borderColor = UIColor.lightGray.cgColor
            birthdayError.isHidden = true
        }
        
        if addressTextField.text == "" {
            addressTextField.layer.borderColor = UIColor.red.cgColor
            addressTextField.layer.cornerRadius = 3.0
            addressTextField.layer.borderWidth = 1.0
            addressError.isHidden = false
        } else {
            addressTextField.layer.borderColor = UIColor.lightGray.cgColor
            addressError.isHidden = true
        }
    }

    @IBAction func editFieldsAction(_ sender: Any) {
        if isEnableField {
            nameTextField.isUserInteractionEnabled = true
            lastNameTextField.isUserInteractionEnabled = true
            birthdayTextField.isUserInteractionEnabled = true
            addressTextField.isUserInteractionEnabled = true
            editButton.setTitle("Hecho", for: .normal)
        } else {
            nameTextField.isUserInteractionEnabled = false
            lastNameTextField.isUserInteractionEnabled = false
            birthdayTextField.isUserInteractionEnabled = false
            addressTextField.isUserInteractionEnabled = false
            editButton.setTitle("Editar", for: .normal)
        }
        
        isEnableField = !isEnableField
    }
    
    @IBAction func nextStepAction(_ sender: Any) {
        validateEmptyTextFields()
    }
}
