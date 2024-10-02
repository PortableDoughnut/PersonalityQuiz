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

        // Do any additional setup after loading the view.
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
