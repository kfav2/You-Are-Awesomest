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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
      
        let awesomeMessage = "You Are Awesome!"
        let awesomerMessage = "You Are Awesome-r"
        let awesomestMessage = "You Are The Awesomest"
        
        if messageLabel.text == awesomeMessage{
            messageLabel.text = awesomerMessage
            imageView.image =  UIImage(named: "image1")
            
        } else if messageLabel.text == awesomerMessage{ messageLabel.text = awesomestMessage
            imageView.image =  UIImage(named: "image0")
            
        } else{ messageLabel.text = awesomeMessage
            imageView.image =  UIImage(named: "image2")
            
        }
    }
}

