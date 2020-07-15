
import UIKit

class ConvertController: UIViewController {
    
    var firstQuote: Result?
    var secondQuote: Result?
    var firstQuoteSelected = false
    var secondQuoteSelected = false
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var result: UILabel!
    
    required init?(coder: NSCoder) {
         super.init(coder: coder)
         NotificationCenter.default.addObserver(self, selector: #selector(getQuote), name:SELECTEDQUOTE , object: nil)
     }
    
     @objc func getQuote(notification: Notification){
         if let quote = notification.object as? Result{
             if firstQuoteSelected {
                 firstQuote = quote
                button1.setTitle(quote.symbol, for:.normal)
                 print(quote.symbol)
                
                 if secondQuote != nil {
                     showResult()
                 }
             } else if secondQuoteSelected {
                 secondQuote = quote
                 button2.setTitle(quote.symbol, for: .normal)
                 print(quote.symbol)
                 
                 if firstQuote != nil {
                     showResult()
                 }
              }
         }
     }
     
     func showResult() {
         
        let a = Double(firstQuote!.regularMarketPrice)
         let b = Double(secondQuote!.regularMarketPrice)
         let i = Double(number!.text!)
         
         if number.text == nil {
             result!.text = "ENTER NUMBER ABOVE"
         }
         else {
            result!.text = String(format: "%.2f", i! * a / b )
         }
     }

     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         view.endEditing(true)
         super.touchesBegan(touches, with: event)
     }
     
     override func viewDidLoad() {
         super.viewDidLoad()

     }
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if  let destination = segue.destination as? TableViewController {
            destination.isSelectQuoteMode = true
             if segue.identifier == "button1" {
               firstQuoteSelected = true
                 secondQuoteSelected = false
             } else {
               firstQuoteSelected = false
                 secondQuoteSelected = true
             }
         }
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
