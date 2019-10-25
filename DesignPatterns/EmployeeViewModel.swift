//
//  EmployeeViewModel.swift
//  DesignPatterns
//
//  Created by Goutham Nani on 10/19/19.
//  Copyright © 2019 Goutham Nani. All rights reserved.
//

import Foundation

class EmployeeViewModel {
    
    var nameText: String = ""
    var ageText: String = ""
    var designationText: String = ""
    
    // dependancy injection
    // DI is not mandotory but it is safe to use DI to avoid code breakages by other developers
    init(model: EmployeeModel) {
        nameText = model.name
        ageText = "\(model.age)"
        designationText = model.age > 28 ? "Senior Developer" : "Junior Developer" // Logical statement
    }
    
}
