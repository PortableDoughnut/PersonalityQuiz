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
	case yellow = "🟨"
	case blue = "🟦"
	case purple = "🟪"
	case brown = "🟫"
	case pink = "🩷"
	
	var string: String {
		switch self {
			case .red: return "Red"
			case .green: return "Green"
			case .yellow: return "Yellow"
			case .blue: return "Blue"
			case .purple: return "Purple"
			case .brown: return "Brown"
			case .pink: return "Pink"
		}
	}
	
	var definition: String {
		switch self {
			//TODO
			case .red: return "Red"
			case .green: return "Green"
			case .yellow: return "Yellow"
			case .blue: return "Blue"
			case .purple: return "Purple"
			case .brown: return "Brown"
			case .pink: return "Pink"
		}
	}
}

var questions: [Question] = [
	Question(text: "How long do you like to spend on the train?", type: .ranged, answer: [Answer(text: "I don't ride the train", type: .yellow), Answer(text: "I like to spend a little but of time on the train", type: .pink), Answer(text: "I like to spend a moderate amount of time on the train", type: .brown), Answer(text: "I spend a lot of time on the train and it's great", type: .blue)]),
	Question(text: "Single choice TODO", type: .single, answer: [Answer(text: "TODO", type: .red), Answer(text: "TODO", type: .green), Answer(text: "TODO", type: .yellow), Answer(text: "TODO", type: .blue)]),
	Question(text: "Multiple choice TODO", type: .multiple, answer: [Answer(text: "TODO", type: .red), Answer(text: "TODO", type: .green), Answer(text: "TODO", type: .yellow), Answer(text: "TODO", type: .blue)])
]
