/*
 * bvh.cc
 *
 *  Created on: Oct 7, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "bvh.h"


// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

inline Box loadBoxFromMemory(const int &addr) {
	Vector p1( loadf( addr, 0 ), loadf( addr, 1 ), loadf(addr, 2 ) );
	Vector p2( loadf( addr, 3 ), loadf( addr, 4 ), loadf(addr, 5 ) );
	Box box(p1, p2);
	return box;
}

inline Trigonum loadTriangleFromMemory(const int &addr) {
	Vector e1( loadf( addr, 0 ), loadf( addr, 1 ), loadf(addr, 2 ) );
	Vector e2( loadf(addr, 3 ), loadf(addr, 4 ), loadf(addr, 5 ) );
	Vector e3( loadf(addr, 6 ), loadf(addr, 7 ), loadf(addr, 8 ) );
	Trigonum triangle(e1, e2, e3, loadi(addr, 9), loadi(addr, 10));
	return triangle;
}

bool BVH::interior_node(const int &num_children) {
	if (num_children < 0)
		return true;
	return false;
}

bool BVH::empty(int &stack_pointer) {
	if (stack_pointer < 0)
		return true;
	return false;
}

void BVH::intersect(HitRecord &hit_record, Ray &ray) {
	int stack[32] ;
	int j = 0;
	int node_id = 0;
	int sp = -1;
	int left_id = 0;
	int num_children = 0;
	int tri_addr = 0;
	int node_addr = 0;
	while(true) {

		node_addr = start_bvh + node_id * 8;
		Box b = loadBoxFromMemory(node_addr);
		HitRecord box_hit;
		if (b.intersect(box_hit, ray)) {
			left_id = loadi( node_addr, 7 );
			num_children = loadi( node_addr, 6 );
			if (interior_node(num_children)) {
				stack[ ++sp ] = left_id + 1; //right child pushed onto the stack
				node_id = left_id;
				continue;
			}
			tri_addr = left_id;

			for(int i = 0; i < num_children; ++i) {
				Trigonum tri = loadTriangleFromMemory(tri_addr + (i * 11));
				tri.intersects(hit_record, ray, tri_addr + (i * 11));
			}
		}
		if (empty(sp))
			break;
		node_id = stack[ sp-- ];
	}
}



