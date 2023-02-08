//
//  GamePlayView.swift
//  Millionaire
//
//  Created by Павел Грицков on 08.02.23.
//

import UIKit

class GamePlayView: UIView {
    
    private let stackViewMain = UIStackView()
    private let stackViewTop = UIStackView()
    
    let backButton = UIButton()
    let questionNumber = UILabel()
    let shoeTableQuestionsButton = UIButton()
    
    let timerLabel = UILabel()
    
    let questionLabel = UILabel()
    
    private let stackViewContainerAnswers = UIStackView()
    
    let answerOneButton = UIButton()
    let answerTwoButton = UIButton()
    let answerThreeButton = UIButton()
    let answerFourButton = UIButton()
    
    private let stackViewBottom = UIStackView()
    
    let clueFiftyFiftyButton = UIButton()
    let clueCallFriendButton = UIButton()
    let clueHelpAudienceButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        
      setupView()
        
    }
    
    private func setupView() {
        // view setting
        backgroundColor = .systemBlue
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
