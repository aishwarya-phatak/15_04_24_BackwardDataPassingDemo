//
//  SecondViewController.swift
//  15_04_24_BackwardDataPassingDemo
//
//  Created by Vishal Jagtap on 29/04/24.
//

import UIKit

class SecondViewController: UIViewController {
        
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    
    var delegate1 : BackDataPassing?        //property of BackDataPassing Protocol -- which is called as delegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        guard let delegateNew = delegate1 else{
            return
        }
        
        let extractedName = self.nameTextField.text
        let extractedRollNumber = Int(self.rollNumberTextField.text!)
        
        let student1 = Student(name: extractedName!,
                               rollNumber: extractedRollNumber!)
        delegateNew.passStudentData(student: student1)
        self.navigationController?.popViewController(animated: true)
    }
}
