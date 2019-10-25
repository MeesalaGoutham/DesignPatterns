//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Goutham Nani on 10/19/19.
//  Copyright © 2019 Goutham Nani. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var presenter = EmployeePresenter()
    
    // MVC
    //var employees: [EmployeeModel]!
    
    //MVVM
    var employees: [EmployeeViewModel]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let employeesData = EmployeesData()
        employees = employeesData.getEmployees()
        
        tableView.dataSource = presenter
    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return employees.count
//    }
//
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // MVC
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeView") as! EmployeeView
//        let model = employees[indexPath.row]
//        cell.employeeModel = model
//        cell.designationLabel.text = model.age > 28 ? "Senior Developer" : "Junior Developer"
//        return cell
//    }
    
//    // MVVM
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeView") as! EmployeeView
//        let viewModel = employees[indexPath.row]
//        cell.employeeViewModel = viewModel
//        // 1st case 28
//        // 2nd case 25
//        // 3rd case 20
//        return cell
//    }


}

// M - V - C
// M - V - VM

