//
//  ViewController.swift
//  LabEx2
//
//  Created by Breno Lopes Mafra on 2026-01-20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func onClick(_ sender: UIButton) {
        guard let expression = inputText.text, !expression.isEmpty else {
            output.text = "Result: invalid or empty expression."
            return
        }
        output.text = "Result: \(evaluateExpression(input: expression))"
    }
    
    func forceFloat(_ input: String) -> String {
        let pattern = #"(?<![\d.])\d+(?!\.)"#
        let regex = try! NSRegularExpression(pattern: pattern)
        
        let range = NSRange(input.startIndex..., in: input)
        return regex.stringByReplacingMatches(
            in: input,
            range: range,
            withTemplate: "$0.0"
        )
    }
    
    func evaluateExpression(input: String) -> String {
        let exp = NSExpression(format: forceFloat(input))
        if let val = exp.expressionValue(with: nil, context: nil) as? NSNumber {
            return String(format: "%.2f", val.doubleValue)
        }
        return "Invalid Expression"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
