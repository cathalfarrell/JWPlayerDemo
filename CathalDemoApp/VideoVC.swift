//
//  VideoVC.swift
//  CathalDemoApp
//
//  Created by Cathal Farrell on 17/02/2019.
//  Copyright © 2019 Cathal Farrell. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    fileprivate var player: JWPlayerController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let config = JWConfig()
        config.sources = [JWSource (file: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", label: "Big Buck Bunny", isDefault: true)
        ]

        config.image = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg"
        config.title = "Cathal's JWPlayer Demo"
        config.controls = true  //default
        config.`repeat` = false   //default
        config.autostart = true

        if let player = JWPlayerController(config: config) {
            player.view.frame = view.frame
            self.player = player
        }

        view = self.player.view
    }

}
