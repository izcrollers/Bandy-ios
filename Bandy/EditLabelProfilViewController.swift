//
//  EditLabelProfilViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 18-04-24.
//  Copyright © 2018 Bandy. All rights reserved.
//

import Foundation
import UIKit

class EditLabelProfilViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var genrePicker: UIPickerView!
    
    var genrePickerData: [String] = [String]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.hideKeyboardWhenTappedAround()
        // Connect data:
        genrePicker.delegate = self
        genrePicker.dataSource = self
        
        genrePickerData = ["Alternative", "Blues", "Classical", "Country", "Dance", "Easy Listening", "Electronic", "Folk", "Jazz", "Latin", "Opera", "Pop", "Soul", "Reggae", "Rock"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
}
