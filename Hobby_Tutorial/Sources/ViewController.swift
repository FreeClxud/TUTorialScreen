
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!

    var currentImageIndex = 0
    let images = ["hobby1", "hobby2", "hobby3"]
    let descriptions = ["This is hobby image 1", "This is hobby image 2", "This is hobby image 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateContent()
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        currentImageIndex = (currentImageIndex + 1) % images.count
        updateContent()
    }

    func updateContent() {
        imageView.image = UIImage(named: images[currentImageIndex])
        descriptionLabel.text = descriptions[currentImageIndex]
    }
}
