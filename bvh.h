/*
 * bvh.h
 *
 *  Created on: Oct 7, 2011
 *      Author: atulrungta
 */

#ifndef BVH_H_
#define BVH_H_

#include "bvh.h"
#include "ray.h"
#include "hit_record.h"
#include "box.h"

class BVH {
	int start_bvh;
	bool interior_node(const int &num_children);
	bool empty(int &stack_pointer);
public:
	BVH(const int &start_scene) {
		start_bvh = start_scene;
	}
	void intersect(HitRecord &hit_record, Ray &ray);
};


#endif /* BVH_H_ */
