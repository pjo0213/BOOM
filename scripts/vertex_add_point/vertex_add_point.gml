/// @param vertex_buffer
/// @param xx
/// @param yy
/// @param zz
/// @param nx
/// @param ny
/// @param nz
/// @param utex
/// @param vtex
/// @param color
/// @param alpha

var vertex_buffer = argument0;
var xx = argument1;
var yy = argument2;
var zz = argument3;
var nx = argument4;
var ny = argument5;
var nz = argument6;
var utex = argument7;
var vtex = argument8;
var color = argument9;
var alpha = argument10;

function vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha){
	vertex_position_3d(vertex_buffer, xx, yy, zz);
	vertex_normal(vertex_buffer, nx, ny, nz);
	vertex_texcoord(vertex_buffer, utex, vtex);
	vertex_color(vertex_buffer, color, alpha);
}