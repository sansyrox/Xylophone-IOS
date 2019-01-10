//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    // Using tags as id in HTML to differentiate evervy button having a same IBAction

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(tag : sender.tag)
        
    }
    
    func playSound(tag : Int) -> Void {
        let soundURL = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        // to manually override the do catch statements , use try! audioplayer = AVAudioPlayer(contentsOf: soundURL!)
        
        audioPlayer.play()
    }
    
  

}

