//
//  SpaceViewController.swift
//  Midnight Melody
//
//  Created by Devon Dodgson on 4/29/19.
//  Copyright © 2019 Devon Dodgson. All rights reserved.
//

import UIKit
import AVFoundation

class SpaceViewController : UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["space1", "space2", "space3", "space4", "space5"]
    
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
