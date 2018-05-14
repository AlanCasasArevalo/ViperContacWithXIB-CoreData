//
//  DetailContactRouter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

class DetailContactRouter: DetailContactRouterProtocol {

    var view: DetailContactViewProtocol? = DetailContactViewController()
    var interactor: DetailContactInteractorProtocol? = DetailContactInteractor()
    var presenter: DetailContactPresenterProtocol? = DetailContactPresenter()
    
    init() {
        view?.presenter = presenter
        presenter?.view = view
        
        presenter?.interactor = interactor
        interactor?.presenter = presenter
        
        presenter?.router = self
        
    }
    
}
