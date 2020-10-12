//
//  ArtistsListVC.swift
//  Music appProject
//
//  Created by Noura on 10/11/20.
//  Copyright © 2020 Noura. All rights reserved.
//

import UIKit

class ArtistsListVC: UITableViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return artists.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArtistCell
        
        let artist = artists[indexPath.row]
        cell.ConfigureCell(artists: artist)
        
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let artist = artists[indexPath.row]
        performSegue(withIdentifier: "details", sender: artist)
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let artists = sender as! Artist
        let vc = segue.destination as! SongsListVC
        vc.songs = artists.songs
        
    }


    
}
