//
//  ViewController.swift
//  UnitTests_demo
//
//  Created by Maxim Mitin on 31.12.21.
//

import UIKit

class ViewController: UIViewController {
    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0),100)
    }
}

