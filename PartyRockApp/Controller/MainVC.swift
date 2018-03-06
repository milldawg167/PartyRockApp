//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Andrew Miller on 11/02/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/commons/f/f6/Redfoo_Sydney_2014.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Party Rock Anthem")
        let p2 = PartyRock(imageURL: "https://timedotcom.files.wordpress.com/2014/11/redfoo-literally-cant.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Sorry For Party Rocking")
        let p3 = PartyRock(imageURL: "http://www.hbartproduction.com/site/images/normal/Animation-musicale54e8c6ab21a71.jpeg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wyx6JDQCslE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Sexy And I Know It")
        let p4 = PartyRock(imageURL: "http://www.contactmusic.com/images/press/redfoo-single-dec-2014-636-promo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UA8rcLvS1BY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Champagne Showers")
        let p5 = PartyRock(imageURL: "http://www.notediscover.com/art/track/redfoo-juicy-wiggle-47182.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XNtTEibFvlQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Shots")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }

}

