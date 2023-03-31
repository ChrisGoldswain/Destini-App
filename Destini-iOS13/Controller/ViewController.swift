//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction private func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    private func updateUI(){
        storyLabel.text = storyBrain.getStoryText()
        let storyChoice1 = storyBrain.getChoice1()
        let storyChoice2 = storyBrain.getChoice2()
        choice1Button.setTitle(storyChoice1, for: .normal)
        choice2Button.setTitle(storyChoice2, for: .normal)
    }
    
}

