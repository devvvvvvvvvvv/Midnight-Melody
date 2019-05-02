//
//  OceanViewController.swift
//  Midnight Melody
//
//  Created by Devon Dodgson on 4/29/19.
//  Copyright © 2019 Devon Dodgson. All rights reserved.
//

import UIKit
import AVFoundation

class OceanViewController : UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["ocean1", "ocean2", "ocean3", "ocean4", "ocean5"]
    
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
