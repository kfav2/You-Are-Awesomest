//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Korlin Favara on 12/24/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let imageCount = 9
    var messageNumber = -1
    var imageNumber = -1
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["Y",
                        "Yo",
                        "You",
                        "You A",
                        "You Ar",
                        "You Are",
                        "You Are C",
                        "You Are Co",
                        "You Are Coo",
                        "You Are Cool"]
        
//        How I did it
//        var newMessage: String
//        repeat {
//            let messageNumber = Int.random(in: 0...messages.count-1)
//            newMessage = messages[messageNumber]
//        } while newMessage == messageLabel.text
//        messageLabel.text = newMessage
//
//        var newImage: UIImage
//
//        repeat {
//            let imageNumber = Int.random(in: 0...imageCount-1)
//            newImage = UIImage(named: "image\(imageNumber)")!
//        } while newImage == imageView.image
//        imageView.image = newImage
//    }
//        His way
        var newMessageNumber: Int
        repeat {
        newMessageNumber = .random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
        newImageNumber = .random(in: 0...imageCount-1)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0") {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("ERROR: \(error.localizedDescription) Did not initialize AV Player")
            }
        } else{
            print("ERROR: Did not read sound")
        }
}
}
