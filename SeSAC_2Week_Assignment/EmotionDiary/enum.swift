//
//  enum.swift
//  SeSAC_2Week_Assignment
//
//  Created by 이은서 on 2023/07/25.
//

import Foundation

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
