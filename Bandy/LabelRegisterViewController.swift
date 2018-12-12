//
//  LabelRegisterViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 09/12/2018.
//  Copyright © 2018 Bandy. All rights reserved.
//

import UIKit

class LabelRegisterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var labelNameTextField: UITextField!
    @IBOutlet weak var genrePicker: UIPickerView!
    
    var genrePickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
        // Connect data:
        genrePicker.delegate = self
        genrePicker.dataSource = self
        
        genrePickerData = ["Alternative", "Blues", "Classical", "Country", "Dance", "Easy Listening", "Electronic", "Folk", "Jazz", "Latin", "Opera", "Pop", "Soul", "Reggae", "Rock"]

    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genrePickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genrePickerData[row]
    }
    
//    @IBAction func registerButton(_ sender: UIButton) {
//        apollo.perform(mutation: NewLabel(email: emailTextField, password: passwordTextField, name: labelNameTextField, subscribing_type: "classique", favorite_genre: genrePicker, contactable: 0)) { (result, error) in
//            print(result?.data?.newMucisian?)
//            show(LoginViewController, sender: UIButton)
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
