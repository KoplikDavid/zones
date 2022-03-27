myVertexList = ds_list_create();
myColor = make_color_hsv(random(255), 255, 255);
maxDistanceBetweenVertexes = 64;
step = 0;


canBeCompleted = function() {
	return (ds_list_size(myVertexList) > 2);
}

addVertex = function(pos_x, pos_y) {
	ds_list_add(myVertexList, instance_create_depth(pos_x, pos_y, 1, Vertex));
}

insertVertexBetween = function(vertexIndex0, vertexIndex1) {
    var newIndex = vertexIndex1;
    var vertex0 = myVertexList[| vertexIndex0];
    var vertex1 = myVertexList[| vertexIndex1];
    var pos_x = mean(vertex0.x, vertex1.x);
    var pos_y = mean(vertex0.y, vertex1.y);
    
    if(vertexIndex1 == 0) {
      addVertex(pos_x, pos_y);
      return;
    }
    
    ds_list_insert(myVertexList, newIndex, instance_create_depth(pos_x, pos_y, 1, Vertex));
}



distanceBetweenVertexes = function(vertexIndex0, vertexIndex1){
    var vertex0 = myVertexList[| vertexIndex0];
    var vertex1 = myVertexList[| vertexIndex1];
    
    return point_distance(vertex0.x, vertex0.y, vertex1.x, vertex1.y);
}