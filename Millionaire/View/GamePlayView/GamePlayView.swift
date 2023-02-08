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
    let spacingBetweenAnswerButton: CGFloat = 14
    
    private let stackViewMain = UIStackView()
    private let stackViewTop = UIStackView()
    
    let backButton = UIButton()
    let questionNumberLabel = UILabel()
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
        setupBackButton()
        setupQuestionNumberLabel()
        setupShoeTableQuestionsButton()
        
        setupQuestionLabel()
        
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

    private func setupBackButton() {
        var imageConfig: UIImage.Configuration
        imageConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .regular, scale: .large)
        let image = UIImage(systemName: "arrow.left", withConfiguration: imageConfig)
        backButton.setImage(image, for: .normal)
        backButton.tintColor = .white
        
        stackViewTop.addArrangedSubview(backButton)
        
        NSLayoutConstraint.activate([
            backButton.heightAnchor.constraint(equalToConstant: 50),
            backButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupQuestionNumberLabel() {
        questionNumberLabel.text = "QUESTION - 1"
        questionNumberLabel.textColor = .white
        questionNumberLabel.font = UIFont.boldSystemFont(ofSize: 18)
        questionNumberLabel.textAlignment = .center
        
        stackViewTop.addArrangedSubview(questionNumberLabel)
        
        // TODO: подумать как сделать лайбл с разным по стилю текстом
    }
    
    private func setupShoeTableQuestionsButton() {
        var imageConfig: UIImage.Configuration
        imageConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .regular, scale: .large)
        let image = UIImage(systemName: "list.bullet.clipboard", withConfiguration: imageConfig)
        shoeTableQuestionsButton.setImage(image, for: .normal)
        shoeTableQuestionsButton.tintColor = .white
        
        stackViewTop.addArrangedSubview(shoeTableQuestionsButton)
        
        NSLayoutConstraint.activate([
            shoeTableQuestionsButton.heightAnchor.constraint(equalToConstant: 50),
            shoeTableQuestionsButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupQuestionLabel() {
        questionLabel.text = "Some test text! Bla, Bla, Bla"
        questionLabel.font = UIFont.boldSystemFont(ofSize: 24)
        questionLabel.numberOfLines = 0
        questionLabel.textColor = .white
        questionLabel.textAlignment = .center
        
        stackViewMain.addArrangedSubview(questionLabel)
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
