//
//  ViewController.swift
//  TestApp2
//
//  Created by human2020 on 2021/08/02.
//  Copyright © 2021 human2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

  
    @IBOutlet weak var gallaryTab: UITabBarItem!
    @IBOutlet weak var cameraTab: UITabBarItem!
    @IBOutlet weak var imageTabBar: UITabBar!
    @IBOutlet weak var barCodeImage: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welcomeLabel.text = "Welcom to SCAI's \n Cloth gallery app"
        imageTabBar.delegate = self
        
    }
        
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if tabBar.selectedItem == cameraTab{
            welcomeLabel.text = "Camera"
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CameraVCID") as! CameraViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated:true, completion:nil)
            
        }else if tabBar.selectedItem == gallaryTab{
            welcomeLabel.text = "Gallary"
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailVCID") as! DetailViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated:true, completion:nil)
        }
        
    }
    
   /* func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        cameraTab.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
        
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            let alertController = UIAlertController(title: nil, message: "Device has no camera.", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "Alright", style: .default, handler: { (alert: UIAlertAction!) in
            })

            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            // Other action
        }
    }*/
    
}



   

