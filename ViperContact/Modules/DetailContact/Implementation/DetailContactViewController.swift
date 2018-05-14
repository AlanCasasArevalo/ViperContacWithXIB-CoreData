//
//  DetailContactViewController.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit

class DetailContactViewController: UIViewController, DetailContactViewProtocol {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    var contactDetail: Contact?
    
    var presenter: DetailContactPresenterProtocol?    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detail"
        
        // TODO: Fix this to do it with presenter
        nameLabel.text = contactDetail?.name
        surnameLabel.text = contactDetail?.surname
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
