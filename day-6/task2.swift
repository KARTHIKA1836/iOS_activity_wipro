class Downloader {
    let name: String
    var onFinish: (() -> Void)?

    init(name: String) {
        self.name = name
    }

    func start() {
        onFinish = { [weak self] in
            guard let self = self else { return }
            print("Finished \(self.name)")
        }
        onFinish?()
    }
    deinit {
        print("Downloader '\(name)' deallocated")
    }
}

var task: Downloader? = Downloader(name: "Video.mp4")
task?.start()
task = nil





class Downloader {
    let name: String
    var onFinish: (() -> Void)?

    init(name: String) {
        self.name = name
    }

    func start() {
        onFinish = {
            print("Finished \(self.name)")
        }
        onFinish?()
    }
    deinit {
        print("Downloader '\(name)' deallocated")
    }
}

var task: Downloader? = Downloader(name: "Video.mp4")
task?.start()
task = nil