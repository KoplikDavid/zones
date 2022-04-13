myVertexList = ds_list_create();
myColor = make_color_hsv(random(255), 255, 255);
maxDistanceBetweenVertexes = 32;
minDistanceBetweenVertexes = 16;
step = 0;
isReady = false;

canBeCompleted = function() {
	return (ds_list_size(myVertexList) > 2);
}

createVertex = function(pos_x, pos_y) {
    var vertex = instance_create_depth(pos_x, pos_y, 1, Vertex);
    vertex.myZone = id;
    return vertex;
}

addVertex = function(pos_x, pos_y) {
	ds_list_add(myVertexList, createVertex(pos_x, pos_y));
}

deleteVertex = function(index) {
    var vertexToBeDestroyd = ds_list_find_value(myVertexList, index);
    ds_list_delete(myVertexList, index);
    instance_destroy(vertexToBeDestroyd);
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
    
    ds_list_insert(myVertexList, newIndex, createVertex(pos_x, pos_y));
}



distanceBetweenVertexes = function(vertexIndex0, vertexIndex1){
    var vertex0 = myVertexList[| vertexIndex0];
    var vertex1 = myVertexList[| vertexIndex1];
    if(vertex0 == undefined || vertex1  == undefined) {
        return mean(minDistanceBetweenVertexes, maxDistanceBetweenVertexes);
   }  
    return point_distance(vertex0.x, vertex0.y, vertex1.x, vertex1.y);
}