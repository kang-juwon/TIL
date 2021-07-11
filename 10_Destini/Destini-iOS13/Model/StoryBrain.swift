//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You see a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var storyNumber = 0
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getStoryChoice(buttonNumber : Int) -> String {
        if buttonNumber == 0 {
            return stories[storyNumber].choice1
        } else {
            return stories[storyNumber].choice2
        }
    }
    
    mutating func nextStory(usersChoice userchoice: String) {
        if userchoice == stories[storyNumber].choice1 {
            storyNumber += 1
        } else if userchoice == stories[storyNumber].choice2 {
            storyNumber += 2
        }
    }
}
