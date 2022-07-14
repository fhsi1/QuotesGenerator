//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by Yujean Cho on 2022/03/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteView: UIView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "나 자신에 대한 자신감을 잃으면\n 온 세상이 나의 적이 된다.", name: "랄프 왈도 에머슨"),
        Quote(contents: "항상 맑으면 사막이 된다.\n 비가 내리고 바람이 불어야만\n 비옥한 땅이 된다.", name: "스페인 속담"),
        Quote(contents: "인생에서 가장 슬픈 세 가지.\n 할 수 있었는데,\n 해야 했는데,\n 해야만 했는데.", name: "루이스 E. 분"),
        Quote(contents: "같은 실수를 두려워하되\n 새로운 실수를 두려워하지 마라.\n 실수는 곧 경험이다.", name: "도서 ‘어떤 하루’ 中"),
        Quote(contents: "오늘은 당신의 남은 인생 중,\n 첫 번째 날이다.", name: "영화 ‘아메리칸 뷰티’ 中"),
        Quote(contents: "인생은 곱셈이다.\n 어떤 기회가 와도\n 내가 제로면\n 아무런 의미가 없다.", name: "나카무라 미츠루"),
        Quote(contents: "별은 바라보는 자에게 빛을 준다.", name: "도서 ‘드래곤 라자’ 中"),
        Quote(contents: "생명이 있는 한 희망이 있다.\n 실망을 친구로 삼을 것인가,\n 희망을 친구로 삼을 것인가.", name: "J.위트"),
        Quote(contents: "실패란 넘어지는 것이 아니라,\n 넘어진 자리에 머무는 것이다.", name: "도서 ‘프린세스, 라 브라바!’ 中"),
        Quote(contents: "슬픔이 그대의 삶으로 밀려와 마음을 흔들고\n 소중한 것을 쓸어가 버릴 때면\n 그대 가슴에 대고 말하라.\n '이것 또한 지나가리라'", name: "랜터 윌슨 스미스"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteView.layer.cornerRadius = 30
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(10)) // generate 0 ~ 9 random number
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

