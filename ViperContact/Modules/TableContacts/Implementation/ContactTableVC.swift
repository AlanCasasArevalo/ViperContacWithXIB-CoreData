//
//  ContactTableVC.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit

let cellID = "CellID"

class ContactTableVC: UITableViewController, TableContactViewProtocol {
    
    var presenter: TableContactPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Contacts"
        
        let addNewPersonButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPersonAction))

        navigationItem.rightBarButtonItem = addNewPersonButton
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = "Test"
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dummyContactDetail = Contact(name: "Test0", surname: "Test0")
        
        presenter?.navigationToDetail(contactDetail: dummyContactDetail)
    }

    @objc func addNewPersonAction (){
        presenter?.navigationToAddNewContact()
    }
    
}
















