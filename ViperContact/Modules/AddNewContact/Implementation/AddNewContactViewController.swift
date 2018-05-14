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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Add contact"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
