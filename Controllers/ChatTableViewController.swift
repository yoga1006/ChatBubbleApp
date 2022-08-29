//
//  ChatTableViewController.swift
//  ChatRoomApp
//
//  Created by Yoga  on 2022/8/27.
//

import UIKit

class ChatTableViewController: UITableViewController {

    
    let lyrics = [Lyrics(name: "boy", content:"Oh 星座學家 我們的速配指數有幾趴 水逆危機 該不該出門見他 還是乖乖宅在家"),Lyrics(name: "girl", content: "Oh 星座學教主 火象我卻像瞎子在摸象 上升月亮 他桃花越來越旺 如何成為他的only one"),Lyrics(name: "boy", content: "服務生剛剛經過 嗯 他很務實他很金牛 呃  我也不是要嘴星座 no 但你連他名字都沒聽過  將他故事完整拼湊 直接信誓旦旦一口 咬定出生時他嬰頭頂上 浮著哪些星球 嗯"),Lyrics(name: "girl", content: "臭直男 不懂偽科學 星盤 留給妹子解 唯一支持 Nasa Space X"),Lyrics(name: "boy", content: "叫我別吵叫我不許 拗 我總吹毛求疵顧慮 多 總在假會總在舞文弄墨 什麼data什麼數據 什麼beta distribution 這麽桀驁這麽不訓 這麼龜毛根本處女 座"),Lyrics(name: "girl", content: "你不是真的關心 只想要觀星"),Lyrics(name: "boy", content: "Be a 星探 for the time being 不用擔心 不用搬 天文望遠鏡"),Lyrics(name: "girl", content: "Watch me do my thing Im a star I be shining"),Lyrics(name: "boy", content: "嗨 歡迎收聽本週的M嗨星象觀測站"),Lyrics(name: "girl", content: "這禮拜處女座的朋友們你們要注意了 你們將在大眾面前做出艱難的抉擇 一不小心可能會捲入質疑的聲浪哦"),Lyrics(name: "boy", content: "處女座的朋友們千萬不要走心 跟著自己的心走才是最重要的"),Lyrics(name: "girl", content: "本週的幸運數字是1.2 請務必小心使用")]
                  

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lyrics.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let singer = lyrics[indexPath.row]
        if singer.name == "boy" {

        let cell = tableView.dequeueReusableCell(withIdentifier:
        "BoyTableViewCell", for: indexPath) as! BoyTableViewCell
            cell.boyImageView.image = UIImage(named: singer.name)
            cell.boyTextView.text = singer.content
        return cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier:"GirlTableViewCell", for: indexPath) as! GirlTableViewCell
            cell.girlImageView.image = UIImage(named: singer.name)
            cell.girlTextView.text = singer.content
        return cell
        }
   
    }
    
}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
