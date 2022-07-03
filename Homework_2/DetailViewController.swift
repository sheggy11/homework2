//
//  DetailViewController.swift
//  Homework_2
//
//  Created by Асгат Шагиахметов on 03.07.2022.
//

import UIKit

class DetailViewController: UIViewController {



    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var jobTextField: UITextField!
    @IBOutlet weak var commentTextField: UITextField!
    
    var contact: ContactsCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = contact?.image
        nameTextField.text = contact?.name
        surNameTextField.text = contact?.surName
        numberTextField.text = contact?.phoneNumber
        commentTextField.text = contact?.comment
        
    }
    

    @IBAction func saveButton(_ sender: Any) {
    }

}
