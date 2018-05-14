//
//  AddNewContactPresenter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

class AddNewContactPresenter: AddNewContactPresenterProtocol {
    
    var view: AddNewContactViewProtocol?
    var interactor: AddNewContactInteractorProtocol?
    var router: AddNewContactRouterProtocol?
    
    func addNewContact(name: String, surname: String) {
        interactor?.addNewContact(name: name, surname: surname)
    }
    
}
