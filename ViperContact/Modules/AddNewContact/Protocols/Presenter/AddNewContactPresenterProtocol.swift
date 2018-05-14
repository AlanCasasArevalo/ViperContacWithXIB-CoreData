//
//  AddNewContactPresenterProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

protocol AddNewContactPresenterProtocol {
    var view: AddNewContactViewProtocol? { get set }
    var interactor: AddNewContactInteractorProtocol? { get set }
    var router: AddNewContactRouterProtocol? { get set }
    
    func addNewContact(name: String, surname: String)
}
