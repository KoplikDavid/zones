var myId = id;

with(Vertex) {
    var vertexDistance = point_distance(myId.x, myId.y, x, y);
    var maxDistance = myId.pushDistance * myId.pushPower;
    
    if(vertexDistance < maxDistance) {
        var moveDirection = point_direction(myId.x, myId.y, x, y);
        var ratio = 1 - (vertexDistance / maxDistance);
        
        motion_add(moveDirection, myId.pushSpeed * myId.pushPower * ratio);
    }

}
    
