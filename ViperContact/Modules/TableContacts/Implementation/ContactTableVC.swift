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
    
    var contacts: [Contact]?
    
    var presenter: TableContactPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter?.getContactsFromCoreData()
    }
    
    func setupUI () {
        
        title = "Contacts"
        let addNewPersonButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPersonAction))
        navigationItem.rightBarButtonItem = addNewPersonButton
        
        //TODO: Do something with this something is wrong
        presenter?.getContactsFromCoreData()
    }
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contactToShow = contacts![indexPath.row]
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = contactToShow.name
        cell?.detailTextLabel?.text = contactToShow.surname
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contactDetail = contacts![indexPath.row]
        
        presenter?.navigationToDetail(contactDetail: contactDetail)
    }

    @objc func addNewPersonAction (){
        presenter?.navigationToAddNewContact()
    }
    
    func setTableViewWithData(contacts: [Contact]) {
        self.contacts = contacts
        tableView.reloadData()
    }
    
}
















