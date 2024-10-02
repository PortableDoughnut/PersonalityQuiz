//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Gwen Thelin on 10/1/24.
//

import UIKit

class QuestionViewController: UIViewController {
	@IBOutlet weak var rangeAnswerStackView: UIStackView!
	@IBOutlet weak var singleAnswerStackView: UIStackView!
	@IBOutlet weak var multipleAnswerStackView: UIStackView!
	
	var questionIndex: Int = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()

		updateUI()
    }
	
	func updateUI() {
		rangeAnswerStackView.isHidden = true
		singleAnswerStackView.isHidden = true
		multipleAnswerStackView.isHidden = true
		
		navigationItem.title = "Question #\(questionIndex + 1)"
		
		let currentQuestion = questions[questionIndex]
		
		switch currentQuestion.type {
			case .ranged:
				rangeAnswerStackView.isHidden = false
			case .multiple:
				multipleAnswerStackView.isHidden = false
			case .single:
				singleAnswerStackView.isHidden = false
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
