//
//  enum.swift
//  SeSAC_2Week_Assignment
//
//  Created by 이은서 on 2023/07/25.
//

import UIKit

enum Emotion: Int, CaseIterable {
    case happy, good, soso, bad, sad
}

enum EmotionCount: String {
    case happy = "happyCount"
    case good = "goodCount"
    case soso = "sosoCount"
    case bad = "badCount"
    case sad = "sadCount"
}

extension UIViewController {
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .destructive)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
