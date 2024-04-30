// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
var vertex_buffer = argument0;
var xx = argument1;
var yy = argument2;
var zz = argument3;
var nx = argument4;
var ny = argument5;
var nz = argument6;
var color = argument7;
var alpha = argument8;

var height = argument9;
var spr_width = argument10;
var spr_height = argument11;

function make_cuboid(vertex_buffer, xx, yy, zz, nx, ny, nz, uvs, color, alpha, height, spr_width, spr_height){

	tex_left = uvs[0];
	tex_top = uvs[1];
	tex_right = uvs[2];
	tex_bottom = uvs[3];

	//wall normal to top of sprite
	vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy, zz, nx, ny, nz, tex_left, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy, -height, nx, ny, nz, tex_left, tex_top, color, alpha);

	vertex_add_point(vertex_buffer, xx + spr_width, yy, -height, nx, ny, nz, tex_left, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy, -height, nx, ny, nz, tex_right, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	
	////wall normal to right of sprite
	vertex_add_point(vertex_buffer, xx + spr_width, yy, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy + spr_height, zz, nx, ny, nz, tex_left, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy + spr_height, -height, nx, ny, nz, tex_left, tex_top, color, alpha);

	vertex_add_point(vertex_buffer, xx + spr_width, yy + spr_height, -height, nx, ny, nz, tex_left, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy, -height, nx, ny, nz, tex_right, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	
	
	////wall normal to bottom of sprite
	vertex_add_point(vertex_buffer, xx + spr_width, yy + spr_height, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + spr_height, zz, nx, ny, nz, tex_left, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + spr_height, -height, nx, ny, nz, tex_left, tex_top, color, alpha);

	vertex_add_point(vertex_buffer, xx, yy + spr_height, -height, nx, ny, nz, tex_left, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy + spr_height, -height, nx, ny, nz, tex_right, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx + spr_width, yy + spr_height, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	
	
	////wall normal to left of sprite
	vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, tex_left, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + spr_height, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy, -height, nx, ny, nz, tex_left, tex_top, color, alpha);

	vertex_add_point(vertex_buffer, xx, yy, -height, nx, ny, nz, tex_left, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + spr_height, -height, nx, ny, nz, tex_right, tex_top, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + spr_height, zz, nx, ny, nz, tex_right, tex_bottom, color, alpha);
	
	
	


}