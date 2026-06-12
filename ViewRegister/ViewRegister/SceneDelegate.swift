import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // 1. Сцена подключается к приложению (настройка главного экрана)
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("SceneDelegate: willConnectTo (Сцена подключается)")
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
    }

    // 2. Сцена отключена системой (освобождение ресурсов)
    func sceneDidDisconnect(_ scene: UIScene) {
        print(" SceneDelegate: sceneDidDisconnect (Сцена отключена)")
    }

    // 3. Сцена переходит в активное состояние (в фокусе, принимает касания)
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(" SceneDelegate: sceneDidBecomeActive (Сцена стала активной)")
    }

    // 4. Сцена теряет фокус (например, потянули шторку уведомлений)
    func sceneWillResignActive(_ scene: UIScene) {
        print(" SceneDelegate: sceneWillResignActive (Сцена теряет фокус)")
    }

    // 5. Сцена возвращается на передний план из фонового режима
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(" SceneDelegate: sceneWillEnterForeground (Сцена возвращается на экран)")
    }

    // 6. Сцена полностью ушла в фоновый режим
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(" SceneDelegate: sceneDidEnterBackground (Сцена ушла в фон)")
    }
}

