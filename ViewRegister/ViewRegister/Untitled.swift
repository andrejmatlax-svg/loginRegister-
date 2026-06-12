
//
//  Untitled.swift
//  ViewRegister
//
//  Created by Андрей Матлах on 12.06.2026.
//

import UIKit

class myViewController: UIViewController {

    // 1. Создание и загрузка вью (вызывается, если вью создается программно)
    override func loadView() {
        super.loadView()
        print(" ViewController: loadView (Загрузка вью)")
    }

    // 2. Вью загружена в память (идеально для первичной настройки UI)
    override func viewDidLoad() {
        super.viewDidLoad()
    
    print(" ViewController: viewDidLoad (Вью загружена в память)")
        view.backgroundColor = .systemBackground
    }

    // 3. Вью вот-вот появится на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(" ViewController: viewWillAppear (Вью скоро появится)")
    }

    // 4. Границы (bounds) вью вот-вот изменятся (перед расчетом констрейнтов)
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(" ViewController: viewWillLayoutSubviews (Разметка начнется)")
    }

    // 5. Границы изменились, субвью расставлены (размеры элементов уже точные)
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(" ViewController: viewDidLayoutSubviews (Разметка завершена)")
    }

    // 6. Вью полностью появилась на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(" ViewController: viewDidAppear (Вью на экране)")
    }

    // 7. Вью вот-вот исчезнет с экрана (например, при переходе назад)
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(" ViewController: viewWillDisappear (Вью скоро исчезнет)")
    }

    // 8. Вью полностью исчезла с экрана
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(" ViewController: viewDidDisappear (Вью исчезла)")
    }
}
