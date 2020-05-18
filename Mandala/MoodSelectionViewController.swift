//
//  ViewController.swift
//  Mandala
//
//  Created by partha on 5/17/20.
//  Copyright © 2020 partha. All rights reserved.
//

import UIKit

class MoodSelectionViewController: UIViewController {

    @IBOutlet var stackView: UIStackView!
    @IBOutlet var addMoodButton: UIButton!

    var moods: [Mood] = [] {
        didSet {
            moodButtons = moods.map { mood in
                let moodButton = UIButton()
                moodButton.setImage(mood.image, for: .normal)
                moodButton.imageView?.contentMode = .scaleAspectFit
                moodButton.adjustsImageWhenHighlighted = false
                return moodButton
            }
        }
    }
    var moodButtons: [UIButton] = [] {
        didSet {
            oldValue.forEach { $0.removeFromSuperview() }
            moodButtons.forEach { stackView.addArrangedSubview($0) }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        moods = [.happy, .sad, .angry, .goofy, .crying, .confused, .sleepy, .meh]
        addMoodButton.layer.cornerRadius = addMoodButton.bounds.height / 2 
    }


}

