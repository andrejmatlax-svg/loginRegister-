import UIKit

class ViewController: UIViewController {
    class ViewController: UIViewController {
        
        //MARK: Label с названием (Login)
        
        private let titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Login"
            label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
            label.textColor = .white
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        //MARK: TextFiled с названием (Username), с деталими (person, checkmark.circle.fill)
            
            private let usernameTextField: UITextField = {
                let TextField = UITextField()
                TextField.placeholder = "Username"
                TextField.backgroundColor = .white
                TextField.layer.cornerRadius = 22
                TextField.textColor = .black
                
                
                let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 44))
                let icon = UIImageView(image: UIImage(systemName: "person"))
                icon.tintColor = .lightGray
                icon.frame = CGRect(x: 16, y: 13, width: 18, height: 18)
                leftView.addSubview(icon)
                TextField.leftView = leftView
                TextField.leftViewMode = .always
                
               
                let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 44))
                let checkIcon = UIImageView(image: UIImage(systemName: "checkmark.circle.fill"))
                checkIcon.tintColor = .systemGreen
                checkIcon.frame = CGRect(x: 6, y: 13, width: 18, height: 18)
                rightView.addSubview(checkIcon)
                TextField.rightView = rightView
                TextField.rightViewMode = .always
                TextField.translatesAutoresizingMaskIntoConstraints = false
                return TextField
            }()

        //MARK: TextFiled с названием (Password) c деталими(look)
            
            private let passwordTextField: UITextField = {
                let TextField = UITextField()
                TextField.placeholder = "Password"
                TextField.backgroundColor = .white
                TextField.layer.cornerRadius = 22
                
                let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 44))
                        let icon = UIImageView(image: UIImage(systemName: "lock"))
                        icon.tintColor = .lightGray
                        icon.frame = CGRect(x: 16, y: 13, width: 18, height: 18)
                        leftView.addSubview(icon)
                        TextField.leftView = leftView
                        TextField.leftViewMode = .always
                       
                        TextField.translatesAutoresizingMaskIntoConstraints = false
                        return TextField
                    }()
        
        
        
    }
}
