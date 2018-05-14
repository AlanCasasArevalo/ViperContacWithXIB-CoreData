//
//  AddNewContactRouterProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit
import CoreData

protocol AddNewContactRouterProtocol {
    var view: AddNewContactViewProtocol? { get set }
    var interactor: AddNewContactInteractorProtocol? { get set }
    var presenter: AddNewContactPresenterProtocol? { get set }
    
    var context: NSManagedObjectContext? { get set }
}
