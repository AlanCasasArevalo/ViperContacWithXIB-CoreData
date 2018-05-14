//
//  TableContactsPresenterProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

protocol TableContactPresenterProtocol {
    var view: TableContactViewProtocol? { get set }
    var interactor: TableContactInteractorProtocol? { get set }
    var router: TableContactRouterProtocol? { get set }

}
