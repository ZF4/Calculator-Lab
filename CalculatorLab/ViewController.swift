//
//  ViewController.swift
//  CalculatorLab
//
//  Created by Zachary Farmer on 6/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var workingsNumber: UILabel!
    @IBOutlet weak var displayNumber: UILabel!
    
    var workings: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        print("Hey we changed something.")
    }
    
    func clearAll() {
        
        workings = ""
        workingsNumber.text = ""
        displayNumber.text = ""
    }
    
    func addToWorkings(value: String) {
        workings = workings + value
        workingsNumber.text = workings
    }
    
    @IBAction func clearButton(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backButton(_ sender: Any) {
        if (!workings.isEmpty) {
            workings.removeLast()
            workingsNumber.text = workings
        }
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        addToWorkings(value: "÷")
    }
    
    @IBAction func percentageButton(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        addToWorkings(value: "x")
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        addToWorkings(value: "-")
    }
    
    @IBAction func additionButton(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func equalsButton(_ sender: Any) {
        
        if (validInput()) {
            let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            displayNumber.text = resultString
        } else {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Calculator unable to do the math based on the input",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func validInput() -> Bool {

        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in workings {
            
        }
        return true
    }
    
//    func specialCharacter(char: Character) -> Bool {
//
//    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        addToWorkings(value: ".")
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightButton(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    @IBAction func fourButton(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixButton(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func oneButton(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeButton(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    
    
    
}

