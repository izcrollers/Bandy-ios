//
//  LoginViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 17-11-27.
//  Copyright © 2017 Bandy. All rights reserved.
//

import Alamofire
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    
    var TypeUser = ""
    let userType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonLogin(_ loginButton: UIButton) {

        if (TypeUser == "musician") {
            self.performSegue(withIdentifier: "Musicien tab Bar Controller", sender: self)
        }
        else if (TypeUser == "label") {
            self.performSegue(withIdentifier: "Label Tab Bar Controller", sender: self)
        }
    }
    //Button action
    @IBAction func buttonRegister(_ sender: UIButton) {
        
        //creating parameters for the post request
        let parameters: Parameters=[
            "login":textFieldLogin.text!,
            "password":textFieldPassword.text!,
        ]
        
        //Sending http post request
        Alamofire.request("https://emdel.fr/graphql/login", method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    
                    //converting it as NSDictionary
                    let jsonData = result as! NSDictionary
                    
                    //displaying the message in label
                    self.labelMessage.text = jsonData.value(forKey: "message") as! String?
                }
        }
    }
}

