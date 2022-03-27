var nearestVertex = {instance : noone, distance: undefined};
var localDraggedP = draggedPoint;


if (instance_exists(draggedPoint)) {
	draggedPoint.x = mouse_x;
	draggedPoint.y = mouse_y;
	
	with(Vertex) {
		if (id != localDraggedP) {
			var distance = point_distance(x, y, localDraggedP.x, localDraggedP.y);
			if (is_undefined(nearestVertex.distance) || nearestVertex.distance > distance) {
				nearestVertex.instance = id;
				nearestVertex.distance = distance;
			}
		}
	}
	if (!is_undefined(nearestVertex.distance) && nearestVertex.distance < 30) {
		localDraggedP.x = nearestVertex.instance.x;
		localDraggedP.y = nearestVertex.instance.y;
	}
}