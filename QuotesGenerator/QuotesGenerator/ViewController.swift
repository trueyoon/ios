//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 한지윤 on 2022/10/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "quote1", name: "name1"),
        Quote(contents: "quote2", name: "name2"),
        Quote(contents: "quote3", name: "name3"),
        Quote(contents: "quote4", name: "name4"),
        Quote(contents: "quote5", name: "name5")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGenerator(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5)) // 0~4 난수
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

