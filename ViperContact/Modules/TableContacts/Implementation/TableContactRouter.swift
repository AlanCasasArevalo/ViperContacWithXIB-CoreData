//
//  TableContactRouter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit

class TableContactRouter: TableContactRouterProtocol {
    
    var view: TableContactViewProtocol? = ContactTableVC()
    var interactor: TableContactInteractorProtocol? = TableContactInteractor()
    var presenter: TableContactPresenterProtocol? = TableContactPresenter()

    var navigationController: UINavigationController?
    
    init() {
        view?.presenter = presenter
        presenter?.view = view
        
        interactor?.presenter = presenter
        presenter?.interactor = interactor
        
        presenter?.router = self
        
        navigationController = UINavigationController(rootViewController: view as! ContactTableVC)
    }
    
    func navigationToAddNewContact() {
        let addNewContactRouter = AddNewContactRouter()
        
        navigationController?.pushViewController(addNewContactRouter.view as! AddNewContactViewController, animated: true)
    }
    
}
