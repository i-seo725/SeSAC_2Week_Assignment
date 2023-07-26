//
//  StatViewController.swift
//  SeSAC_2Week_Assignment
//
//  Created by 이은서 on 2023/07/26.
//

import UIKit

class StatViewController: UIViewController {

    @IBOutlet var viewCollection: [UIView]!
    @IBOutlet var emotionTitles: [UILabel]!
    @IBOutlet var countLabels: [UILabel]!
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designViews()
        designTitles()
        designCountLabel()
        titleLabel.text = "OH MY MOOD"
        emotionCount()
    }
    
    func designViews() {
        let color = [UIColor.systemPink, UIColor.systemOrange, UIColor.systemYellow, UIColor.systemGreen, UIColor.systemBlue]
        for i in viewCollection {
            i.layer.cornerRadius = 15
            i.backgroundColor = color[i.tag]
        }
    }
    let labelColors = [UIColor.white, UIColor.black, UIColor.black, UIColor.black, UIColor.white]
    let countKey = ["happyCount", "goodCount", "sosoCount", "badCount", "sadCount"]
    func designTitles() {
        let titles = ["완전행복지수", "적당미소지수", "그냥저냥지수", "좀속상한지수", "많이슬픈지수"]
        for i in emotionTitles {
            i.text = titles[i.tag]
            i.textColor = labelColors[i.tag]
            i.font = UIFont.systemFont(ofSize: 15)
        }
    }
    func designCountLabel() {
        for i in countLabels {
            i.textColor = labelColors[i.tag]
            i.font = UIFont.systemFont(ofSize: 30)
            emotionCount()
        }
    }
    func emotionCount() {
        for i in countLabels {
            let count = UserDefaults.standard.integer(forKey: countKey[i.tag])
            i.text = String(count)
            print(count)
        }
    }
    
    
}
