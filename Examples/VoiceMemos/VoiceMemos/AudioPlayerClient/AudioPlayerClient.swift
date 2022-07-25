import ComposableArchitecture
import Foundation

extension DependencyValues {
  var audioPlayer: AudioPlayerClient {
    get { self[AudioPlayerClientKey.self] }
    set { self[AudioPlayerClientKey.self] = newValue }
  }

  private enum AudioPlayerClientKey: LiveDependencyKey {
    static let liveValue = AudioPlayerClient.live
    static let testValue = AudioPlayerClient.unimplemented
  }
}

struct AudioPlayerClient {
  var play: @Sendable (URL) async throws -> Bool
}
