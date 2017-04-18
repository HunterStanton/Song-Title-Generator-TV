//
//  ViewController.swift
//  Song Title Generator TV
//
//  Created by Hunter Stanton on 2/4/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // The label that will show the adjective
    @IBOutlet weak var AdjectiveLabel: UILabel!
    
    // The adjective that will show the noun
    @IBOutlet weak var NounLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GenerateButtonPressed(_ sender: Any) {
        // Bit long winded, but works
        AdjectiveLabel.text = TitleDictionary.adjectives[Int(arc4random_uniform(UInt32(TitleDictionary.adjectives.count)))]
        NounLabel.text = TitleDictionary.nouns[Int(arc4random_uniform(UInt32(TitleDictionary.nouns.count)))]
    }

}

