//
//  DetailContactViewProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

protocol DetailContactViewProtocol {
    var presenter: DetailContactPresenterProtocol? { get set }
    var contactDetail: Contact? { get set }
    
    func setupUIWithPresenter ( contactDetail: Contact ) 

}
