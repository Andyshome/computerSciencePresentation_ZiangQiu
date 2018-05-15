
import UIKit

class ViewControllerPiotr: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBOutlet weak var backgroundImageOutlet: UIImageView!
    @IBOutlet weak var secondImageOutlet: UIImageView!
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var pointOne: UILabel!
    @IBOutlet weak var pointTwo: UILabel!
    @IBOutlet weak var pointThree: UILabel!
    
    
    @IBAction func actionOne(_ sender: Any) {
        backgroundImageOutlet.image = #imageLiteral(resourceName: "shutterstock410039920")
        secondImageOutlet.image = #imageLiteral(resourceName: "Gates-Bill-0022-On-Paper")
        titleOutlet.text = "Reduction of paper usage"
        titleOutlet.textColor = UIColor.green
        pointOne.text = "-Kindles and computers replace the need of paper books"
        pointTwo.text = "-Reduction in deforestation due to lower demand for paper"
        pointThree.text = "-Computers, CDs, DVDs, etc can store more data than paper"
    }
    
    
    @IBAction func actionTwo(_ sender: Any) {
        backgroundImageOutlet.image = #imageLiteral(resourceName: "BSSP-Ewaste-5")
        secondImageOutlet.image = #imageLiteral(resourceName: "ewaste")
        titleOutlet.text = "Increase in electronic waste"
        titleOutlet.textColor = UIColor.red
        pointOne.text = "-Computers and other devices are sent to eletronic drump sites (e waste) when thrown away"
        pointTwo.text = "-E waste sites for our electronics leak harmful chemicals into the enviroment such as lead which can taint the water"
        pointThree.text = "-E waste creates a harmful enviroment for which we live in"
    }
    
    @IBAction func actionThree(_ sender: Any) {
        backgroundImageOutlet.image = #imageLiteral(resourceName: "images22")
        secondImageOutlet.image = #imageLiteral(resourceName: "download22")
        titleOutlet.text = "Electric vechicles"
        titleOutlet.textColor = UIColor.green
        pointOne.text = "-Eletronic cars replace the need for regular gas guzzling cars"
        pointTwo.text = "-Electric cars produce no CO2 emmisions unlike gas cars which pollute the air and create fog"
        pointThree.text = "-These cars are generally safer for the enviroment"
    }
    
    
    @IBAction func actionFour(_ sender: Any) {
        backgroundImageOutlet.image = #imageLiteral(resourceName: "nuclearwaste")
        secondImageOutlet.image = #imageLiteral(resourceName: "pollution22")
        titleOutlet.text = "Pollution from energy generation"
        titleOutlet.textColor = UIColor.red
        pointOne.text = "-Most of our current methods of producing electrcity are harmful to us"
        pointTwo.text = "-Coal plants produce high amount of CO2 emisions from production of energy"
        pointThree.text = "-Nuclear plants produce radioactive waste that can not be safely stored long term"
    }
    
    

 

}
