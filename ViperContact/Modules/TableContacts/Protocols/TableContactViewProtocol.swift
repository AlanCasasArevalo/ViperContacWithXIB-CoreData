//
//  TableContactsViewProtocol.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import Foundation

protocol TableContactViewProtocol {
    var contacts: [Contact]? { get set }
    var presenter: TableContactPresenterProtocol? { get set }
    
    func setTableViewWithData( contacts: [Contact] )
}
