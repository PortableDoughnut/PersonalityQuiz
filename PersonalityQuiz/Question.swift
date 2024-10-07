//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Gwen Thelin on 10/1/24.
//

import Foundation

struct Question {
	var text: String
	var type: ResponceType
	var answer: [Answer]
}

enum ResponceType {
	case single, multiple, ranged
}

struct Answer {
	var text: String
	var type: Line
}

enum Line: Character {
	case red = "🟥"
	case green = "🟩"
	case blue = "🟦"
	case purple = "🟪"
	case brown = "🟫"
	case pink = "🩷"
	case orange = "🟧"
	
	var string: String {
		switch self {
			case .red: return "Red"
			case .green: return "Green"
			case .blue: return "Blue"
			case .purple: return "Purple"
			case .brown: return "Brown"
			case .pink: return "Pink"
			case .orange: return "Orange"
		}
	}
}

var questions: [Question] = [
	Question(text: "How long do you like to spend on the train?", type: .ranged, answer: [Answer(text: "Never", type: .orange), Answer(text: "I like to spend a little but of time on the train", type: .pink), Answer(text: "I like to spend a moderate amount of time on the train", type: .brown), Answer(text: "Always", type: .blue)]),
	Question(text: "What would you do at a party to get to known someone?", type: .single, answer: [Answer(text: "Ask people if you know them and gather intel", type: .orange), Answer(text: "Ask about their family", type: .brown), Answer(text: "Ask about people’s interests", type: .pink), Answer(text: "Yell across the room that you think their outfit is cool", type: .red)]),
	Question(text: "After the party, what would you do to get some more time with someone cool?", type: .single, answer: [Answer(text: "Ask if they would like to go to a coffee shop?", type: .blue), Answer(text: "Ask if they would like to go for shots?", type: .green), Answer(text: "Ask if they would like to come to your place and play games?", type: .red)]),
	Question(text: "What sitcoms do you watch?", type: .multiple, answer: [Answer(text: "Fresh Prince of Bel-Air", type: .purple), Answer(text: "Full House", type: .brown), Answer(text: "The Office", type: .blue), Answer(text: "Community", type: .red)])
]

