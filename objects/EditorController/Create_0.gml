actualZone = noone;
draggedPoint = noone;
allZones = ds_map_create();

getclickedVertexID = function() {
    return collision_point(mouse_x, mouse_y, Vertex, false, false);
}

addMouseVertex = function() {
	actualZone.addVertex(mouse_x, mouse_y);
}

addVertexAtPosition = function(pos_x, pos_y) {
    actualZone.addVertex(pos_x, pos_y);
}

createZone = function() {
    actualZone = instance_create_depth(0, 0, 2, Zone);
    ds_map_add(allZones, actualZone.id, actualZone);
}

setZoneReady = function() {
    actualZone.isReady = true;
}

initialize = function() {
   createZone();
   addVertexAtPosition(0, 0);
   addVertexAtPosition(0, room_height);
   addVertexAtPosition(room_width/2, room_height);
   addVertexAtPosition(room_width/2, 0);
   setZoneReady();
   createZone();
   addVertexAtPosition(room_width, 0);
   addVertexAtPosition(room_width, room_height);
   addVertexAtPosition(room_width/2, room_height);
   addVertexAtPosition(room_width/2, 0);
   setZoneReady();
}

//initialize()