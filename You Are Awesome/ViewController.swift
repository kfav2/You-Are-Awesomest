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
    @IBOutlet weak var soundToggle: UISwitch!
    
    let imageCount = 9
    let soundCount = 6
    var messageNumber = -1
    var imageNumber = -1
    var audioPlayer: AVAudioPlayer!
    var soundNumber = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
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
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int{
        var newNumber: Int
        repeat {
            newNumber = .random(in: 0...upperBounds)
        } while newNumber == originalNumber
        return newNumber
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
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: imageCount-1)
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: soundCount-1)
        
        messageLabel.text = messages[messageNumber]
        imageView.image = UIImage(named: "image\(imageNumber)")
        if soundToggle.isOn { //if soundToggle is on
            playSound(name: "sound\(soundNumber)") //play the sounds
        }
    }
    
    @IBAction func playSoundSwitch(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil { //if inOn is not true audioPlay is not nil
            audioPlayer.stop() //Stop playing
        }
    }
}
