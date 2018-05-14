//
//  TableContactInteractor.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

class TableContactInteractor: TableContactInteractorProtocol {
    
    var contacts: [Contact]?
    var context: NSManagedObjectContext?
    var presenter: TableContactPresenterProtocol?

    init(context: NSManagedObjectContext?) {
        self.context = context
    }
    
    func getContactsFromCoreData() {
        
        let fetchRequest: NSFetchRequest<Contact>  = Contact.fetchRequest()
        
        do {
            contacts = try context?.fetch(fetchRequest)
            presenter?.getContactsFromCoreData(contacts: contacts!)
        } catch let error as NSError {
            print(error)
            presenter?.getContactsFromCoreData(contacts: [Contact]() )
        }

    }
    
}
