import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
        
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
        
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
}

