//
//  GamePlayController.swift
//  Millionaire
//
//  Created by Павел Грицков on 08.02.23.
//

import UIKit

class GamePlayController: UIViewController {
    
    let gamePlayView = GamePlayView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = gamePlayView
    }
}
