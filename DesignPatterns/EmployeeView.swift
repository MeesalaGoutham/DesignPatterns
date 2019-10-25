//
//  EmployeeView.swift
//  DesignPatterns
//
//  Created by Goutham Nani on 10/19/19.
//  Copyright © 2019 Goutham Nani. All rights reserved.
//

//MVC
//import UIKit
//
//// View
//class EmployeeView: UITableViewCell {
//
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var ageLabel: UILabel!
//    @IBOutlet weak var designationLabel: UILabel!
//
//    var employeeModel: EmployeeModel! {
//        didSet {
//            nameLabel.text = employeeModel.name
//            ageLabel.text = "\(employeeModel.age)"
//           // designationLabel.text = employeeModel.age > 28 ? "Senior Developer" : "Junior Developer"
//        }
//    }
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//}



//MVVM
import UIKit

// View
class EmployeeView: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    
    var employeeViewModel: EmployeeViewModel! {
        didSet {
            nameLabel.text = employeeViewModel.nameText
            ageLabel.text = employeeViewModel.ageText
            designationLabel.text = employeeViewModel.designationText
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

// MVVM
// View -> ViewModel <- Model

// 
