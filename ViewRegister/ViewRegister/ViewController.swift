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
        
        
         //MARK: кнопка Login
            
            private let loginButton: UIButton = {
                let button = UIButton(type: .system)
                button.setTitle("Login", for: .normal)
                button.setTitleColor(.white, for: .normal)
                button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
                button.backgroundColor = UIColor(red: 0.35, green: 0.40, blue: 0.80, alpha: 1.0)
                button.layer.cornerRadius = 22
                
                
                button.layer.shadowColor = UIColor.black.cgColor
                button.layer.shadowOffset = CGSize(width: 0, height: 4)
                button.layer.shadowOpacity = 0.2
                button.layer.shadowRadius = 5
                
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
        
        //MARK: button c (Forgot your password?)
            
            private let forgotPasswordButton: UIButton = {
                let button = UIButton(type: .system)
                button.setTitle("Forgot your password?", for: .normal)
                button.setTitleColor(.white.withAlphaComponent(0.8), for: .normal)
                button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
        
        
        //MARK: Label c (or connect with)
            
            private let dividerLabel: UILabel = {
                let label = UILabel()
                label.text = "or connect with "
                label.font = UIFont.systemFont(ofSize: 12)
                label.textColor = .white.withAlphaComponent(0.6)
                label.textAlignment = .center
                label.translatesAutoresizingMaskIntoConstraints = false
                return label
            }()
        
        //MARK: кнопка (Facebook)
        
        private let facebookButton: UIButton = {
                let button = UIButton(type: .system)
                button.setTitle("Facebook", for: .normal)
                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = UIColor(red: 0.11, green: 0.55, blue: 0.93, alpha: 1.0)
                button.layer.cornerRadius = 20
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
        
        //MARK: кнопка (Twitter)
            
            private let twitterButton: UIButton = {
                let button = UIButton(type: .system)
                button.setTitle("Twitter", for: .normal)
                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = UIColor(red: 0.18, green: 0.34, blue: 0.63, alpha: 1.0)
                button.layer.cornerRadius = 20
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
        
        //MARK: соединение кнопак Twitter и Facebook
            
            private let socialStackView: UIStackView = {
                let stack = UIStackView()
                stack.axis = .horizontal
                stack.spacing = 16
                stack.distribution = .fillEqually
                stack.translatesAutoresizingMaskIntoConstraints = false
                return stack
            }()
        
        //MARK: прозрачная кнопка с (Don't have account? и Sign up  )
            
            private let signUpButton: UIButton = {
                let button = UIButton(type: .system)
                
                
                let attString = NSMutableAttributedString(
                    string: "Don't have account? ",
                    attributes: [.foregroundColor: UIColor.white.withAlphaComponent(0.8), .font: UIFont.systemFont(ofSize: 14)]
                )
                attString.append(NSAttributedString(
                    string: "Sign up",
                    attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 14, weight: .bold)]
                ))
                
                button.setAttributedTitle(attString, for: .normal)
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
        
    }
}
