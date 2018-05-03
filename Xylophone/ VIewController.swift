//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController{
    
    
    let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let tag = (sender.tag - 1)
        
       // print(sounds[tag])
        
        let url = Bundle.main.url(forResource: sounds[tag], withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            guard let player = player else {return}
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
  

}

