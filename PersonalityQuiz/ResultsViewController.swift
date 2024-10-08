//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Gwen Thelin on 10/1/24.
//

import UIKit

class ResultsViewController: UIViewController {
	@IBOutlet weak var resultAnswerLabel: UILabel!
	@IBOutlet weak var resultDefinitionLabel: UILabel!
	
	var responses: [Answer]

	init?(coder: NSCoder, responses: [Answer]) {
		self.responses = responses
		super.init(coder: coder)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		calculatePersonalityResult()
		
		navigationItem.hidesBackButton = true
    }
	
	@IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
		
	}
    
	func calculatePersonalityResult() {
		let frequencyOfAnswers = responses.reduce(into: [:]) {
			(counts, answer) in
			counts[answer.type, default: 0] += 1
		}
		
		let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
			(pair1, pair2) in
			return pair1.value > pair2.value
		})
		
		let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
		
		resultAnswerLabel.text = "You are the \(mostCommonAnswer.string) line!"
		resultDefinitionLabel.text = mostCommonAnswer.definition
		
		switch mostCommonAnswer {
		case .red:
			resultAnswerLabel.textColor = .red
			resultDefinitionLabel.textColor = .red
		case .green:
			resultAnswerLabel.textColor = .green
			resultDefinitionLabel.textColor = .green
		case .blue:
			resultAnswerLabel.textColor = .blue
			resultDefinitionLabel.textColor = .blue
		case .pink:
			resultAnswerLabel.textColor = .systemPink
			resultDefinitionLabel.textColor = .systemPink
		case .purple:
			resultDefinitionLabel.textColor = .purple
			resultAnswerLabel.textColor = .purple
		case .brown:
			resultAnswerLabel.textColor = .brown
			resultDefinitionLabel.textColor = .brown
		case .orange:
			resultAnswerLabel.textColor = .orange
			resultDefinitionLabel.textColor = .orange
		}
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
