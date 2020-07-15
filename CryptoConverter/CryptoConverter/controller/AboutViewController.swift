

import UIKit
import SafariServices

class AboutViewController: UIViewController {

    var resume = "https://drive.google.com/file/d/1QHF5N-eA98ttqYtr86RYsdupB0jNnGvC/view?usp=sharing"
    @IBAction func MyResume(_ sender: Any) {
        if let url = URL(string: resume) {
                   let svc = SFSafariViewController(url: url)
                   present(svc, animated: true, completion: nil)
               }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
