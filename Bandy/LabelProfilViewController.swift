//
//  LabelProfilViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 18-04-24.
//  Copyright © 2018 Bandy. All rights reserved.
//

import Foundation
import UIKit

class LabelProfilViewController: UIViewController {
 
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var profiImage: UIImageView!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var twitterLink: UIImageView!
    @IBOutlet weak var facebookLink: UIImageView!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()
//        apollo.fetch(query: <#T##GraphQLQuery#>)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
