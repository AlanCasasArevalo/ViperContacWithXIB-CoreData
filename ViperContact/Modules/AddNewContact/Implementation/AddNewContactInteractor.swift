//
//  AddNewContactInteractor.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

class AddNewContactInteractor: AddNewContactInteractorProtocol {
    
    var context: NSManagedObjectContext?
    var presenter: AddNewContactPresenterProtocol?
    
    func addNewContact(name: String, surname: String) {

        if !name.isEmpty && !surname.isEmpty {
            
            if let newContact = NSEntityDescription.entity(forEntityName: "Contact", in: context!) {
                let contact = Contact(entity: newContact, insertInto: context)
                contact.name = name
                contact.surname = surname
                
                do{
                    try context?.save()
                }catch let error as NSError {
                    print(error)
                }
                
            }
            
        }
        
    }
}
