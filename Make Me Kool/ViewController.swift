//
//  ViewController.swift
//  Make Me Kool
//
//  Created by Tanveer Bashir on 3/7/16.
//  Copyright © 2016 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var animatedImageView: UIImageView!
    var images = [UIImage]()
    @IBOutlet weak var coolBtn: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var notSoCoolBtn: UIButton!
    @IBOutlet weak var uncoolLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        for image in 1...30 {
            images.append(UIImage(named: "\(image).jpg")!)
        }
        animatedImageView.hidden =  true
        logo.hidden = true
        notSoCoolBtn.hidden = true
    }

    //make it not cool
    @IBAction func notSoCool(sender: UIButton) {
        animatedImageView.hidden = true
        logo.hidden = true
        notSoCoolBtn.hidden = true
        coolBtn.hidden = false
        uncoolLabel.hidden = false
    }

    // make it cool
    @IBAction func makeMeCool(sender: UIButton) {
        animatedImageView.animationImages = images
        animatedImageView.startAnimating()
        animatedImageView.hidden = false
        logo.hidden = false
        notSoCoolBtn.hidden = false
        coolBtn.hidden = true
        uncoolLabel.hidden = true
    }
}

