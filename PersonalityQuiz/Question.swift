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
	Question(text: "After the party, what would you do to get some more time with someone cool?", type: .single, answer: [Answer(text: "Ask if they would like to go to a coffee shop?", type: .blue), Answer(text: "Ask if they would like to go for shots?", type: .green), Answer(text: "Ask if they would like to come to your place and play games?", type: .red), Answer(text: "Ask people if they would like a ride home", type: .purple)]),
	Question(text: "What sitcoms do you watch?", type: .multiple, answer: [Answer(text: "Fresh Prince of Bel-Air", type: .purple), Answer(text: "Full House", type: .brown), Answer(text: "The Office", type: .blue), Answer(text: "Community", type: .red)]),
	Question(text: "Where do you spend more of your time?", type: .ranged, answer: [Answer(text: "Cities", type: .red), Answer(text: "Some cities", type: .green), Answer(text: "Some Subrubs", type: .brown), Answer(text: "Suburbs", type: .purple)]),
	Question(text: "What type of art would you rather go see?", type: .single, answer: [Answer(text: "Murals", type: .green), Answer(text: "Renaissance", type: .pink), Answer(text: "Modern", type: .red), Answer(text: "Street", type: .orange)]),
	Question(text: "Which of these foods would you consider a favorite?", type: .multiple, answer: [Answer(text: "Deep Dish Pizza", type: .red), Answer(text: "Tacos", type: .green), Answer(text: "Beef Bulgogi", type: .brown), Answer(text: "Pierogies", type: .blue)]),
	Question(text: "Do you enjoy the journey?  Or want to get where you going quickly?", type: .ranged, answer: [Answer(text: "Journey", type: .blue), Answer(text: "Journey side", type: .purple), Answer(text: "Quick side", type: .orange), Answer(text: "Quick", type: .pink)]),
	Question(text: "Which of these foods would you go out of your way to eat?", type: .multiple, answer: [Answer(text: "Hot Dogs", type: .purple), Answer(text: "BBQ ribs", type: .orange), Answer(text: "Jibarito sandwich", type: .blue), Answer(text: "Italian Beef", type: .green)]),
	Question(text: "What type of music would you rather listen to?", type: .single, answer: [Answer(text: "Jazz", type: .red), Answer(text: "Rock", type: .blue), Answer(text: "Blues", type: .brown), Answer(text: "Classical", type: .purple)]),
	Question(text: "What type of environment do you enjoy more?", type: .ranged, answer: [Answer(text: "Posh", type: .purple), Answer(text: "Posh side", type: .brown), Answer(text: "Humble Side", type: .pink), Answer(text: "Humble", type: .orange)]),
	Question(text: "What type of activity would you rather do?", type: .single, answer: [Answer(text: "Convention with lots of people like you", type: .green), Answer(text: "Street fairs", type: .pink), Answer(text: "Learn from an expert", type: .purple), Answer(text: "Hang out with friends", type: .orange)])
]

