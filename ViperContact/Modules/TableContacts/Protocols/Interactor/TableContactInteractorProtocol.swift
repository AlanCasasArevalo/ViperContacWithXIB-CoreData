//
//  TableContactsInteractorProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

protocol TableContactInteractorProtocol {
    
    var context: NSManagedObjectContext? { get set }
    
    var presenter: TableContactPresenterProtocol? { get set }
    
    var contacts: [Contact]? { get set }
    
    func getContactsFromCoreData() 

}
