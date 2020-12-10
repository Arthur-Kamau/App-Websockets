const { Socket } = require('phoenix-channels')
 



(function client() {

    let socket = new Socket("ws://example.com/socket")
 
    socket.connect()
     
    // Now that you are connected, you can join channels with a topic:
    let channel = socket.channel("room:lobby", {})
    channel.join()
      .receive("ok", resp => { console.log("Joined successfully", resp) })
      .receive("error", resp => { console.log("Unable to join", resp) })
     
})();