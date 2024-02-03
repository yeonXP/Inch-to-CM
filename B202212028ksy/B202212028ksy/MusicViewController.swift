//
//  MusicViewController.swift
//  B202212028ksy
//
//  Created by comsoft on 2023/12/04.
//

import UIKit
import AVKit

class MusicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func PlayVideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource:"Music", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
    }
}
