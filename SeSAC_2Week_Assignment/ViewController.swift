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
    }
    func designTitleLabel() {
        titleLabel.textAlignment = .center
        titleLabel.text = "OH MY MOOD"
    }
    func designButtons() {
        let buttonTitle = ["완전 행복해", "좋아", "그냥저냥", "속상해", "슬퍼"]
        let buttonColor = [UIColor.systemPink, UIColor.systemOrange, UIColor.systemYellow, UIColor.systemGreen, UIColor.systemBlue]
        for i in emotionButtons {
            i.setTitle(buttonTitle[i.tag], for: .normal)
            i.backgroundColor = buttonColor[i.tag]
            i.tintColor = .white
        }
    }
    
    var clickedCount = [0, 0, 0, 0, 0]
//    let emotionButtons = Emotion.allCases
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        switch sender.tag {
        case Emotion.happy.rawValue:
            clickedCount[0] += 1
            print("완전 행복해 버튼을 \(clickedCount[Emotion.happy.rawValue])회 클릭했습니다.")
        case Emotion.good.rawValue:
            clickedCount[1] += 1
            print("좋아 버튼을 \(clickedCount[Emotion.good.rawValue])회 클릭했습니다.")
        case Emotion.soso.rawValue:
            clickedCount[2] += 1
            print("그냥저냥 버튼을 \(clickedCount[Emotion.soso.rawValue])회 클릭했습니다.")
        case Emotion.bad.rawValue:
            clickedCount[3] += 1
            print("속상해 버튼을 \(clickedCount[Emotion.bad.rawValue])회 클릭했습니다.")
        case Emotion.sad.rawValue:
            clickedCount[4] += 1
            print("슬퍼 버튼을 \(clickedCount[Emotion.sad.rawValue])회 클릭했습니다.")
        default:
            print("오류 발생")
        }
    }
    
    
    
}

