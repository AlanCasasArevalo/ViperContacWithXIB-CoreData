//
//  TableContactDataManager.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

class TableContactDataManager: TableContactDataManagerProtocol {
    
    var contacts: [Contact]?
    
    var context: NSManagedObjectContext?
    
    func getContactFromCoreData() -> [Contact] {
        
        let request: NSFetchRequest<Contact> = NSFetchRequest(entityName: "Contact")
        
        do {
            contacts = try context?.fetch(request)
        } catch let error as NSError {
            print(error)
        }
        
        return contacts!
    }
    
}
