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
    
    var happy = 0
    var good = 0
    var soso = 0
    var bad = 0
    var sad = 0
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        switch sender.currentTitle {
        case "완전 행복해":
            happy += 1
            print("완전 행복해 버튼을 \(happy)회 클릭했습니다.")
        case "좋아":
            good += 1
            print("좋아 버튼을 \(good)회 클릭했습니다.")
        case "그냥저냥":
            soso += 1
            print("그냥저냥 버튼을 \(soso)회 클릭했습니다.")
        case "속상해":
            bad += 1
            print("속상해 버튼을 \(bad)회 클릭했습니다.")
        case "슬퍼":
            sad += 1
            print("슬퍼 버튼을 \(sad)회 클릭했습니다.")
        default:
            print("오류 발생")
        }
    }
    
    
    
}

