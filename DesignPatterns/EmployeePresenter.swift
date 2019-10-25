//
//  EmployeePresenter.swift
//  DesignPatterns
//
//  Created by Goutham Nani on 10/20/19.
//  Copyright © 2019 Goutham Nani. All rights reserved.
//

import UIKit

class EmployeePresenter: NSObject {
    
    let employees: [EmployeeModel] = {
        let data = EmployeesData()
        return data.employeeModels
    }()
    
    func getName(at index: Int) -> String {
        
        guard index < employees.count else {
            return ""
        }
        
        return employees[index].name
        
    }
    
    func getAge(at index: Int) -> String {
        
        guard index < employees.count else {
            return ""
        }
        
        return "\(employees[index].age)"
        
    }
    
    func getDesignation(at index: Int) -> String {
        
        guard index < employees.count else {
            return ""
        }
        
        let age = employees[index].age
        
        let designation = age > 28 ? "Senior Developer" : "Junior Developer"
        
        return designation
        
    }
    
}

extension EmployeePresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeView") as! EmployeeView
        cell.nameLabel.text = getName(at: indexPath.row)
        cell.ageLabel.text = getAge(at: indexPath.row)
        cell.designationLabel.text = getDesignation(at: indexPath.row)
        return cell
    }
    
}
