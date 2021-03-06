step++;
//if(step mod 60 != 0) exit;
if(!isReady) exit;

for(var i = 0; i <= (ds_list_size(myVertexList) - 1); i++) {
    var vertexIndex0 = i;
    var vertexIndex1 = i + 1;
    
    if(vertexIndex0 == ds_list_size(myVertexList) - 1) {
        vertexIndex1 = 0;
    }
    
    if(distanceBetweenVertexes(vertexIndex0, vertexIndex1) > maxDistanceBetweenVertexes) {
        insertVertexBetween(vertexIndex0, vertexIndex1);
        i--;
    }
}

for(var i = ds_list_size(myVertexList) - 1; i >= 0; i--) {
    if(ds_list_size(myVertexList) == 3) exit;
    
    var vertexIndex0 = i - 1;
    var vertexIndex1 = i;
    
    if(vertexIndex1 == 0) {
        vertexIndex0 = ds_list_size(myVertexList) - 1;
    }
    
    if(distanceBetweenVertexes(vertexIndex0, vertexIndex1) < minDistanceBetweenVertexes) {
        deleteVertex(vertexIndex1);
        if(vertexIndex1 == 0) break;
        i++;
    }
}