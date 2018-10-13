//
//  ViewController.swift
//  Photos
//
//  Created by Matthew McCarthy on 10/9/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func cameraButton(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
   
    }
    
       
    @IBAction func takePic(_ sender: Any) {
    
    
    let image = UIImagePickerController()
    image.delegate = self
    image.sourceType = UIImagePickerControllerSourceType.camera
    image.allowsEditing = false
    self.present(image, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]){
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            imageView.image = image
        }
        else{
            print("Error")
        }
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

