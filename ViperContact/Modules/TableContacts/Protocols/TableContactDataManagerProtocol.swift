//
//  TableContactsDataManagerProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

protocol TableContactDataManagerProtocol {
    var contacts: [Contact]? { get set }
    var context: NSManagedObjectContext? { get set }
    
    func getContactFromCoreData () -> [Contact]
}
