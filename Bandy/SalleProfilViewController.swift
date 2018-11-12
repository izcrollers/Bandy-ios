//
//  SalleProfilViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 18-03-02.
//  Copyright © 2018 Bandy. All rights reserved.
//

import UIKit

class SalleProfilViewController: UIViewController {

    @IBOutlet weak var litteBio: UILabel!
    @IBOutlet weak var ViewEvent: UIView!
    @IBOutlet weak var ViewDesc: UIView!
    
    @IBAction func buttonDesc(_ descButton: UIButton) {
        ViewDesc.isHidden = false
        ViewEvent.isHidden = true
    }
    
    @IBAction func buttonEvent(_ eventButton: UIButton) {
        ViewEvent.isHidden = false
        ViewDesc.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        litteBio.layer.borderWidth = 1.0
        litteBio.layer.borderColor = UIColor.black.cgColor
        litteBio.clipsToBounds = true
        litteBio.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     This value is either passed by `MealTableViewController` in `prepare(for:sender:)`
     or constructed as part of adding a new meal.
     */
    
    /*    override func viewDidLoad() {
     super.viewDidLoad()
     
     // Handle the text field’s user input through delegate callbacks.
     nameTextField.delegate = self
     
     if let meal = meal {
     navigationItem.title = meal.name
     BandName.text = meal.name
     ProfilImage.image = meal.photo
     ratingControl.rating = meal.rating
     }
     
     updateSaveButtonState()
     }
     
     //MARK: UITextFieldDelegate
     
     func textFieldDidBeginEditing(_ textField: UITextField) {
     // Disable the Save button while editing.
     saveButton.isEnabled = false
     }
     
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     // Hide the keyboard.
     textField.resignFirstResponder()
     return true
     }
     
     func textFieldDidEndEditing(_ textField: UITextField) {
     updateSaveButtonState()
     navigationItem.title = textField.text
     }
     
     //MARK: UIImagePickerControllerDelegate
     func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
     // Dismiss the picker if the user canceled.
     dismiss(animated: true, completion: nil)
     }
     
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
     
     // The info dictionary may contain multiple representations of the image. You want to use the original.
     guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
     fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
     }
     
     // Set photoImageView to display the selected image.
     photoImageView.image = selectedImage
     
     // Dismiss the picker.
     dismiss(animated: true, completion: nil)
     }
     
     //MARK: Navigation
     
     @IBAction func cancel(_ sender: UIBarButtonItem) {
     // Depending on style of presentation (modal or push presentation), this view controller needs to be dismissed in two different ways.
     let isPresentingInAddMealMode = presentingViewController is UINavigationController
     
     if isPresentingInAddMealMode {
     dismiss(animated: true, completion: nil)
     }
     else if let owningNavigationController = navigationController{
     owningNavigationController.popViewController(animated: true)
     }
     else {
     fatalError("The MealViewController is not inside a navigation controller.")
     }
     }
     
     // This method lets you configure a view controller before it's presented.
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     super.prepare(for: segue, sender: sender)
     
     // Configure the destination view controller only when the save button is pressed.
     guard let button = sender as? UIBarButtonItem, button === saveButton else {
     os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
     return
     }
     
     let name = nameTextField.text ?? ""
     let photo = photoImageView.image
     let rating = ratingControl.rating
     
     // Set the meal to be passed to MealTableViewController after the unwind segue.
     meal = Meal(name: name, photo: photo, rating: rating)
     }
     
     //MARK: Actions
     @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
     
     // Hide the keyboard.
     nameTextField.resignFirstResponder()
     
     // UIImagePickerController is a view controller that lets a user pick media from their photo library.
     let imagePickerController = UIImagePickerController()
     
     // Only allow photos to be picked, not taken.
     imagePickerController.sourceType = .photoLibrary
     
     // Make sure ViewController is notified when the user picks an image.
     imagePickerController.delegate = self
     present(imagePickerController, animated: true, completion: nil)
     }
     
     //MARK: Private Methods
     
     private func updateSaveButtonState() {
     // Disable the Save button if the text field is empty.
     let text = nameTextField.text ?? ""
     saveButton.isEnabled = !text.isEmpty
     }
     */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
