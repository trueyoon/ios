//
//  ViewController.swift
//  QutoesGenerator
//
//  Created by 한지윤 on 2022/03/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "명언1", name: "이름1"),
        Quote(contents: "명언2", name: "이름2"),
        Quote(contents: "명언3", name: "이름3"),
        Quote(contents: "명언4", name: "이름4"),
        Quote(contents: "명언5", name: "이름5"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

