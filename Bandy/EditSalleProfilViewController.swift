//
//  EditSalleProfilViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 18-03-02.
//  Copyright © 2018 Bandy. All rights reserved.
//

import UIKit

class EditSalleProfilViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var LittleBioTextField: UITextField!
    @IBOutlet weak var BioTextField: UITextField!
    @IBOutlet weak var EventTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    @IBAction func Save(_ sender: Any) {
        //let myVC = storyboard?.instantiateViewController(withIdentifier: "Salle Profil")
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
