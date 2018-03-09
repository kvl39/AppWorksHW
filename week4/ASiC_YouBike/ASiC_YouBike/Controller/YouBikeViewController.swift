//
//  YouBikeViewController.swift
//  ASiC_YouBike
//
//  Created by WU CHIH WEI on 2018/2/25.
//  Copyright © 2018年 WU CHIH WEI. All rights reserved.
//

import UIKit
import MapKit

protocol StationInfo {
    
    var name: String { get }
    
    var position: String { get }
    
    var remainBikes: String { get }
}


class YouBikeViewController: UIViewController, DelegateClientProtocol {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationPosition: UILabel!
    @IBOutlet weak var stationRemainBikes: UILabel!
    
    
    
    
    let closureClient = ClosureClient()
    
    var delegateClient = DelegateClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateClient.delegate = self
        delegateClient.loadData()
        closureClient.getDataFromFile { (annotation) in
            mapView.addAnnotations(annotation)
        }
        
    }
    
    
    
    func didGetDataFromFile(stationInfo: StationInfo) -> Void {
        stationName.text = stationInfo.name
        stationPosition.text = stationInfo.position
        stationRemainBikes.text = "剩\(stationInfo.remainBikes)台"
    
    }
}




