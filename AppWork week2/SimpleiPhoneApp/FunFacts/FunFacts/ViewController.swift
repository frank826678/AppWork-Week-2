//
//  ViewController.swift
//  FunFacts
//
//  Created by Screencast on 11/1/16.
//  Copyright © 2016 Treehouse Island. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactLabel2: UILabel!
    
    let factProvider = FactProvider()
    let factProvider2 = FactProvider2()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
        funFactLabel2.text = factProvider2.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        funFactLabel2.text = factProvider2.randomFact()

        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}


























