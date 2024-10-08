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
	
	@IBOutlet weak var questionLabel: UILabel!
	
	@IBOutlet weak var rangeSlider: UISlider!
	@IBOutlet weak var rangeLabelOne: UILabel!
	@IBOutlet weak var rangeLabelTwo: UILabel!
	
	@IBOutlet weak var singleButtonOne: UIButton!
	@IBOutlet weak var singleButtonTwo: UIButton!
	@IBOutlet weak var singleButtonThree: UIButton!
	@IBOutlet weak var singleButtonFour: UIButton!
	
	@IBOutlet weak var multipleLabelOne: UILabel!
	@IBOutlet weak var multipleLabelTwo: UILabel!
	@IBOutlet weak var multipleLabelThree: UILabel!
	@IBOutlet weak var multipleLabelFour: UILabel!
	@IBOutlet weak var multipleSwitchOne: UISwitch!
	@IBOutlet weak var multipleSwitchTwo: UISwitch!
	@IBOutlet weak var multipleSwitchThree: UISwitch!
	@IBOutlet weak var multipleSwitchFour: UISwitch!
	
	@IBOutlet weak var questionProgressView: UIProgressView!
	
	
	var questionIndex: Int = 0
	var answersChosen: [Answer] = []
	
	func nextQuestion() {
		questionIndex += 1
		
		if questionIndex < questions.count {
			updateUI()
		} else {
			performSegue(withIdentifier: "Results", sender: nil)
		}
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		updateUI()
    }
	
	func updateUI() {
		rangeAnswerStackView.isHidden = true
		singleAnswerStackView.isHidden = true
		multipleAnswerStackView.isHidden = true
		
		let currentQuestion = questions[questionIndex]
		let currentAnswers = currentQuestion.answer
		let totalProgress = Float(questionIndex + 1) / Float(questions.count)
		
		navigationItem.title = "Question #\(questionIndex + 1)"
		questionLabel.text = currentQuestion.text
		questionProgressView.setProgress(totalProgress, animated: true)
		
		switch currentQuestion.type {
			case .ranged:
				updateRangedStack(using: currentAnswers)
			case .multiple:
				updateMultipleStack(using: currentAnswers)
			case .single:
				updateSingleStack(using: currentAnswers)
		}
	}
	
	func updateSingleStack(using answers: [Answer]) {
		singleAnswerStackView.isHidden = false
		singleButtonOne.setTitle(answers[0].text, for: .normal)
		singleButtonTwo.setTitle(answers[1].text, for: .normal)
		singleButtonThree.setTitle(answers[2].text, for: .normal)
		singleButtonFour.setTitle(answers[3].text, for: .normal)
	}
	
	func updateMultipleStack(using answers: [Answer]) {
		multipleAnswerStackView.isHidden = false
		
		multipleSwitchOne.isOn = false
		multipleSwitchTwo.isOn = false
		multipleSwitchThree.isOn = false
		multipleSwitchFour.isOn = false
		
		multipleLabelOne.text = answers[0].text
		multipleLabelTwo.text = answers[1].text
		multipleLabelThree.text = answers[2].text
		multipleLabelFour.text = answers[3].text
	}
	
	@IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
		return ResultsViewController(coder: coder, responses: answersChosen)
	}
	
	func updateRangedStack(using answers: [Answer]) {
		rangeAnswerStackView.isHidden = false
		
		rangeSlider.setValue(0.5, animated: false)
		
		rangeLabelOne.text = answers[0].text
		rangeLabelTwo.text = answers[3].text
	}
    
	@IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
		let currentAnswers = questions[questionIndex].answer
		
		switch sender {
		case singleButtonOne:
			print("Button One")
			answersChosen.append(currentAnswers[0])
		case singleButtonTwo:
			print("Button Two")
			answersChosen.append(currentAnswers[1])
		case singleButtonThree:
			print("Button Three")
			answersChosen.append(currentAnswers[2])
		case singleButtonFour:
			print("Button Four")
			answersChosen.append(currentAnswers[3])
		default:
			break
		}
		
		nextQuestion()
	}
	
	@IBAction func multipleAnswerButtonPressed(_ sender: UIButton) {
		let currentAnswers = questions[questionIndex].answer
		
		if multipleSwitchOne.isOn {
			answersChosen.append(currentAnswers[0])
		}
		if multipleSwitchTwo.isOn {
			answersChosen.append(currentAnswers[1])
		}
		if multipleSwitchThree.isOn {
			answersChosen.append(currentAnswers[2])
		}
		if multipleSwitchFour.isOn {
			answersChosen.append(currentAnswers[3])
		}
		
		nextQuestion()
	}
	
	@IBAction func rangeAnswerButtonPressed(_ sender: UIButton) {
		let currentAnswers = questions[questionIndex].answer
		let index = Int(round(rangeSlider.value * Float(currentAnswers.count - 1)))
		
		answersChosen.append(currentAnswers[index])
		
		nextQuestion()
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
