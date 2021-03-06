//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var player : AVAudioPlayer!
var soundArray = ["note1","note2","note3","note4","note5","note6","note7",]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(file: soundArray[sender.tag - 1])
    }
    
    func playSound(file : String){
        if let soundURL = Bundle.main.url(forResource: file, withExtension: "wav") {
            
            do {
            player = try AVAudioPlayer(contentsOf : soundURL)
            } catch {
                print(error)
            }
            
            player.play()
            
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            // Play
//            AudioServicesPlaySystemSound(mySound);
        }
    }
    

}

