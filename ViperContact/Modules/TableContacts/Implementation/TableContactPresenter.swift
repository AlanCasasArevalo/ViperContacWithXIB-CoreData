//
//  TableContactPresenter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

class TableContactPresenter: TableContactPresenterProtocol {
    
    var view: TableContactViewProtocol?
    var interactor: TableContactInteractorProtocol?
    var router: TableContactRouterProtocol?
    
    func navigationToAddNewContact() {
        router?.navigationToAddNewContact()
    }

}
