//
//  ZiangQiu3.swift
//  computerSciencePresentation_ZiangQiu
//
//  Created by Qiu Ziang on 2018/5/13.
//  Copyright © 2018年 Period Three. All rights reserved.
//

import UIKit
import AVKit
class ZiangQiu3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        background.image = #imageLiteral(resourceName: "paying-with-cash")
        videoButton.isUserInteractionEnabled = false
        videoButton.alpha = 0
        // Do any additional setup after loading the view.
    }
    var flag = 0
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var introText: UILabel!
    @IBAction func videoPlay(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "applePay", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer,animated: true,completion:{
                video.play()
            })
        }
        
    }
    
    @IBAction func changePicture(_ sender: Any) {
        if flag == 0 {
            introText.text = "10 Years Ago"
            background.image = #imageLiteral(resourceName: "credit-card-processing-pos")
            flag += 1
        } else if flag == 1 {
            introText.text = "Nowadays"
            background.image = #imageLiteral(resourceName: "og_image")
            videoButton.isUserInteractionEnabled = true
            videoButton.alpha = 1
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
