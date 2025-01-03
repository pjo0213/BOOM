attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
    vec4 object_space_pos = vec4(in_Position, 1.0);
	
	mat4 worldView = gm_Matrices[MATRIX_WORLD_VIEW];
	worldView[0][0] = 1.0;
	worldView[0][1] = 0.0;
	worldView[0][2] = 0.0;
	
	//comment out middle section of identity matrix for cyclindrical billboarding; otherwise circular billboarding is used.
	/*
	worldView[1][0] = worldView[2][0];
	worldView[1][1] = worldView[2][1];
	worldView[1][2] = worldView[2][2];
	*/
	worldView[1][0] = 0.0;
	worldView[1][1] = 1.0;
	worldView[1][2] = 0.0;
	
	worldView[2][0] = 0.0;
	worldView[2][1] = 0.0;
	worldView[2][2] = 1.0;
	
    gl_Position = gm_Matrices[MATRIX_PROJECTION] * (worldView * object_space_pos);
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
