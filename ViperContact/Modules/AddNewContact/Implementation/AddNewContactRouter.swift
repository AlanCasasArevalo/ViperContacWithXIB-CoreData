//
//  AddNewContactRouter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

class AddNewContactRouter: AddNewContactRouterProtocol {
    
    var view: AddNewContactViewProtocol? = AddNewContactViewController()
    var interactor: AddNewContactInteractorProtocol? = AddNewContactInteractor()
    var presenter: AddNewContactPresenterProtocol? = AddNewContactPresenter()
    
    init() {
        
        view?.presenter = presenter
        presenter?.view = view
        
        interactor?.presenter = presenter
        presenter?.interactor = interactor
        
        presenter?.router = self
    }
    
}
