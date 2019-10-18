import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private var betterLibraryButton: UIButton!

    @IBAction private func goButtonPressed(_ sender: Any) {

        self.processUserInput()
    }

    @IBAction private func betterLibraryButtonPressed(_ sender: Any) {

        self.naviagteToTheBestIsThirteenLibrary()
    }
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        self.processUserInput()
        return true
    }
}

private extension ViewController {

    func processUserInput() {

        if self.isTextFieldValueThirteen() {
            self.resultLabel.text = "😎"
            self.betterLibraryButton.isHidden = true
        }
        else {
            self.resultLabel.text = "😰 Maybe I don't use the right library"
            self.betterLibraryButton.isHidden = false
        }
        self.resultLabel.isHidden = false
    }

    private func isTextFieldValueThirteen() -> Bool {

        return Container.getThirteenValidator()
            .validate(self.textField.text)
    }
}

private extension ViewController {

    func naviagteToTheBestIsThirteenLibrary() {

        return Container.getUrlNavigator()
            .naviagate(to: URL(string: "https://github.com/jezen/is-thirteen")!)
    }
}
