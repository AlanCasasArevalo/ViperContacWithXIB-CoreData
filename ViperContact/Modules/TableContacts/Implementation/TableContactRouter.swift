//
//  TableContactRouter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit
import CoreData

class TableContactRouter: TableContactRouterProtocol {

    var context: NSManagedObjectContext?

    var view: TableContactViewProtocol? = ContactTableVC()
    var interactor: TableContactInteractorProtocol? = TableContactInteractor()
    var presenter: TableContactPresenterProtocol? 

    var navigationController: UINavigationController?
    
    init(context: NSManagedObjectContext?) {
        
        self.context = context
        
        presenter = TableContactPresenter(context: context)
        
        view?.presenter = presenter
        presenter?.view = view
        
        interactor?.presenter = presenter
        presenter?.interactor = interactor
        
        presenter?.router = self
        
        navigationController = UINavigationController(rootViewController: view as! ContactTableVC)
    }
    
    func navigationToAddNewContact() {
        
        let addNewContactRouter = AddNewContactRouter(context: context)
        
        navigationController?.pushViewController(addNewContactRouter.view as! AddNewContactViewController, animated: true)
    }
    
    func navigationToDetail(contactDetail: Contact) {
        let detailContacRouter = DetailContactRouter()
        
        detailContacRouter.view?.contactDetail = contactDetail

        navigationController?.pushViewController(detailContacRouter.view as! DetailContactViewController, animated: true)
        
    }
    
}
