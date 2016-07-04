//
//  ViewController.swift
//  My Algebra App
//
//  Created by Hana on 11/21/15.
//  Copyright © 2015 Hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MyAlgebraApp: UILabel!
    
    @IBOutlet weak var MathProblem: UILabel!
    
    @IBOutlet weak var NumberCorrect: UILabel!
    
    @IBOutlet weak var CorrectIncorrect: UILabel!
    
    @IBOutlet weak var Answer0: UIButton!
    @IBOutlet weak var Answer1: UIButton!
    
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    
    
    var firstNumber : Int = 0
    var unknown : Int = 0
    var answer : Int = 0
    
    var correctButton : Int = 0
    
    var incorrectAnswer1 : Int = 0
    var incorrectAnswer2 : Int = 0
    var incorrectAnswer3 : Int = 0
    
    var totalCorrect : Int = 0
    var CorrectOrIncorrect : String = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Answer0Action(sender: UIButton) {
    }
    
    @IBAction func Answer1Action(sender: UIButton) {
    }
    
    @IBAction func Answer2Action(sender: UIButton) {
    }
    
   
    @IBAction func Answer3Action(sender: UIButton) {
    }
    
    func printQuestion(){
        MathProblem.text = "\(firstNumber)x Y = \(answer)"
    }
    
    
    func randomizeNumbers(){
        firstNumber = Int(arc4random_uniform(10))
        unknown = Int(arc4random_uniform(10))
        answer = firstNumber * unknown
        
        correctButton = Int(arc4random_uniform(4))
        
        incorrectAnswer1 = Int(arc4random_uniform(4))
        incorrectAnswer2 = Int(arc4random_uniform(4))
        incorrectAnswer3 = Int(arc4random_uniform(4))
        
    }

}

