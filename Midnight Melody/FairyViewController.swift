//
//  FairyViewController.swift
//  Midnight Melody
//
//  Created by Devon Dodgson on 4/25/19.
//  Copyright © 2019 Devon Dodgson. All rights reserved.
//

import UIKit
import AVFoundation

class FairyViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["fairy1", "fairy2", "fairy3", "fairy4", "fairy5"]
    
    var selectedSoundFileName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
    
        
        playSound()
        
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "caf")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
            audioPlayer.play()
        }
        catch {
            print(error)
            
        }
        
    }


}

