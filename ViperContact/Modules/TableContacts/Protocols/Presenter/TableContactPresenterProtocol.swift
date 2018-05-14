//
//  TableContactsPresenterProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

protocol TableContactPresenterProtocol {
    
    var view: TableContactViewProtocol? { get set }
    var interactor: TableContactInteractorProtocol? { get set }
    var router: TableContactRouterProtocol? { get set }

    var context: NSManagedObjectContext? { get set }
    
    func navigationToAddNewContact()
    
    func navigationToDetail ( contactDetail: Contact )
    
    func getContactsFromCoreData ( contacts: [Contact] )
    
    func getContactsFromCoreData() 


}
