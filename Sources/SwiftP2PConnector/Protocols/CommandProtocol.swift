import Foundation
import MultipeerConnectivity

public protocol Command {
	func action()
}

@available(iOS 11.0, *)
public protocol CommandSender {
	var commandKey: String {get set}
}

@available(iOS 11.0, *)
extension CommandSender {
	func sendCommand(to peers: [MCPeerID]) {
		P2PConnector.shared.sendKey(commandKey, to: peers)
	}
}
