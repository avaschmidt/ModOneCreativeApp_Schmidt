
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayOutlet: UILabel!
    @IBOutlet weak var headingOutlet: UILabel!
    @IBOutlet weak var withdrawOutlet: UITextField!
    @IBOutlet weak var depositOutlet: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var deposit = 0.0
    var withdraw = 0.0
    var money = 0.0
    var d = 0.0
    var w = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    
    


    @IBAction func withdrawAction(_ sender: UIButton) {
        
      var withdraw = withdrawOutlet.text!
        if let w = Double(withdraw){
            if w>money{
                headingOutlet.text = "You Don't Have The Cash!"
                displayOutlet.text = "Please Enter Valid Amount"
            }
            else{
                money = money - w
                headingOutlet.text = "Your Balance Is:"
                displayOutlet.text = "$\(money)"
            }
        }
        else{
            print("Error")
            displayOutlet.text = "Error: Invalid Entry"
        }
        withdrawOutlet.resignFirstResponder()
        
       
        imageView.image = UIImage(named: "money")
    }
    @IBAction func depositAction(_ sender: UIButton) {
        
        var deposit = depositOutlet.text!
        if let d = Double(deposit){
            money = d + money
            headingOutlet.text = "Your Balance Is:"
            displayOutlet.text = "$\(money)"
        }
        else{
            print("Error")
            displayOutlet.text = "Error: Invalid Entry"
        }
        depositOutlet.resignFirstResponder()
        
        
        
        imageView.image = UIImage(named: "money")
    }
    
}

