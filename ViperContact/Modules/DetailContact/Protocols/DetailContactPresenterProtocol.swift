//
//  DetailContactPresenterProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

protocol DetailContactPresenterProtocol {
    var view: DetailContactViewProtocol? { get set }
    var interactor: DetailContactInteractorProtocol? { get set }
    var router: DetailContactRouterProtocol? { get set }
    
}
