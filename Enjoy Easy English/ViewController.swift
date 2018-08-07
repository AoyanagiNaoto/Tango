import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
        let dictionary: [String: String] = [
            "apple": "りんご",
            "banana": "ばなな",
            "grape": "ぶどう",
            "peach": "もも",
            "pear": "なし"
        ]
        
        
        let inputText: String = textField.text!
        
        
        if let word = dictionary[inputText]{
            label.text = word
        }else{
            label.text = "登録されていません"
        }
        
    }
}
