// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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

var height = argument11;
var width = argument12;

function make_cuboid(vertex_buffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha, height, width){

	//wall normal to top of sprite
	vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy, -height, nx, ny, nz, utex, vtex, color, alpha);

	vertex_add_point(vertex_buffer, xx + width, yy, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
	
	//wall normal to right of sprite
	vertex_add_point(vertex_buffer, xx + width, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy + height, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy + height, -height, nx, ny, nz, utex, vtex, color, alpha);

	vertex_add_point(vertex_buffer, xx + width, yy + height, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
	
	
	//wall normal to bottom of sprite
	vertex_add_point(vertex_buffer, xx + width, yy + height, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + height, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + height, -height, nx, ny, nz, utex, vtex, color, alpha);

	vertex_add_point(vertex_buffer, xx, yy + height, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy + height, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx + width, yy + height, zz, nx, ny, nz, utex, vtex, color, alpha);
	
	
	//wall normal to left of sprite
	vertex_add_point(vertex_buffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + height, zz, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy, -height, nx, ny, nz, utex, vtex, color, alpha);

	vertex_add_point(vertex_buffer, xx, yy, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + height, -height, nx, ny, nz, utex, vtex, color, alpha);
	vertex_add_point(vertex_buffer, xx, yy + height, zz, nx, ny, nz, utex, vtex, color, alpha);
	
	
	


}