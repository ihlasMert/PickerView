//
//  ViewController.swift
//  picker
//
//  Created by ihlas on 28.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageTxt: UITextField!
    let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDatePicker()
    }
    func createDatePicker(){
        
        ageTxt.textAlignment = .center
        //toolBar
        let toolbar = UIToolbar ()
        toolbar.sizeToFit()
        //barButton
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        
        //assign toolbar
        ageTxt.inputAccessoryView = toolbar
        //assign date picker to the text field
        ageTxt.inputView = datePicker
        //date picker more
        datePicker.datePickerMode = .date
    }
    @objc func donePressed(){
        
        //formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        ageTxt.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
        
    }
}

