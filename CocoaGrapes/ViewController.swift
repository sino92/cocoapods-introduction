//
//  ViewController.swift
//  CocoaGrapes
//
//  Created by Eric Peterson on 5/27/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit
import SwiftGifOrigin
import MarqueeLabel

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var marqueeLabel: MarqueeLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let dankImage = UIImage.gif(name: "dankgrapes")
        imageView.image = dankImage
        marqueeLabel.text = "According to all known laws of aviation, there is no way a bee should be able to fly. Its wings are too small to get its fat little body off the ground. The bee, of course, flies anyway because bees don't care what humans think is impossible."
        marqueeLabel.animationCurve = UIViewAnimationCurve.easeInOut
        marqueeLabel.trailingBuffer = 10
        marqueeLabel.type = MarqueeLabel.MarqueeType.continuous
        marqueeLabel.speed = MarqueeLabel.SpeedLimit.duration(30)
        marqueeLabel.tapToScroll = true
        marqueeLabel.leadingBuffer = 10

        // test commit
    }
}

