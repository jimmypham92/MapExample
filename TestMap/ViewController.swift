//
//  ViewController.swift
//  TestMap
//
//  Created by Pham Anh on 7/29/17.
//  Copyright © 2017 Jimmy.Pham. All rights reserved.
//

import UIKit

let Center = "35.660888,139.73073"
let ZoomLevel = 15
let Views = "traffic,transit"
let SearchKey = "Steamers+Lane+Santa+Cruz,+CA"

class ViewController: UIViewController {

    @IBOutlet weak var goMapBtn: UIButton!
    @IBOutlet weak var goAppleMapBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goMapBtn.addTarget(self, action: #selector(goMap), for: .touchUpInside)
        goAppleMapBtn.addTarget(self, action: #selector(goAppleMap), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc private func goMap() {
        if UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!) {
            let urlScheme = "comgooglemaps://?q=\(SearchKey)&center=\(Center)&views=\(Views)&zoom=\(ZoomLevel)"
            if let url = URL(string: urlScheme) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    @objc private func goAppleMap() {
//        UIApplication.shared.openURL(URL(string:"https://www.google.com/maps/@42.585444,13.007813,6z")!)
//        let urlScheme = "http://maps.apple.com/?ll=\(Center)&z=\(ZoomLevel)"
        
        let urlScheme = "https://www.google.com/maps/@?api=1&map_action=map&center=-33.712206,150.311941&zoom=12"
        if let url = URL(string: urlScheme) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}

