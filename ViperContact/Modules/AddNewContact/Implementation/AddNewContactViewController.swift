//
//  AddNewContactViewController.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit

class AddNewContactViewController: UIViewController, AddNewContactViewProtocol {
    
    var presenter: AddNewContactPresenterProtocol?

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func saveNewContactAction() {
        presenter?.addNewContact(name: nameTextField.text!, surname: surnameTextField.text!)
        navigationController?.popViewController(animated: true)
    }
    
    func setupUI () {
        title = "Add contact"
        let saveNewContactButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveNewContactAction))
        navigationItem.rightBarButtonItem = saveNewContactButton
    }
        
}
