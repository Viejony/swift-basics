struct  Resolution {
    var height = 0
    var width = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

func printVideoDetails(_ video: VideoMode){
    print("Video: name = \(video.name!), w = \(video.resolution.width), " + 
    "h = \(video.resolution.height), interlaced = \(video.interlaced), " + 
    "frameRate = \(video.frameRate)")
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)
someVideoMode.resolution.width = 1280
someVideoMode.resolution.height = 1280
print(someVideoMode.resolution.width)

let vga = Resolution(height: 480, width: 640)
print("vga w = \(vga.width), h = \(vga.height)")


// New structs from defined structs are copies
let hd = Resolution(height: 1920, width: 1080)
var cinema = hd
print("cinema w = \(cinema.width), h = \(cinema.height)")
cinema.width = 2048
print("cinema w = \(cinema.width), h = \(cinema.height)")
print("hd w = \(hd.width), h = \(hd.height)")


// In classes, any instance is a reference
let tenEighty = VideoMode()
tenEighty.resolution.width = 1920
tenEighty.resolution.height = 1080
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
printVideoDetails(tenEighty)

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
printVideoDetails(tenEighty)


// Object comparator: ===
if tenEighty === alsoTenEighty{
    print("Videos are same")
}else{
    print("Videos are different")
}