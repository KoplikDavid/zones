/// @description Insert description here
// You can write your code in this editor
//if (!instance_exists(actualZone)) {
//	actualZone = instance_create_depth(0, 0, 2, Zone);
//}
exit;
var clickedVertexID = getclickedVertexID();

if (instance_exists(actualZone)) {
	if (clickedVertexID) {
		if (actualZone.canBeCompleted()) { 
            setZoneReady();
			actualZone = noone;
			}
	}else{
		addMouseVertex();
	}
}else{
	if (clickedVertexID) {
		draggedPoint = clickedVertexID;
	}else{
		createZone()
		addMouseVertex();
	}
}