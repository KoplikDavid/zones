var count = ds_list_size(myVertexList);

if (count >= 3) {
	draw_set_color(myColor);
	draw_set_alpha(0.4);

	draw_primitive_begin(pr_trianglefan);
	
	var center_coordinates = {x: 0, y: 0};
	for(var i = 0; i < count; i++) {
		var vertex = myVertexList[|i];
		
		center_coordinates.x += vertex.x;
		center_coordinates.y += vertex.y;
	}
	center_coordinates.x /= count;
	center_coordinates.y /= count;
	
	draw_vertex(center_coordinates.x, center_coordinates.y);
	for(var i = 0; i < count; i++) {
		var vertex = myVertexList[|i];
		
		draw_vertex(vertex.x, vertex.y);
	}
	var vertex = myVertexList[|0];
	draw_vertex(vertex.x, vertex.y);
	draw_primitive_end();
}
