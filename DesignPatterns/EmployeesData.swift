//
//  EmployeesData.swift
//  DesignPatterns
//
//  Created by Goutham Nani on 10/19/19.
//  Copyright © 2019 Goutham Nani. All rights reserved.
//

import Foundation

class EmployeesData {
    //MVC
    var employeeModels: [EmployeeModel] {
        return [EmployeeModel(name: "Mahesh", age: 30),
                EmployeeModel(name: "Goutham", age: 30),
                EmployeeModel(name: "Bhav", age: 27)]
    }
//
//    func getEmployees() -> [EmployeeModel] {
//        return employees
//    }
    
    //MVVM
    private var employees: [EmployeeViewModel] {
        return employeeModels.map({ (model) -> EmployeeViewModel in
            return EmployeeViewModel(model: model)
        })
    }
    
    func getEmployees() -> [EmployeeViewModel] {
        return employees
    }
    
}
