//
//  TableContactsRouterProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit
import CoreData

protocol TableContactRouterProtocol {
    var view: TableContactViewProtocol? { get set }
    var interactor: TableContactInteractorProtocol? { get set }
    var presenter: TableContactPresenterProtocol? { get set }
    var context: NSManagedObjectContext? { get set }

    var navigationController: UINavigationController? { get set }
    
    func navigationToAddNewContact ()
    
    func navigationToDetail(contactDetail: Contact)
    
}
