//
//  GameOverViewController.swift
//  Millionaire
//
//  Created by Иван Осипов on 09.02.2023.
//

import UIKit

class GameOverViewController: UIViewController {
    
    let gameOverView = GameOverView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = gameOverView
        newGameButtonTarget()
        mainScreenButtonTarget()
    }
    
    private func newGameButtonTarget() {
        gameOverView.newGameButton.addTarget(self, action: #selector(newGameButtonTapped), for: .touchUpInside)
    }
    
    private func mainScreenButtonTarget() {
        gameOverView.mainScreenButton.addTarget(self, action: #selector(mainScreenButtonTapped), for: .touchUpInside)
    }
    
    @objc private func newGameButtonTapped() {
        print("newGameButtonAction")
    }
    
    @objc private func mainScreenButtonTapped() {
        print("mainScreenButtonAction")
    }

    
}
