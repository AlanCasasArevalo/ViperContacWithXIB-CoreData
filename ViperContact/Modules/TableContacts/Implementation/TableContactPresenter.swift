//
//  TableContactPresenter.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation
import CoreData

class TableContactPresenter: TableContactPresenterProtocol {

    var view: TableContactViewProtocol?
    var interactor: TableContactInteractorProtocol?
    var router: TableContactRouterProtocol?

    var context: NSManagedObjectContext?

    init(context: NSManagedObjectContext?) {
        self.context = context
    }
    
    func navigationToAddNewContact() {
        router?.navigationToAddNewContact()
    }

    func navigationToDetail(contactDetail: Contact) {
        router?.navigationToDetail(contactDetail: contactDetail)
    }
    
}
