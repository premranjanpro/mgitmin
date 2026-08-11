function jsCallbackReady (playerId) {
	jQuery('#' + playerId).get(0).addJsListener("playerStateChange", "playerStateChangeHandler");
}

function playerStateChangeHandler (data, id) {
  cmVideoStatus = -1;
  statusObj = {"start" : 0, "pause" : 1, "play" : 2, "completion" : 3 };

	cmElementId = jQuery('.cm-id').html();
  cmCurrentTime = jQuery('#' + id).get(0).evaluate("{video.player.currentTime}");
  cmDuration = jQuery('#' + id).get(0).evaluate("{video.player.duration}");

  if (data == "playing"){
    if (cmCurrentTime <= 1){
      cmVideoStatus = statusObj["start"];
    } else if (cmCurrentTime >= cmDuration){
      // When it reaches completion the events are buffering, playing, ready
    } else {
      cmVideoStatus = statusObj["play"];
    }
  } else if(data == "paused"){
    cmVideoStatus = statusObj["pause"];
  } else if(data == "ready"){
    if (cmCurrentTime >= cmDuration){
      cmVideoStatus = statusObj["completion"];
    }
  }

  if (cmVideoStatus >= 0){
    // Build the CM attributes array
    var cmAttributesArray = new Array();
    cmAttributesArray[12] = cmVideoStatus;
    cmAttributesArray[13] = cmCurrentTime;
    cmAttributesArray[14] = cmDuration;

    // Make CM attributes string
    cmAttributes = cmAttributesArray.join("-_-");
    cmCreateElementTag( cmElementId, "VIDEOS", cmAttributes );
  }
}
;
