//
//  ViewController.swift
//  FunFacts
//
//  Created by tefnick on 7/7/16.
//  Copyright © 2016 Tefnick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = colorWheel.randomColor()
        
       view.backgroundColor = randomColor  //creates a random color from the colorArray everytime the button is pressed
       funFactButton.tintColor = randomColor
       funFactLabel.text = factBook.randomFact() // pulls a random fact from the facts array
    }

}

