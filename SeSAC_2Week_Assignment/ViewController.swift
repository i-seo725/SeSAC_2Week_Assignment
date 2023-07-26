//
//  ViewController.swift
//  SeSAC_2Week_Assignment
//
//  Created by 이은서 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var emotionButtons: [UIButton]!
    @IBOutlet var tabBar: UITabBarItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        designTitleLabel()
        designButtons()
        
        if first != 0 { clickedCount[0] = first }
        if second != 0 { clickedCount[1] = second }
        if third != 0 { clickedCount[2] = third }
        if fourth != 0 { clickedCount[3] = fourth }
        if fifth != 0 { clickedCount[4] = fifth }
        print(clickedCount)
        
    }
    
    let first = UserDefaults.standard.integer(forKey: "happyCount")
    let second = UserDefaults.standard.integer(forKey: "goodCount")
    let third = UserDefaults.standard.integer(forKey: "sosoCount")
    let fourth = UserDefaults.standard.integer(forKey: "badCount")
    let fifth = UserDefaults.standard.integer(forKey: "sadCount")
    
    let countKey = ["happyCount", "goodCount", "sosoCount", "badCount", "sadCount"]
    func designTitleLabel() {
        titleLabel.textAlignment = .center
        titleLabel.text = "OH MY MOOD"
    }
    func designButtons() {
        let buttonTitle = ["emoji1", "emoji2", "emoji3", "emoji4", "emoji5"]
        let buttonColor = [UIColor.systemPink, UIColor.systemOrange, UIColor.systemYellow, UIColor.systemGreen, UIColor.systemBlue]
        for i in emotionButtons {
            i.setImage(UIImage(named: buttonTitle[i.tag]), for: .normal)
            i.backgroundColor = buttonColor[i.tag]
            i.tintColor = .white
            i.setTitle("", for: .normal)
        }
    }
    
    var clickedCount = [0, 0, 0, 0, 0]
    
    //    let emotionButtons = Emotion.allCases
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        guard let button = Emotion(rawValue: sender.tag) else {
            print("오류 발생")
            return
        }
        switch button {
        case .happy:
            clickedCount[0] += 1
            print("완전 행복해 버튼을 \(clickedCount[Emotion.happy.rawValue])회 클릭했습니다.")
            UserDefaults.standard.set(clickedCount[Emotion.happy.rawValue], forKey: "happyCount")
        case Emotion.good:
            clickedCount[1] += 1
            print("좋아 버튼을 \(clickedCount[Emotion.good.rawValue])회 클릭했습니다.")
            UserDefaults.standard.set(clickedCount[Emotion.good.rawValue], forKey: "goodCount")
        case .soso:
            clickedCount[2] += 1
            print("그냥저냥 버튼을 \(clickedCount[Emotion.soso.rawValue])회 클릭했습니다.")
            UserDefaults.standard.set(clickedCount[Emotion.soso.rawValue], forKey: "sosoCount")
        case .bad:
            clickedCount[3] += 1
            print("속상해 버튼을 \(clickedCount[Emotion.bad.rawValue])회 클릭했습니다.")
            UserDefaults.standard.set(clickedCount[Emotion.bad.rawValue], forKey: "badCount")
        case .sad:
            clickedCount[4] += 1
            print("슬퍼 버튼을 \(clickedCount[Emotion.sad.rawValue])회 클릭했습니다.")
            UserDefaults.standard.set(clickedCount[Emotion.sad.rawValue], forKey: "sadCount")
        }
        print(clickedCount)
        print(first, second, third, fourth, fifth)
    }
    
    
}


