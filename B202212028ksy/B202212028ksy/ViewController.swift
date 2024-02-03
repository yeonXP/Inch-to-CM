import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtcm: UITextField!
    @IBOutlet weak var lblResult: UILabel!
//    @IBAction func scIC(_ sender: UISegmentedControl) {
//        if sender.selectedSegmentIndex == 0 {
//
//        } else {
//
//        }
    @IBAction func calcInch(_ sender: UIButton) {
        if let inputValue = Double(txtcm.text ?? "0") {
            // Inch to cm conversion
            let result = inputValue * 2.54
            lblResult.text = String(format: "%.2f cm", result)
        } else {
            lblResult.text = "Invalid input"
        }
    }

    @IBAction func btnUp(_ sender: UIButton) {
        incrementValue()
    }

    @IBAction func btnDown(_ sender: UIButton) {
        decrementValue()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Function to increment the value in the text field
    func incrementValue() {
        if let currentValue = Double(txtcm.text ?? "0") {
            let newValue = currentValue + 1
            txtcm.text = String(format: "%.2f", newValue)
            calcInch(UIButton()) // Call calcInch to update the result label
        }
    }

    // Function to decrement the value in the text field
    func decrementValue() {
        if let currentValue = Double(txtcm.text ?? "0") {
            let newValue = max(0, currentValue - 1)
            txtcm.text = String(format: "%.2f", newValue)
            calcInch(UIButton()) // Call calcInch to update the result label
        }
    }
}
