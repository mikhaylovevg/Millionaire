//
//  GamePlayView.swift
//  Millionaire
//
//  Created by Павел Грицков on 08.02.23.
//

import UIKit

class GamePlayView: UIView {
    
    let spacingMain: CGFloat = 16
    let offSet: CGFloat = 16
    let spacingBetweenAnswerButton: CGFloat = 20
    
    private let stackViewMain = UIStackView()
    private let stackViewTop = UIStackView()
    
    let backButton = UIButton()
    let questionNumber = UILabel()
    let shoeTableQuestionsButton = UIButton()
    
    let timerLabel = UILabel()
    
    let questionLabel = UILabel()
    
    private let stackViewContainerAnswers = UIStackView()
    
    var answerButtons: [UIButton] = []
    
    private let stackViewBottom = UIStackView()
    
    let clueFiftyFiftyButton = UIButton()
    let clueCallFriendButton = UIButton()
    let clueHelpAudienceButton = UIButton()
    
    /// принимает массив ответов и устанавливает на кнопку
    func configureButton(with answers: [String]) {
        answers.enumerated().forEach { index, answer in
            answerButtons[index].setTitle(answer, for: .normal)
        }
    }
    
    init() {
        super.init(frame: .zero)
        
      setupView()
        
    }
    
    private func setupView() {
        // view setting
        self.backgroundColor = .systemBlue
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupStackViewMain()
        setupStackViewTop()
        
        // answer button setup
        setupAnswerButtons()
        setupStackViewContainerAnswers()
        
        setConstraints()
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackViewMain.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            stackViewMain.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: offSet),
            stackViewMain.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -offSet),
            stackViewMain.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            
        ])
    }
    
    private func setupStackViewTop() {
        stackViewTop.axis = .horizontal
        stackViewTop.distribution = .fillProportionally
        
        stackViewMain.addArrangedSubview(stackViewTop)
    }
    
    private func setupStackViewContainerAnswers() {
        stackViewContainerAnswers.axis = .vertical
        stackViewContainerAnswers.spacing = spacingBetweenAnswerButton
        stackViewContainerAnswers.distribution = .fillEqually
        
        stackViewMain.addArrangedSubview(stackViewContainerAnswers)
    }
    
    private func setupAnswerButtons() {
        let number = [1,2,3,4]
        number.forEach {
            let button = getButton($0)
            stackViewContainerAnswers.addArrangedSubview(button)
            
            NSLayoutConstraint.activate([
                button.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    }
    
    private func getButton(_ index: Int) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle( "Answer \(index)", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }
    
    private func setupStackViewMain() {
        stackViewMain.axis = .vertical
        stackViewMain.spacing = spacingMain
        stackViewMain.distribution = .fillProportionally
        stackViewMain.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(stackViewMain)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
