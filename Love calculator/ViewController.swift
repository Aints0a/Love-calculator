//
//  ViewController.swift
//  Love calculator
//
//  Created by Jean Yves Kaliva on 2/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name1TextField: UITextField!
    
    @IBOutlet weak var name2TextField: UITextField!
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    var randNum = 0
    let hisname = "Rabe"
    let herName = "Rasoa"
    let fightingCoupleImage = UIImage(named: "fightingCouple")
    let loveCouplesImage = UIImage(named: "loveCouplesImage")
    let notBadCoupleImage = UIImage(named: "notBadCouple")

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textView.backgroundColor = .clear
        textView.text = "Fill the names then click the button to see your compatibility. Good luck!"
        // Do any additional setup after loading the view.
       
//        resultTextView.text = "Fill the name and click the button to check your compatibility."
        
    }
    
    

    @IBAction func resultButton(_ sender: UIButton) {
        
    
        let hisName = name1TextField.text!
        let herName = name2TextField.text!
        
        
        randNum = Int.random(in: 1...10)
        print (randNum)


        if (randNum < 4){
            print ("You don't belong together!")
            textView.text = "You don't belong together. I'm sorry \(hisName) and \(herName)"
            resultImageView.image = fightingCoupleImage
            
                    } else if (randNum >= 4 && randNum <= 6){
                        print ("You are 50% compatible. Not badddd !!!")
                        textView.text = "You are 50% compatible. Not badddd \(hisName) and \(herName)!!!"
                        resultImageView.image = notBadCoupleImage
                        
                    } else {
                        print("You are made to be together. Congratulation\(hisName) and \(herName)")
                        textView.text = "You are made to be together. Congratulation  and !!"
                        resultImageView.image = loveCouplesImage

            
                    }
            
            
        }
    }
    



