//
//  HolidayVC.swift
//  TheHappyHoliday
//
//  Created by Chingiz Jumanov on 17/11/22.
//

import UIKit
import Lottie
import AVFoundation
class HolidayVC: UIViewController {
    
    
    @IBOutlet weak var mainView: LottieAnimationView!
    
    @IBOutlet weak var confettiView: LottieAnimationView!
    
    
    @IBOutlet weak var confettiTwoView: LottieAnimationView!
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLottie()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func confettiTapped(_ sender: UIButton) {
        confettiView.play()
        confettiTwoView.play()
        playSound()
    }
    
}

//MARK: - Settings Lottie
extension HolidayVC {
    func setLottie() {
        mainView.contentMode = .scaleAspectFit
        mainView.loopMode = .loop
        mainView.animationSpeed = 1
        mainView.play()
        confettiView.contentMode = .scaleAspectFit
        confettiView.loopMode = .playOnce
        confettiView.animationSpeed = 1
        confettiTwoView.contentMode = .scaleAspectFit
        confettiTwoView.loopMode = .playOnce
        confettiTwoView.animationSpeed = 1
    }
}

//MARK: - Settings Sound
extension HolidayVC {
    func playSound() {
        guard let path = Bundle.main.path(forResource: "fireworks", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

