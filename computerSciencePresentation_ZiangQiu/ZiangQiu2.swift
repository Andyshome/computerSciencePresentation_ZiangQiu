//
//  ZiangQiu2.swift
//  computerSciencePresentation_ZiangQiu
//
//  Created by Qiu Ziang on 2018/5/13.
//  Copyright © 2018年 Period Three. All rights reserved.
//

import UIKit
import AVKit
class ZiangQiu2: UIViewController {

    
    @IBOutlet weak var picture1: UIImageView!
    @IBOutlet weak var picture2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picture1.alpha = 0
        picture2.alpha = 0

        // Do any additional setup after loading the view.
    }

    @IBAction func videoPlay(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "Google", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer,animated: true,completion:{
                video.play()
            })
        }
    }
    
    @IBAction func showPicture(_ sender: Any) {
         UIView.animate(withDuration: 1.0) {
       
            self.picture1.alpha = 1
            self.picture2.alpha = 1
        
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
