//
//  ViewController.swift
//  PicRotata
//
//  Created by Lin Thit Khant on 12/1/22.
//

import UIKit


class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let pickerView = UIImagePickerController()
    
    @IBOutlet weak var picView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.sourceType = .camera
        
    }
    
    @IBAction func cameraButtonPressed(_ sender: UIBarButtonItem) {
        present(pickerView, animated: true)
    }
    
    @IBAction func rotateLeftButtonPressed(_ sender: UIButton) {
        picView.transform = picView.transform.rotated(by: -CGFloat(Double.pi / 2))
    }
    
    @IBAction func rotateRightButtonPressed(_ sender: UIButton) {
        picView.transform = picView.transform.rotated(by: CGFloat(Double.pi / 2))
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            picView.image = userPickedImage
        }
        pickerView.dismiss(animated: true)
    }
}

