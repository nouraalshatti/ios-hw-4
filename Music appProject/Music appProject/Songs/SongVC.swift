//
//  SongVC.swift
//  Music appProject
//
//  Created by Noura on 10/11/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit
import AVFoundation


class SongVC: UIViewController {
   
    
    
    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    
    var songPlayer: AVAudioPlayer?
    
    var song: Song!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureView()
        configureSong()
    }
    
    func configureView()  {
        songImageView.image = UIImage(named: song.image)
        songNameLabel.text = song.name
        //        artistNameLabel.text = song.artist
        
    }
    
    func configureSong()  {
        let path = Bundle.main.path(forResource: song.songName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            songPlayer = try AVAudioPlayer(contentsOf: url)
        
        } catch {
            // couldn't load file :(
        }
    }
    
    var played: Bool = false
    @IBAction func play(_ sender: UIButton){
        if played {
            songPlayer?.pause()
           
            sender.setImage(UIImage(systemName: "play.circle.fill"), for: .normal)
        }
        else{
            songPlayer!.play()
              sender.setImage(UIImage(systemName: "pause.circle.fill"), for: .normal)
        }
        played.toggle()
    }
    @IBAction func forward(){
        print("next")
        songPlayer?.currentTime += 10
    }
    @IBAction func back(){
        print ("back")
        songPlayer?.currentTime -= 10
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
