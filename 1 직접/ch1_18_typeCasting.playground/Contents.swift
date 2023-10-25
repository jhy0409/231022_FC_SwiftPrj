import Foundation

 // is, as : 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 클래스나 서브 클래스로 취급 하는 방법
class MdiaItm {
    var name: String
    init(name: String) { self.name = name }
}

class Movie: MdiaItm {
    var director: String
    init(name: String, director: String) { self.director = director; super.init(name: name) }
}

class Song: MdiaItm {
    var artist: String
    init(name: String, artist: String) { self.artist = artist; super.init(name: name) }
}

let lbr = [ Movie(name: "0 기생출", director: "ㅂㅈㅎ"), Song(name: "1 Butter", artist: "BTS"), Movie(name: "2 올드보이", director: "ㅂㅊㅇ"), Song(name: "3 Wonderwall", artist: "Oasis"), Song(name: "4 Rain", artist: "ㅇㅈ")
]

var moviewCnt = 0; var songCnt = 0

for item in lbr {
    if item is Movie { moviewCnt += 1
    } else if item is Song { songCnt += 1 }
}

print("Media library contains \(moviewCnt) movies and \(songCnt) songs\n")

for item in lbr {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}
