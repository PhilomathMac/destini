//
//  ViewController.swift
//  Destini
//
//  Created by McKenzie Macdonald on 7/28/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!
    
    var storyController = StoryController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func choiceButtonClicked(_ sender: UIButton) {
        guard let choice = sender.currentTitle else {return}
        storyController.getNextStory(afterChoice: choice)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyController.currentStory.title
        choice1Button.setTitle(storyController.currentStory.choice1, for: .normal)
        choice2Button.setTitle(storyController.currentStory.choice2, for: .normal)
    }
    
}

