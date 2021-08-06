//
//  CameraViewController.swift
//  TestApp2
//
//  Created by human2020 on 2021/08/02.
//  Copyright © 2021 human2020. All rights reserved.
//

import UIKit

class CameraViewController:UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        //picker.sourceType = .savedPhotosAlbum
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
        }
    }
    
    @IBAction func didTappedButton(_ sender: Any) {
       // showActionsheet()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
    }
    
   // func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    //    picker.dismiss(animated: true, completion: nil)
    //}
    
    
    
    
   /* func showActionsheet(){
        let actionsheet = UIAlertController(title: "", message: "Image type", preferredStyle: .actionSheet)
        
        actionsheet.addAction(UIAlertAction(title: "Shirt1", style: .default, handler: {action in print("tapped Dimiss")}))
        
        actionsheet.addAction(UIAlertAction(title: "Shirt2", style: .destructive, handler: {action in print("tapped Dimiss")}))
        
        actionsheet.addAction(UIAlertAction(title: "Shirt3", style: .default, handler: {action in print("tapped Dimiss")}))
        
        actionsheet.addAction(UIAlertAction(title: "Shirt4", style: .default, handler: {action in print("tapped Dimiss")}))
        
        present(actionsheet, animated: true)
    }*/
    
}
