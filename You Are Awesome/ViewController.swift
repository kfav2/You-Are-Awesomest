//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Korlin Favara on 12/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["Y","Yo","You","You A","You Ar", "You Are","You Are C","You Are Co","You Are Coo","You Are Cool"]
        
        messageLabel.text = messages[imageNumber]
  
        let imageName = "image\(imageNumber)"
        imageView.image =  UIImage(named: imageName)
        
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
        
        
        //
        //        let awesomeMessage = "You Are Awesome!"
        //        let awesomerMessage = "You Are Awesome-r"
        //        let awesomestMessage = "You Are The Awesomest"
        //
        //        if messageLabel.text == awesomeMessage{
        //            messageLabel.text = awesomerMessage
        //            imageView.image =  UIImage(named: "image1")
        //
        //        } else if messageLabel.text == awesomerMessage{ messageLabel.text = awesomestMessage
        //            imageView.image =  UIImage(named: "image0")
        //
        //        } else{ messageLabel.text = awesomeMessage
        //            imageView.image =  UIImage(named: "image2")
        //
        //        }
    }
}

