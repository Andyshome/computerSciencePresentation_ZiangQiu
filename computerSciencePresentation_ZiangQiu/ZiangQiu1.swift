//
//  ZiangQiu1.swift
//  computerSciencePresentation_ZiangQiu
//
//  Created by Qiu Ziang on 2018/5/13.
//  Copyright © 2018年 Period Three. All rights reserved.
//

import UIKit
import AVKit
class ZiangQiu1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func VideoPlay(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "robotic", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer,animated: true,completion:{
                video.play()
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
