//
//  ViewController.swift
//  15_04_24_BackwardDataPassingDemo
//
//  Created by Vishal Jagtap on 29/04/24.
//

import UIKit

class ViewController: UIViewController, BackDataPassing{ //4.
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rollNumberLabel: UILabel!
    private let resuseIdentifierForSecondViewController = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnNextClick(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: resuseIdentifierForSecondViewController) as! SecondViewController
        secondViewController.delegate1 = self       //6. delegate property to be assigned to self i.e.current view controller instance
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    //5
    func passStudentData(student: Student) {
        self.nameLabel.text = student.name
        self.rollNumberLabel.text = String(student.rollNumber)
    }
}
