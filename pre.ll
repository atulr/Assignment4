; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%0 = type { double, float }
%struct.BVH = type { i32 }
%struct.Box = type { %struct.Color, %struct.Color }
%struct.Color = type { float, float, float }
%struct.HitRecord = type { float, %struct.Trigonum }
%struct.Image = type { i32, i32, i32 }
%struct.Mat = type { %struct.Color, float, float }
%struct.PinHoleCamera = type { %struct.Color, %struct.Color, %struct.Color, %struct.Color, %struct.Color, float, float }
%struct.PointLight = type { %struct.Color, %struct.Color }
%struct.Ray = type { %struct.Color, %struct.Color }
%struct.Shader = type <{ i8 }>
%struct.Sphere = type { float, float, float, float, %struct.Mat }
%struct.Trigonum = type { %struct.Color, %struct.Color, %struct.Color, i32, %struct.Mat }
%struct.Vector = type { float, float, float }

declare float @llvm.trax.loadf(i32, i32) nounwind

define internal fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %this, double %point1.0, float %point1.1, double %point2.0, float %point2.1, double %point3.0, float %point3.1, i32 %i, i32 %mat_id) nounwind ssp align 2 {
return:
  %tmp80 = bitcast double %point1.0 to i64
  %tmp58 = bitcast double %point2.0 to i64
  %tmp36 = bitcast double %point3.0 to i64
  %0 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 0
  %2 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %3 = bitcast %struct.Trigonum* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %2, align 4
  %4 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 0
  %6 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  store float 0.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 0
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float 0.000000e+00, float* %10, align 4
  %tmp93 = trunc i64 %tmp80 to i32
  %tmp94 = bitcast i32 %tmp93 to float
  store float %tmp94, float* %0, align 4
  %11 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 1
  %tmp89 = lshr i64 %tmp80, 32
  %tmp90 = trunc i64 %tmp89 to i32
  %tmp91 = bitcast i32 %tmp90 to float
  store float %tmp91, float* %11, align 4
  %12 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 2
  store float %point1.1, float* %12, align 4
  %tmp71 = trunc i64 %tmp58 to i32
  %tmp72 = bitcast i32 %tmp71 to float
  store float %tmp72, float* %1, align 4
  %13 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %tmp67 = lshr i64 %tmp58, 32
  %tmp68 = trunc i64 %tmp67 to i32
  %tmp69 = bitcast i32 %tmp68 to float
  store float %tmp69, float* %13, align 4
  %14 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float %point2.1, float* %14, align 4
  %tmp49 = trunc i64 %tmp36 to i32
  %tmp50 = bitcast i32 %tmp49 to float
  store float %tmp50, float* %5, align 4
  %15 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  %tmp45 = lshr i64 %tmp36, 32
  %tmp46 = trunc i64 %tmp45 to i32
  %tmp47 = bitcast i32 %tmp46 to float
  store float %tmp47, float* %15, align 4
  %16 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float %point3.1, float* %16, align 4
  %17 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 3
  store i32 %i, i32* %17, align 4
  %18 = call i32 @llvm.trax.loadi(i32 0, i32 9)
  %19 = mul nsw i32 %mat_id, 25
  %20 = add nsw i32 %19, %18
  %21 = call float @llvm.trax.loadf(i32 %20, i32 6)
  %22 = call float @llvm.trax.loadf(i32 %20, i32 5)
  %23 = call float @llvm.trax.loadf(i32 %20, i32 4)
  store float %23, float* %8, align 4
  %24 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float %21, float* %25, align 4
  %26 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 1
  store float 0x3FD3333340000000, float* %26, align 4
  %27 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 2
  store float 0x3FE6666660000000, float* %27, align 4
  ret void
}

declare i32 @llvm.trax.loadi(i32, i32) nounwind

define internal fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* nocapture %this, %struct.HitRecord* nocapture %hit_record, %struct.Box* %ray) nounwind ssp align 2 {
entry:
  %memtmp.i.i = alloca %struct.Trigonum, align 8
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i = alloca %struct.Color, align 8
  %normal.i = alloca %struct.Color, align 8
  %s.i = alloca %struct.Color, align 8
  %stack = alloca [32 x i32], align 4
  %tri = alloca %struct.Trigonum, align 8
  %2 = getelementptr inbounds %struct.BVH* %this, i64 0, i32 0
  %3 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %4 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %7 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %ray819.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray819.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray819.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %9 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 0
  %10 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 2
  %elt.i30 = bitcast %struct.Color* %10 to double*
  %11 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 2, i32 2
  %12 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 0
  %13 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 1
  %14 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 2
  %15 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 1
  %16 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 0
  %17 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 1
  %18 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 2
  %19 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %20 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 1
  %27 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 2
  %elt74.i = bitcast %struct.Color* %edge1.i to double*
  %28 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %29 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1
  %30 = bitcast %struct.Trigonum* %29 to i8*
  %memtmp4.i.i = bitcast %struct.Trigonum* %memtmp.i.i to i8*
  br label %bb.outer

bb.outer:                                         ; preds = %bb9, %entry
  %memtmp81.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp81.i.11379, %bb9 ]
  %memtmp75.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp75.i.11381, %bb9 ]
  %memtmp69.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp69.i.11383, %bb9 ]
  %memtmp63.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp63.i.11385, %bb9 ]
  %memtmp84.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp84.i.3, %bb9 ]
  %memtmp52.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp52.i.2, %bb9 ]
  %memtmp32.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp32.i.2, %bb9 ]
  %node_id.0.ph = phi i32 [ 0, %entry ], [ %154, %bb9 ]
  %sp.0.ph = phi i32 [ -1, %entry ], [ %155, %bb9 ]
  br label %bb

bb:                                               ; preds = %bb3, %bb.outer
  %memtmp81.i.0 = phi i128 [ %ins182, %bb3 ], [ %memtmp81.i.0.ph, %bb.outer ]
  %memtmp75.i.0 = phi i128 [ %ins204, %bb3 ], [ %memtmp75.i.0.ph, %bb.outer ]
  %memtmp69.i.0 = phi i128 [ %ins226, %bb3 ], [ %memtmp69.i.0.ph, %bb.outer ]
  %memtmp63.i.0 = phi i128 [ %ins248, %bb3 ], [ %memtmp63.i.0.ph, %bb.outer ]
  %node_id.0 = phi i32 [ %73, %bb3 ], [ %node_id.0.ph, %bb.outer ]
  %sp.0 = phi i32 [ %76, %bb3 ], [ %sp.0.ph, %bb.outer ]
  %31 = load i32* %2, align 4
  %32 = shl nsw i32 %node_id.0, 3
  %33 = add nsw i32 %31, %32
  %34 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %37 = call float @llvm.trax.loadf(i32 %33, i32 5) nounwind
  %38 = call float @llvm.trax.loadf(i32 %33, i32 4) nounwind
  %39 = call float @llvm.trax.loadf(i32 %33, i32 3) nounwind
  %40 = load float* %3, align 4
  %41 = load float* %4, align 4
  %42 = load float* %5, align 4
  %tmp736 = bitcast float %40 to i32
  %tmp737 = zext i32 %tmp736 to i96
  %tmp730 = bitcast float %41 to i32
  %tmp731 = zext i32 %tmp730 to i96
  %tmp732 = shl nuw nsw i96 %tmp731, 32
  %tmp724 = bitcast float %42 to i32
  %tmp421 = zext i32 %tmp724 to i128
  %tmp422 = shl nuw nsw i128 %tmp421, 64
  %43 = fsub float %36, %40
  %44 = load float* %6, align 4
  %45 = load float* %7, align 4
  %46 = load float* %8, align 4
  %tmp713 = bitcast float %44 to i32
  %tmp714 = zext i32 %tmp713 to i96
  %tmp707 = bitcast float %45 to i32
  %tmp708 = zext i32 %tmp707 to i96
  %tmp709 = shl nuw nsw i96 %tmp708, 32
  %tmp701 = bitcast float %46 to i32
  %tmp399 = zext i32 %tmp701 to i128
  %tmp400 = shl nuw nsw i128 %tmp399, 64
  %47 = fdiv float %43, %44
  %48 = fsub float %39, %40
  %49 = fdiv float %48, %44
  %50 = fcmp ogt float %47, %49
  %tx1.i.0 = select i1 %50, float %49, float %47
  %tx2.i.0 = select i1 %50, float %47, float %49
  %51 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %51, float %tx1.i.0, float -1.000000e+10
  %52 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %52, float %tx2.i.0, float 1.000000e+10
  %53 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %54 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond = or i1 %53, %54
  br i1 %or.cond, label %bb7, label %bb29.i

bb29.i:                                           ; preds = %bb
  %55 = fsub float %35, %41
  %56 = fdiv float %55, %45
  %57 = fsub float %38, %41
  %58 = fdiv float %57, %45
  %59 = fcmp ogt float %56, %58
  %ty1.i.0 = select i1 %59, float %58, float %56
  %ty2.i.0 = select i1 %59, float %56, float %58
  %60 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %60, float %ty1.i.0, float %tnear.i.0
  %61 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %61, float %ty2.i.0, float %tfar.i.0
  %62 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %63 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond1395 = or i1 %62, %63
  br i1 %or.cond1395, label %bb7, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %ins550 = or i96 %tmp737, %tmp732
  %tmp251 = zext i96 %ins550 to i128
  %mask252 = and i128 %memtmp63.i.0, -79228162514264337593543950336
  %mask247 = or i128 %mask252, %tmp251
  %ins248 = or i128 %mask247, %tmp422
  %tmp233 = lshr i128 %ins248, 64
  %tmp234 = trunc i128 %tmp233 to i32
  %tmp235 = bitcast i32 %tmp234 to float
  %64 = fsub float %34, %tmp235
  %ins527 = or i96 %tmp714, %tmp709
  %tmp229 = zext i96 %ins527 to i128
  %mask230 = and i128 %memtmp69.i.0, -79228162514264337593543950336
  %mask225 = or i128 %mask230, %tmp229
  %ins226 = or i128 %mask225, %tmp400
  %tmp211 = lshr i128 %ins226, 64
  %tmp212 = trunc i128 %tmp211 to i32
  %tmp213 = bitcast i32 %tmp212 to float
  %65 = fdiv float %64, %tmp213
  %ins504 = or i96 %tmp737, %tmp732
  %tmp207 = zext i96 %ins504 to i128
  %mask208 = and i128 %memtmp75.i.0, -79228162514264337593543950336
  %mask203 = or i128 %mask208, %tmp207
  %ins204 = or i128 %mask203, %tmp422
  %tmp189 = lshr i128 %ins204, 64
  %tmp190 = trunc i128 %tmp189 to i32
  %tmp191 = bitcast i32 %tmp190 to float
  %66 = fsub float %37, %tmp191
  %ins481 = or i96 %tmp714, %tmp709
  %tmp185 = zext i96 %ins481 to i128
  %mask186 = and i128 %memtmp81.i.0, -79228162514264337593543950336
  %mask181 = or i128 %mask186, %tmp185
  %ins182 = or i128 %mask181, %tmp400
  %tmp167 = lshr i128 %ins182, 64
  %tmp168 = trunc i128 %tmp167 to i32
  %tmp169 = bitcast i32 %tmp168 to float
  %67 = fdiv float %66, %tmp169
  %68 = fcmp ogt float %65, %67
  %tz1.i.0 = select i1 %68, float %67, float %65
  %tz2.i.0 = select i1 %68, float %65, float %67
  %69 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %69, float %tz1.i.0, float %tnear.i.1
  %70 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %70, float %tz2.i.0, float %tfar.i.1
  %71 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %72 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond1396 = or i1 %71, %72
  br i1 %or.cond1396, label %bb7, label %bb1

bb1:                                              ; preds = %bb62.i
  %73 = call i32 @llvm.trax.loadi(i32 %33, i32 7)
  %74 = call i32 @llvm.trax.loadi(i32 %33, i32 6)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %bb3, label %bb6

bb3:                                              ; preds = %bb1
  %76 = add nsw i32 %sp.0, 1
  %77 = add nsw i32 %73, 1
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [32 x i32]* %stack, i64 0, i64 %78
  store i32 %77, i32* %79, align 4
  br label %bb

bb5:                                              ; preds = %bb6
  %80 = mul nsw i32 %storemerge, 11
  %81 = add nsw i32 %80, %73
  %82 = call float @llvm.trax.loadf(i32 %81, i32 2) nounwind
  %83 = call float @llvm.trax.loadf(i32 %81, i32 1) nounwind
  %84 = call float @llvm.trax.loadf(i32 %81, i32 0) nounwind
  %tmp808 = bitcast float %84 to i32
  %tmp809 = zext i32 %tmp808 to i64
  %tmp789 = bitcast float %83 to i32
  %tmp790 = zext i32 %tmp789 to i64
  %tmp791 = shl nuw i64 %tmp790, 32
  %ins793 = or i64 %tmp809, %tmp791
  %85 = call float @llvm.trax.loadf(i32 %81, i32 5) nounwind
  %86 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %87 = call float @llvm.trax.loadf(i32 %81, i32 3) nounwind
  %tmp784 = bitcast float %87 to i32
  %tmp785 = zext i32 %tmp784 to i64
  %tmp765 = bitcast float %86 to i32
  %tmp766 = zext i32 %tmp765 to i64
  %tmp767 = shl nuw i64 %tmp766, 32
  %ins769 = or i64 %tmp785, %tmp767
  %88 = call float @llvm.trax.loadf(i32 %81, i32 8) nounwind
  %89 = call float @llvm.trax.loadf(i32 %81, i32 7) nounwind
  %90 = call float @llvm.trax.loadf(i32 %81, i32 6) nounwind
  %tmp760 = bitcast float %90 to i32
  %tmp761 = zext i32 %tmp760 to i64
  %tmp741 = bitcast float %89 to i32
  %tmp742 = zext i32 %tmp741 to i64
  %tmp743 = shl nuw i64 %tmp742, 32
  %ins745 = or i64 %tmp761, %tmp743
  %91 = call i32 @llvm.trax.loadi(i32 %81, i32 10) nounwind
  %92 = call i32 @llvm.trax.loadi(i32 %81, i32 9) nounwind
  %tmp806 = bitcast i64 %ins793 to double
  %tmp782 = bitcast i64 %ins769 to double
  %tmp758 = bitcast i64 %ins745 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %tri, double %tmp806, float %82, double %tmp782, float %85, double %tmp758, float %88, i32 %92, i32 %91) nounwind ssp
  %tmp820 = load float* %ray819.0, align 1
  %tmp821 = load float* %ray819.1, align 1
  %tmp822 = load float* %ray819.2, align 1
  %tmp = load float* %ray.1.0, align 1
  %tmp817 = load float* %ray.1.1, align 1
  %tmp818 = load float* %ray.1.2, align 1
  %val.i31 = load double* %elt.i30, align 8
  %val2.i32 = load float* %11, align 8
  %93 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %9, double %val.i31, float %val2.i32) nounwind
  %mrv_gr.i34 = extractvalue %0 %93, 0
  %tmp1039 = bitcast double %mrv_gr.i34 to i64
  %mrv_gr4.i = extractvalue %0 %93, 1
  %tmp1026 = trunc i64 %tmp1039 to i32
  %tmp1027 = bitcast i32 %tmp1026 to float
  store float %tmp1027, float* %12, align 8
  %tmp1029 = lshr i64 %tmp1039, 32
  %tmp1030 = trunc i64 %tmp1029 to i32
  %tmp1031 = bitcast i32 %tmp1030 to float
  store float %tmp1031, float* %13, align 4
  store float %mrv_gr4.i, float* %14, align 8
  %94 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %15, double %val.i31, float %val2.i32) nounwind
  %mrv_gr12.i36 = extractvalue %0 %94, 0
  %tmp1017 = bitcast double %mrv_gr12.i36 to i64
  %mrv_gr14.i38 = extractvalue %0 %94, 1
  %tmp1007 = lshr i64 %tmp1017, 32
  %95 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i, double %mrv_gr12.i36, float %mrv_gr14.i38) nounwind
  %mrv_gr22.i = extractvalue %0 %95, 0
  %tmp995 = bitcast double %mrv_gr22.i to i64
  %mrv_gr24.i = extractvalue %0 %95, 1
  %tmp982 = trunc i64 %tmp995 to i32
  %tmp983 = bitcast i32 %tmp982 to float
  store float %tmp983, float* %16, align 8
  %tmp985 = lshr i64 %tmp995, 32
  %tmp986 = trunc i64 %tmp985 to i32
  %tmp987 = bitcast i32 %tmp986 to float
  store float %tmp987, float* %17, align 4
  store float %mrv_gr24.i, float* %18, align 8
  %96 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %normal.i) nounwind
  %mrv_gr28.i = extractvalue %0 %96, 0
  %tmp973 = bitcast double %mrv_gr28.i to i64
  %mrv_gr30.i = extractvalue %0 %96, 1
  %tmp960 = trunc i64 %tmp973 to i32
  %tmp961 = bitcast i32 %tmp960 to float
  store float %tmp961, float* %16, align 8
  %tmp963 = lshr i64 %tmp973, 32
  %tmp964 = trunc i64 %tmp963 to i32
  %tmp965 = bitcast i32 %tmp964 to float
  store float %tmp965, float* %17, align 4
  store float %mrv_gr30.i, float* %18, align 8
  %tmp1161 = bitcast float %tmp to i32
  %tmp1162 = zext i32 %tmp1161 to i96
  %tmp1155 = bitcast float %tmp817 to i32
  %tmp1156 = zext i32 %tmp1155 to i96
  %tmp1157 = shl nuw nsw i96 %tmp1156, 32
  %ins1159 = or i96 %tmp1162, %tmp1157
  %tmp1149 = bitcast float %tmp818 to i32
  %tmp952 = zext i96 %ins1159 to i128
  %mask953 = and i128 %memtmp32.i.1, -79228162514264337593543950336
  %tmp946 = zext i32 %tmp1149 to i128
  %tmp947 = shl nuw nsw i128 %tmp946, 64
  %mask948 = or i128 %mask953, %tmp952
  %ins949 = or i128 %mask948, %tmp947
  store float %tmp, float* %19, align 8
  store float %tmp817, float* %20, align 4
  %tmp934 = lshr i128 %ins949, 64
  %tmp935 = trunc i128 %tmp934 to i32
  %tmp936 = bitcast i32 %tmp935 to float
  store float %tmp936, float* %21, align 8
  %97 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %1, double %mrv_gr12.i36, float %mrv_gr14.i38) nounwind
  %mrv_gr44.i48 = extractvalue %0 %97, 0
  %tmp929 = bitcast double %mrv_gr44.i48 to i64
  %mrv_gr46.i50 = extractvalue %0 %97, 1
  %tmp919 = lshr i64 %tmp929, 32
  %tmp1246 = trunc i64 %tmp929 to i32
  %tmp1247 = bitcast i32 %tmp1246 to float
  %98 = fmul float %tmp1247, %tmp1027
  %99 = fadd float %98, 0.000000e+00
  %tmp1243 = trunc i64 %tmp919 to i32
  %tmp1244 = bitcast i32 %tmp1243 to float
  %100 = fmul float %tmp1244, %tmp1031
  %101 = fadd float %100, %99
  %102 = fmul float %mrv_gr46.i50, %mrv_gr4.i
  %103 = fadd float %102, %101
  %104 = fdiv float 1.000000e+00, %103
  %tmp1278 = bitcast float %tmp820 to i32
  %tmp1279 = zext i32 %tmp1278 to i96
  %tmp1272 = bitcast float %tmp821 to i32
  %tmp1273 = zext i32 %tmp1272 to i96
  %tmp1274 = shl nuw nsw i96 %tmp1273, 32
  %ins1276 = or i96 %tmp1279, %tmp1274
  %tmp1266 = bitcast float %tmp822 to i32
  %tmp908 = zext i96 %ins1276 to i128
  %mask909 = and i128 %memtmp52.i.1, -79228162514264337593543950336
  %tmp902 = zext i32 %tmp1266 to i128
  %tmp903 = shl nuw nsw i128 %tmp902, 64
  %mask904 = or i128 %mask909, %tmp908
  %ins905 = or i128 %mask904, %tmp903
  store float %tmp820, float* %22, align 8
  store float %tmp821, float* %23, align 4
  %tmp890 = lshr i128 %ins905, 64
  %tmp891 = trunc i128 %tmp890 to i32
  %tmp892 = bitcast i32 %tmp891 to float
  store float %tmp892, float* %24, align 8
  %val59.i = load double* %elt.i30, align 8
  %val61.i = load float* %11, align 8
  %105 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %val59.i, float %val61.i) nounwind
  %mrv_gr64.i = extractvalue %0 %105, 0
  %tmp885 = bitcast double %mrv_gr64.i to i64
  %mrv_gr66.i = extractvalue %0 %105, 1
  %tmp872 = trunc i64 %tmp885 to i32
  %tmp873 = bitcast i32 %tmp872 to float
  store float %tmp873, float* %25, align 8
  %tmp875 = lshr i64 %tmp885, 32
  %tmp876 = trunc i64 %tmp875 to i32
  %tmp877 = bitcast i32 %tmp876 to float
  store float %tmp877, float* %26, align 4
  store float %mrv_gr66.i, float* %27, align 8
  %tmp1291 = trunc i64 %tmp929 to i32
  %tmp1292 = bitcast i32 %tmp1291 to float
  %106 = fmul float %tmp1292, %tmp873
  %107 = fadd float %106, 0.000000e+00
  %tmp1288 = trunc i64 %tmp919 to i32
  %tmp1289 = bitcast i32 %tmp1288 to float
  %108 = fmul float %tmp1289, %tmp877
  %109 = fadd float %108, %107
  %110 = fmul float %mrv_gr46.i50, %mrv_gr66.i
  %111 = fadd float %110, %109
  %112 = fmul float %111, %104
  %113 = fcmp olt float %112, 0.000000e+00
  %114 = fcmp ogt float %112, 1.000000e+00
  %or.cond1397 = or i1 %113, %114
  br i1 %or.cond1397, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb73.i

bb73.i:                                           ; preds = %bb5
  %val75.i = load double* %elt74.i, align 8
  %115 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %s.i, double %val75.i, float %mrv_gr4.i) nounwind
  %mrv_gr80.i = extractvalue %0 %115, 0
  %tmp863 = bitcast double %mrv_gr80.i to i64
  %mrv_gr82.i = extractvalue %0 %115, 1
  %tmp853 = lshr i64 %tmp863, 32
  %ins1321 = or i96 %tmp1162, %tmp1157
  %tmp842 = zext i96 %ins1321 to i128
  %mask843 = and i128 %memtmp84.i.2, -79228162514264337593543950336
  %mask838 = or i128 %mask843, %tmp842
  %ins839 = or i128 %mask838, %tmp947
  %tmp824 = lshr i128 %ins839, 64
  %tmp825 = trunc i128 %tmp824 to i32
  %tmp826 = bitcast i32 %tmp825 to float
  %tmp1336 = trunc i64 %tmp863 to i32
  %tmp1337 = bitcast i32 %tmp1336 to float
  %116 = fmul float %tmp1337, %tmp
  %117 = fadd float %116, 0.000000e+00
  %tmp1333 = trunc i64 %tmp853 to i32
  %tmp1334 = bitcast i32 %tmp1333 to float
  %118 = fmul float %tmp1334, %tmp817
  %119 = fadd float %118, %117
  %120 = fmul float %mrv_gr82.i, %tmp826
  %121 = fadd float %120, %119
  %122 = fmul float %121, %104
  %123 = fcmp olt float %122, 0.000000e+00
  br i1 %123, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb94.i55

bb94.i55:                                         ; preds = %bb73.i
  %124 = fadd float %122, %112
  %125 = fcmp ogt float %124, 1.000000e+00
  br i1 %125, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb96.i

bb96.i:                                           ; preds = %bb94.i55
  %tmp1358 = trunc i64 %tmp863 to i32
  %tmp1359 = bitcast i32 %tmp1358 to float
  %tmp1102 = trunc i64 %tmp1017 to i32
  %tmp1103 = bitcast i32 %tmp1102 to float
  %126 = fmul float %tmp1359, %tmp1103
  %127 = fadd float %126, 0.000000e+00
  %tmp1355 = trunc i64 %tmp853 to i32
  %tmp1356 = bitcast i32 %tmp1355 to float
  %tmp1106 = trunc i64 %tmp1007 to i32
  %tmp1107 = bitcast i32 %tmp1106 to float
  %128 = fmul float %tmp1356, %tmp1107
  %129 = fadd float %128, %127
  %130 = fmul float %mrv_gr82.i, %mrv_gr14.i38
  %131 = fadd float %130, %129
  %132 = fmul float %131, %104
  %133 = fcmp ule float %132, 0.000000e+00
  %134 = fcmp olt float %132, 0x3F50624DE0000000
  %or.cond1398 = or i1 %133, %134
  %135 = fcmp oeq float %132, 1.000000e+10
  %or.cond1399 = or i1 %or.cond1398, %135
  br i1 %or.cond1399, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb96.i
  %136 = load float* %28, align 4
  %137 = fcmp ogt float %136, %132
  br i1 %137, label %bb3.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  store float %132, float* %28, align 4
  %138 = call float @llvm.trax.loadf(i32 %81, i32 2) nounwind
  %139 = call float @llvm.trax.loadf(i32 %81, i32 1) nounwind
  %140 = call float @llvm.trax.loadf(i32 %81, i32 0) nounwind
  %tmp1233 = bitcast float %140 to i32
  %tmp1234 = zext i32 %tmp1233 to i64
  %tmp1214 = bitcast float %139 to i32
  %tmp1215 = zext i32 %tmp1214 to i64
  %tmp1216 = shl nuw i64 %tmp1215, 32
  %ins1218 = or i64 %tmp1234, %tmp1216
  %141 = call float @llvm.trax.loadf(i32 %81, i32 5) nounwind
  %142 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %143 = call float @llvm.trax.loadf(i32 %81, i32 3) nounwind
  %tmp1209 = bitcast float %143 to i32
  %tmp1210 = zext i32 %tmp1209 to i64
  %tmp1190 = bitcast float %142 to i32
  %tmp1191 = zext i32 %tmp1190 to i64
  %tmp1192 = shl nuw i64 %tmp1191, 32
  %ins1194 = or i64 %tmp1210, %tmp1192
  %144 = call float @llvm.trax.loadf(i32 %81, i32 8) nounwind
  %145 = call float @llvm.trax.loadf(i32 %81, i32 7) nounwind
  %146 = call float @llvm.trax.loadf(i32 %81, i32 6) nounwind
  %tmp1185 = bitcast float %146 to i32
  %tmp1186 = zext i32 %tmp1185 to i64
  %tmp1166 = bitcast float %145 to i32
  %tmp1167 = zext i32 %tmp1166 to i64
  %tmp1168 = shl nuw i64 %tmp1167, 32
  %ins1170 = or i64 %tmp1186, %tmp1168
  %147 = call i32 @llvm.trax.loadi(i32 %81, i32 10) nounwind
  %148 = call i32 @llvm.trax.loadi(i32 %81, i32 9) nounwind
  %tmp1231 = bitcast i64 %ins1218 to double
  %tmp1207 = bitcast i64 %ins1194 to double
  %tmp1183 = bitcast i64 %ins1170 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %memtmp.i.i, double %tmp1231, float %138, double %tmp1207, float %141, double %tmp1183, float %144, i32 %148, i32 %147) nounwind ssp
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %memtmp4.i.i, i64 60, i32 4, i1 false) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit: ; preds = %bb3.i.i, %bb2.i.i, %bb96.i, %bb94.i55, %bb73.i, %bb5
  %memtmp84.i.1 = phi i128 [ %memtmp84.i.2, %bb5 ], [ %ins839, %bb73.i ], [ %ins839, %bb94.i55 ], [ %ins839, %bb3.i.i ], [ %ins839, %bb96.i ], [ %ins839, %bb2.i.i ]
  %149 = add nsw i32 %storemerge, 1
  br label %bb6

bb6:                                              ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, %bb1
  %memtmp84.i.2 = phi i128 [ %memtmp84.i.1, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp84.i.0.ph, %bb1 ]
  %memtmp52.i.1 = phi i128 [ %ins905, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp52.i.0.ph, %bb1 ]
  %memtmp32.i.1 = phi i128 [ %ins949, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp32.i.0.ph, %bb1 ]
  %storemerge = phi i32 [ %149, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ 0, %bb1 ]
  %150 = icmp slt i32 %storemerge, %74
  br i1 %150, label %bb5, label %bb7

bb7:                                              ; preds = %bb6, %bb62.i, %bb29.i, %bb
  %memtmp63.i.11385 = phi i128 [ %ins248, %bb6 ], [ %memtmp63.i.0, %bb ], [ %memtmp63.i.0, %bb29.i ], [ %ins248, %bb62.i ]
  %memtmp69.i.11383 = phi i128 [ %ins226, %bb6 ], [ %memtmp69.i.0, %bb ], [ %memtmp69.i.0, %bb29.i ], [ %ins226, %bb62.i ]
  %memtmp75.i.11381 = phi i128 [ %ins204, %bb6 ], [ %memtmp75.i.0, %bb ], [ %memtmp75.i.0, %bb29.i ], [ %ins204, %bb62.i ]
  %memtmp81.i.11379 = phi i128 [ %ins182, %bb6 ], [ %memtmp81.i.0, %bb ], [ %memtmp81.i.0, %bb29.i ], [ %ins182, %bb62.i ]
  %memtmp84.i.3 = phi i128 [ %memtmp84.i.2, %bb6 ], [ %memtmp84.i.0.ph, %bb ], [ %memtmp84.i.0.ph, %bb29.i ], [ %memtmp84.i.0.ph, %bb62.i ]
  %memtmp52.i.2 = phi i128 [ %memtmp52.i.1, %bb6 ], [ %memtmp52.i.0.ph, %bb ], [ %memtmp52.i.0.ph, %bb29.i ], [ %memtmp52.i.0.ph, %bb62.i ]
  %memtmp32.i.2 = phi i128 [ %memtmp32.i.1, %bb6 ], [ %memtmp32.i.0.ph, %bb ], [ %memtmp32.i.0.ph, %bb29.i ], [ %memtmp32.i.0.ph, %bb62.i ]
  %151 = icmp slt i32 %sp.0, 0
  br i1 %151, label %return, label %bb9

bb9:                                              ; preds = %bb7
  %152 = sext i32 %sp.0 to i64
  %153 = getelementptr inbounds [32 x i32]* %stack, i64 0, i64 %152
  %154 = load i32* %153, align 4
  %155 = add nsw i32 %sp.0, -1
  br label %bb.outer

return:                                           ; preds = %bb7
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define i32 @main() nounwind ssp {
entry:
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %ray_to_light_source40.i = alloca %struct.Box, align 8
  %2 = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %4 = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record69 = alloca %struct.HitRecord, align 8
  %5 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %ray = alloca %struct.Box, align 8
  %bvh = alloca %struct.BVH, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %8 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %9 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %10 = call float @llvm.trax.loadf(i32 %9, i32 0) nounwind
  %11 = call float @llvm.trax.loadf(i32 %9, i32 1) nounwind
  %12 = call float @llvm.trax.loadf(i32 %9, i32 2) nounwind
  %13 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %14 = call float @llvm.trax.loadf(i32 %13, i32 0) nounwind
  %15 = call float @llvm.trax.loadf(i32 %13, i32 1) nounwind
  %16 = call float @llvm.trax.loadf(i32 %13, i32 2) nounwind
  %17 = add nsw i32 %13, 9
  %18 = call float @llvm.trax.loadf(i32 %17, i32 0) nounwind
  %19 = call float @llvm.trax.loadf(i32 %17, i32 1) nounwind
  %20 = call float @llvm.trax.loadf(i32 %17, i32 2) nounwind
  %21 = add nsw i32 %13, 12
  %22 = call float @llvm.trax.loadf(i32 %21, i32 0) nounwind
  %23 = call float @llvm.trax.loadf(i32 %21, i32 1) nounwind
  %24 = call float @llvm.trax.loadf(i32 %21, i32 2) nounwind
  %25 = add nsw i32 %13, 15
  %26 = call float @llvm.trax.loadf(i32 %25, i32 0) nounwind
  %27 = call float @llvm.trax.loadf(i32 %25, i32 1) nounwind
  %28 = call float @llvm.trax.loadf(i32 %25, i32 2) nounwind
  %29 = add nsw i32 %13, 18
  %30 = call float @llvm.trax.loadf(i32 %29, i32 0) nounwind
  %31 = call float @llvm.trax.loadf(i32 %29, i32 1) nounwind
  %32 = call float @llvm.trax.loadf(i32 %29, i32 2) nounwind
  %33 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %34 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %35 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %36 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %35, align 4
  %37 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %37, align 4
  %38 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %39 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %40 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %41 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = call i32 @llvm.trax.atominc(i32 0)
  %43 = mul nsw i32 %6, %7
  %44 = sitofp i32 %6 to float
  %45 = fdiv float %44, -2.000000e+00
  %46 = sitofp i32 %7 to float
  %47 = fdiv float %46, -2.000000e+00
  %48 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %49 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %50 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %51 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %52 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %53 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %54 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %55 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %56 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %57 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %58 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %59 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %60 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %61 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %62 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %63 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %64 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %65 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %66 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %67 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %68 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %69 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %70 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %71 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %73 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %tmp = bitcast %struct.HitRecord* %hit_record69 to i8*
  %tmp70 = bitcast %struct.HitRecord* %hit_record to i8*
  %ray1033.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray1033.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray1033.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %.01502 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 0, i32 0
  %.11504 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 0, i32 1
  %.21506 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 0, i32 2
  %.11475.0 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 1, i32 0
  %.11475.1 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 1, i32 1
  %.11475.2 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 1, i32 2
  %.21476.0 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 2, i32 0
  %.21476.1 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 2, i32 1
  %.21476.2 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 2, i32 2
  %.41486.0 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 4, i32 0, i32 0
  %.41486.1 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 4, i32 0, i32 1
  %.41486.2 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 4, i32 0, i32 2
  %.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 4, i32 1
  %.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 1, i32 4, i32 2
  %74 = getelementptr inbounds %struct.HitRecord* %hit_record69, i64 0, i32 0
  %75 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %76 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %77 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %78 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %79 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %80 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %81 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %82 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %83 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %84 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %85 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %87 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %88 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %89 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %90 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %91 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %92 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %93 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %94 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %95 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %96 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %97 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %98 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source40.i1519.0 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 0, i32 0
  %ray_to_light_source40.i1519.1 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 0, i32 1
  %ray_to_light_source40.i1519.2 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 0, i32 2
  %ray_to_light_source40.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 1, i32 0
  %ray_to_light_source40.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 1, i32 1
  %ray_to_light_source40.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source40.i, i64 0, i32 1, i32 2
  br label %bb10

bb:                                               ; preds = %bb10
  %99 = sdiv i32 %storemerge, %6
  %100 = srem i32 %storemerge, %6
  %101 = sitofp i32 %100 to float
  %102 = fadd float %101, %45
  %103 = fadd float %102, 5.000000e-01
  %104 = fmul float %103, 2.000000e+00
  %105 = fdiv float %104, %44
  %106 = sitofp i32 %99 to float
  %107 = fadd float %106, %47
  %108 = fadd float %107, 5.000000e-01
  %109 = fmul float %108, 2.000000e+00
  %110 = fdiv float %109, %46
  store float %22, float* %51, align 8
  store float %23, float* %52, align 4
  store float %24, float* %53, align 8
  %111 = fmul float %30, %110
  %112 = fmul float %31, %110
  %113 = fmul float %32, %110
  %tmp901 = bitcast float %111 to i32
  %tmp902 = zext i32 %tmp901 to i64
  %tmp895 = bitcast float %112 to i32
  %tmp896 = zext i32 %tmp895 to i64
  %tmp897 = shl nuw i64 %tmp896, 32
  %ins899 = or i64 %tmp902, %tmp897
  %114 = fmul float %26, %105
  %115 = fmul float %27, %105
  %116 = fmul float %28, %105
  store float %114, float* %54, align 8
  store float %115, float* %55, align 4
  store float %116, float* %56, align 8
  %tmp887 = bitcast i64 %ins899 to double
  %117 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %5, double %tmp887, float %113) nounwind
  %mrv_gr14.i59 = extractvalue %0 %117, 0
  %mrv_gr16.i = extractvalue %0 %117, 1
  %118 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i59, float %mrv_gr16.i) nounwind
  %mrv_gr24.i61 = extractvalue %0 %118, 0
  %tmp791 = bitcast double %mrv_gr24.i61 to i64
  %mrv_gr26.i63 = extractvalue %0 %118, 1
  %tmp778 = trunc i64 %tmp791 to i32
  %tmp779 = bitcast i32 %tmp778 to float
  store float %tmp779, float* %48, align 8
  %tmp781 = lshr i64 %tmp791, 32
  %tmp782 = trunc i64 %tmp781 to i32
  %tmp783 = bitcast i32 %tmp782 to float
  store float %tmp783, float* %49, align 4
  store float %mrv_gr26.i63, float* %50, align 8
  %119 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %119, 0
  %tmp769 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %119, 1
  %tmp759 = lshr i64 %tmp769, 32
  %tmp946 = trunc i64 %tmp769 to i32
  %tmp947 = bitcast i32 %tmp946 to float
  %tmp943 = trunc i64 %tmp759 to i32
  %tmp944 = bitcast i32 %tmp943 to float
  store float %14, float* %33, align 8
  store float %15, float* %57, align 4
  store float %16, float* %58, align 8
  store float %tmp947, float* %34, align 4
  store float %tmp944, float* %59, align 4
  store float %mrv_gr32.i, float* %60, align 4
  store float 0.000000e+00, float* %61, align 4
  store float 0.000000e+00, float* %62, align 4
  store float 0.000000e+00, float* %63, align 4
  store float 0.000000e+00, float* %64, align 4
  store float 0.000000e+00, float* %65, align 4
  store float 0.000000e+00, float* %66, align 4
  store float 0.000000e+00, float* %67, align 4
  store float 0.000000e+00, float* %68, align 4
  store float 0.000000e+00, float* %69, align 4
  store float 0.000000e+00, float* %70, align 4
  store float 0.000000e+00, float* %71, align 4
  store float 0.000000e+00, float* %72, align 4
  store float 1.000000e+10, float* %73, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %ray)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp70, i64 64, i32 8, i1 false)
  %tmp1034 = load float* %ray1033.0, align 8
  %tmp1035 = load float* %ray1033.1, align 4
  %tmp1036 = load float* %ray1033.2, align 8
  %tmp1030 = load float* %ray.1.0, align 4
  %tmp1031 = load float* %ray.1.1, align 4
  %tmp1032 = load float* %ray.1.2, align 4
  %tmp1503 = load float* %.01502, align 4
  %tmp1505 = load float* %.11504, align 4
  %tmp1507 = load float* %.21506, align 4
  %tmp1496 = load float* %.11475.0, align 4
  %tmp1497 = load float* %.11475.1, align 4
  %tmp1498 = load float* %.11475.2, align 4
  %tmp1490 = load float* %.21476.0, align 4
  %tmp1491 = load float* %.21476.1, align 4
  %tmp1492 = load float* %.21476.2, align 4
  %tmp1487 = load float* %.41486.0, align 4
  %tmp1488 = load float* %.41486.1, align 4
  %tmp1489 = load float* %.41486.2, align 4
  %tmp1478 = load float* %.4.1, align 4
  %tmp1479 = load float* %.4.2, align 4
  %120 = load float* %74, align 8
  %121 = fmul float %tmp1030, %120
  %122 = fmul float %tmp1031, %120
  %123 = fmul float %tmp1032, %120
  %tmp1543 = bitcast float %121 to i32
  %tmp1544 = zext i32 %tmp1543 to i64
  %tmp1537 = bitcast float %122 to i32
  %tmp1538 = zext i32 %tmp1537 to i64
  %tmp1539 = shl nuw i64 %tmp1538, 32
  %ins1541 = or i64 %tmp1544, %tmp1539
  store float %tmp1034, float* %75, align 8
  store float %tmp1035, float* %76, align 4
  store float %tmp1036, float* %77, align 8
  %tmp1529 = bitcast i64 %ins1541 to double
  %124 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %4, double %tmp1529, float %123) nounwind
  %mrv_gr20.i111 = extractvalue %0 %124, 0
  %tmp1344 = bitcast double %mrv_gr20.i111 to i64
  %mrv_gr22.i = extractvalue %0 %124, 1
  %tmp1334 = lshr i64 %tmp1344, 32
  %tmp2312 = bitcast float %tmp1496 to i32
  %tmp2313 = zext i32 %tmp2312 to i64
  %tmp2306 = bitcast float %tmp1497 to i32
  %tmp2307 = zext i32 %tmp2306 to i64
  %tmp2308 = shl nuw i64 %tmp2307, 32
  %ins2310 = or i64 %tmp2313, %tmp2308
  store float %tmp1503, float* %78, align 8
  store float %tmp1505, float* %79, align 4
  store float %tmp1507, float* %80, align 8
  %tmp2298 = bitcast i64 %ins2310 to double
  %125 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp2298, float %tmp1498) nounwind
  %mrv_gr14.i.i = extractvalue %0 %125, 0
  %tmp2224 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %125, 1
  %tmp2211 = trunc i64 %tmp2224 to i32
  %tmp2212 = bitcast i32 %tmp2211 to float
  store float %tmp2212, float* %81, align 8
  %tmp2214 = lshr i64 %tmp2224, 32
  %tmp2215 = trunc i64 %tmp2214 to i32
  %tmp2216 = bitcast i32 %tmp2215 to float
  store float %tmp2216, float* %82, align 4
  store float %mrv_gr16.i.i, float* %83, align 8
  %tmp2336 = bitcast float %tmp1490 to i32
  %tmp2337 = zext i32 %tmp2336 to i64
  %tmp2330 = bitcast float %tmp1491 to i32
  %tmp2331 = zext i32 %tmp2330 to i64
  %tmp2332 = shl nuw i64 %tmp2331, 32
  %ins2334 = or i64 %tmp2337, %tmp2332
  store float %tmp1496, float* %84, align 8
  store float %tmp1497, float* %85, align 4
  store float %tmp1498, float* %86, align 8
  %tmp2322 = bitcast i64 %ins2334 to double
  %126 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %tmp2322, float %tmp1492) nounwind
  %mrv_gr36.i.i = extractvalue %0 %126, 0
  %mrv_gr38.i.i = extractvalue %0 %126, 1
  %127 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %127, 0
  %tmp2136 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %127, 1
  %tmp2123 = trunc i64 %tmp2136 to i32
  %tmp2124 = bitcast i32 %tmp2123 to float
  store float %tmp2124, float* %87, align 8
  %tmp2126 = lshr i64 %tmp2136, 32
  %tmp2127 = trunc i64 %tmp2126 to i32
  %tmp2128 = bitcast i32 %tmp2127 to float
  store float %tmp2128, float* %88, align 4
  store float %mrv_gr48.i.i, float* %89, align 8
  %128 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %128, 0
  %tmp2114 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %128, 1
  %tmp2104 = lshr i64 %tmp2114, 32
  %tmp1309 = trunc i64 %tmp2114 to i32
  %tmp1310 = bitcast i32 %tmp1309 to float
  %tmp1313 = trunc i64 %tmp2104 to i32
  %tmp1314 = bitcast i32 %tmp1313 to float
  store float %tmp1030, float* %90, align 8
  store float %tmp1031, float* %91, align 4
  store float %tmp1032, float* %92, align 8
  %129 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %3) nounwind
  %mrv_gr38.i = extractvalue %0 %129, 0
  %tmp1278 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %129, 1
  %tmp1268 = lshr i64 %tmp1278, 32
  %tmp2075 = trunc i64 %tmp1278 to i32
  %tmp2076 = bitcast i32 %tmp2075 to float
  %130 = fmul float %tmp2076, %tmp1310
  %131 = fadd float %130, 0.000000e+00
  %tmp2072 = trunc i64 %tmp1268 to i32
  %tmp2073 = bitcast i32 %tmp2072 to float
  %132 = fmul float %tmp2073, %tmp1314
  %133 = fadd float %132, %131
  %134 = fmul float %mrv_gr40.i, %mrv_gr54.i.i
  %135 = fadd float %134, %133
  %136 = fcmp ogt float %135, 0.000000e+00
  br i1 %136, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %bb
  %137 = fmul float %tmp1310, -1.000000e+00
  %138 = fmul float %tmp1314, -1.000000e+00
  %139 = fmul float %mrv_gr54.i.i, -1.000000e+00
  %tmp2062 = bitcast float %137 to i32
  %tmp2063 = zext i32 %tmp2062 to i96
  %tmp2056 = bitcast float %138 to i32
  %tmp2057 = zext i32 %tmp2056 to i96
  %tmp2058 = shl nuw nsw i96 %tmp2057, 32
  %ins2060 = or i96 %tmp2063, %tmp2058
  %tmp2050 = bitcast float %139 to i32
  %tmp1257 = zext i96 %ins2060 to i128
  %mask1258 = and i128 %memtmp46.i.1, -79228162514264337593543950336
  %tmp1251 = zext i32 %tmp2050 to i128
  %tmp1252 = shl nuw nsw i128 %tmp1251, 64
  %mask1253 = or i128 %mask1258, %tmp1257
  %ins1254 = or i128 %mask1253, %tmp1252
  %tmp1239 = lshr i128 %ins1254, 64
  %tmp1240 = trunc i128 %tmp1239 to i32
  %tmp1241 = bitcast i32 %tmp1240 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %bb
  %N.i.0.0 = phi float [ %137, %bb.i ], [ %tmp1310, %bb ]
  %N.i.1.0 = phi float [ %138, %bb.i ], [ %tmp1314, %bb ]
  %N.i.2.0 = phi float [ %tmp1241, %bb.i ], [ %mrv_gr54.i.i, %bb ]
  %memtmp46.i.0 = phi i128 [ %ins1254, %bb.i ], [ %memtmp46.i.1, %bb ]
  %140 = fmul float %tmp1478, 0x3FD99999A0000000
  store float %10, float* %93, align 8
  store float %11, float* %94, align 4
  store float %12, float* %95, align 8
  %141 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %mrv_gr20.i111, float %mrv_gr22.i) nounwind
  %mrv_gr71.i = extractvalue %0 %141, 0
  %tmp1190 = bitcast double %mrv_gr71.i to i64
  %mrv_gr73.i = extractvalue %0 %141, 1
  %tmp1177 = trunc i64 %tmp1190 to i32
  %tmp1178 = bitcast i32 %tmp1177 to float
  store float %tmp1178, float* %96, align 8
  %tmp1180 = lshr i64 %tmp1190, 32
  %tmp1181 = trunc i64 %tmp1180 to i32
  %tmp1182 = bitcast i32 %tmp1181 to float
  store float %tmp1182, float* %97, align 4
  store float %mrv_gr73.i, float* %98, align 8
  %142 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr77.i = extractvalue %0 %142, 0
  %tmp1168 = bitcast double %mrv_gr77.i to i64
  %mrv_gr79.i = extractvalue %0 %142, 1
  %tmp1158 = lshr i64 %tmp1168, 32
  %tmp1938 = trunc i64 %tmp1168 to i32
  %tmp1939 = bitcast i32 %tmp1938 to float
  %143 = fmul float %tmp1939, %N.i.0.0
  %144 = fadd float %143, 0.000000e+00
  %tmp1935 = trunc i64 %tmp1158 to i32
  %tmp1936 = bitcast i32 %tmp1935 to float
  %145 = fmul float %tmp1936, %N.i.1.0
  %146 = fadd float %145, %144
  %147 = fmul float %mrv_gr79.i, %N.i.2.0
  %148 = fadd float %147, %146
  %149 = fcmp ogt float %148, 0.000000e+00
  br i1 %149, label %bb93.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %tmp1891 = trunc i64 %tmp1158 to i32
  %tmp1894 = trunc i64 %tmp1168 to i32
  %tmp1913 = trunc i64 %tmp1334 to i32
  %tmp1916 = trunc i64 %tmp1344 to i32
  %tmp1892 = bitcast i32 %tmp1891 to float
  %tmp1895 = bitcast i32 %tmp1894 to float
  %tmp1914 = bitcast i32 %tmp1913 to float
  %tmp1917 = bitcast i32 %tmp1916 to float
  %150 = load float* %96, align 8
  %151 = fmul float %150, %150
  %152 = load float* %97, align 4
  %153 = fmul float %152, %152
  %154 = fadd float %151, %153
  %155 = load float* %98, align 8
  %156 = fmul float %155, %155
  %157 = fadd float %154, %156
  %158 = call float @llvm.trax.invsqrt(float %157) nounwind
  %159 = fdiv float 1.000000e+00, %158
  store float %tmp1917, float* %ray_to_light_source40.i1519.0, align 8
  store float %tmp1914, float* %ray_to_light_source40.i1519.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source40.i1519.2, align 8
  store float %tmp1895, float* %ray_to_light_source40.i.1.0, align 4
  store float %tmp1892, float* %ray_to_light_source40.i.1.1, align 4
  store float %mrv_gr79.i, float* %ray_to_light_source40.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record69, %struct.Box* %ray_to_light_source40.i) nounwind
  %160 = load float* %74, align 8
  %161 = fcmp uge float %160, %159
  %162 = fcmp ule float %160, 0x3F847AE140000000
  %or.cond = or i1 %161, %162
  br i1 %or.cond, label %bb96.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb96.i:                                           ; preds = %bb93.i
  %163 = fmul float %tmp1479, %148
  %tmp1835 = bitcast float %163 to i32
  %tmp1836 = zext i32 %tmp1835 to i96
  %tmp1829 = bitcast float %163 to i32
  %tmp1830 = zext i32 %tmp1829 to i96
  %tmp1831 = shl nuw nsw i96 %tmp1830, 32
  %ins1833 = or i96 %tmp1836, %tmp1831
  %tmp1823 = bitcast float %163 to i32
  %tmp1125 = zext i96 %ins1833 to i128
  %mask1126 = and i128 %memtmp103.i.1, -79228162514264337593543950336
  %tmp1119 = zext i32 %tmp1823 to i128
  %tmp1120 = shl nuw nsw i128 %tmp1119, 64
  %mask1121 = or i128 %mask1126, %tmp1125
  %ins1122 = or i128 %mask1121, %tmp1120
  %ins1122.tr = trunc i128 %ins1122 to i96
  %164 = fadd float %163, %140
  %165 = fadd float %163, %140
  %tmp1795 = lshr i96 %ins1122.tr, 64
  %tmp1796 = trunc i96 %tmp1795 to i32
  %tmp1797 = bitcast i32 %tmp1796 to float
  %166 = fadd float %tmp1797, %140
  %tmp1790 = bitcast float %164 to i32
  %tmp1791 = zext i32 %tmp1790 to i96
  %tmp1784 = bitcast float %165 to i32
  %tmp1785 = zext i32 %tmp1784 to i96
  %tmp1786 = shl nuw nsw i96 %tmp1785, 32
  %ins1788 = or i96 %tmp1791, %tmp1786
  %tmp1778 = bitcast float %166 to i32
  %tmp1103 = zext i96 %ins1788 to i128
  %mask1104 = and i128 %memtmp113.i.1, -79228162514264337593543950336
  %tmp1097 = zext i32 %tmp1778 to i128
  %tmp1098 = shl nuw nsw i128 %tmp1097, 64
  %mask1099 = or i128 %mask1104, %tmp1103
  %ins1100 = or i128 %mask1099, %tmp1098
  %tmp1085 = lshr i128 %ins1100, 64
  %tmp1086 = trunc i128 %tmp1085 to i32
  %tmp1087 = bitcast i32 %tmp1086 to float
  br label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb96.i, %bb93.i, %bb52.i
  %light.i.0.0 = phi float [ %164, %bb96.i ], [ %140, %bb52.i ], [ %140, %bb93.i ]
  %light.i.1.0 = phi float [ %165, %bb96.i ], [ %140, %bb52.i ], [ %140, %bb93.i ]
  %light.i.2.0 = phi float [ %tmp1087, %bb96.i ], [ %140, %bb52.i ], [ %140, %bb93.i ]
  %memtmp113.i.0 = phi i128 [ %ins1100, %bb96.i ], [ %memtmp113.i.1, %bb52.i ], [ %memtmp113.i.1, %bb93.i ]
  %memtmp103.i.0 = phi i128 [ %ins1122, %bb96.i ], [ %memtmp103.i.1, %bb52.i ], [ %memtmp103.i.1, %bb93.i ]
  %tmp1767 = bitcast float %tmp1487 to i32
  %tmp1768 = zext i32 %tmp1767 to i96
  %tmp1761 = bitcast float %tmp1488 to i32
  %tmp1762 = zext i32 %tmp1761 to i96
  %tmp1763 = shl nuw nsw i96 %tmp1762, 32
  %ins1765 = or i96 %tmp1768, %tmp1763
  %tmp1755 = bitcast float %tmp1489 to i32
  %tmp1722 = zext i96 %ins1765 to i128
  %mask1723 = and i128 %memtmp.i.i.0, -79228162514264337593543950336
  %tmp1716 = zext i32 %tmp1755 to i128
  %tmp1717 = shl nuw nsw i128 %tmp1716, 64
  %mask1718 = or i128 %mask1723, %tmp1722
  %ins1719 = or i128 %mask1718, %tmp1717
  %tmp1744 = bitcast float %tmp1487 to i32
  %tmp1745 = zext i32 %tmp1744 to i96
  %tmp1738 = bitcast float %tmp1488 to i32
  %tmp1739 = zext i32 %tmp1738 to i96
  %tmp1740 = shl nuw nsw i96 %tmp1739, 32
  %ins1742 = or i96 %tmp1745, %tmp1740
  %tmp1081 = zext i96 %ins1742 to i128
  %mask1082 = and i128 %memtmp120.i.0, -79228162514264337593543950336
  %tmp1076 = and i128 %ins1719, 79228162495817593519834398720
  %mask1077 = or i128 %mask1082, %tmp1081
  %ins1078 = or i128 %mask1077, %tmp1076
  %ins1078.tr = trunc i128 %ins1078 to i96
  %167 = fmul float %tmp1487, %light.i.0.0
  %168 = fmul float %tmp1488, %light.i.1.0
  %tmp1682 = lshr i96 %ins1078.tr, 64
  %tmp1683 = trunc i96 %tmp1682 to i32
  %tmp1684 = bitcast i32 %tmp1683 to float
  %169 = fmul float %tmp1684, %light.i.2.0
  %tmp1677 = bitcast float %167 to i32
  %tmp1678 = zext i32 %tmp1677 to i96
  %tmp1671 = bitcast float %168 to i32
  %tmp1672 = zext i32 %tmp1671 to i96
  %tmp1673 = shl nuw nsw i96 %tmp1672, 32
  %ins1675 = or i96 %tmp1678, %tmp1673
  %tmp1665 = bitcast float %169 to i32
  %tmp1059 = zext i96 %ins1675 to i128
  %mask1060 = and i128 %memtmp130.i.0, -79228162514264337593543950336
  %tmp1053 = zext i32 %tmp1665 to i128
  %tmp1054 = shl nuw nsw i128 %tmp1053, 64
  %mask1055 = or i128 %mask1060, %tmp1059
  %ins1056 = or i128 %mask1055, %tmp1054
  %tmp1632 = bitcast float %167 to i32
  %tmp1633 = zext i32 %tmp1632 to i96
  %tmp1626 = bitcast float %168 to i32
  %tmp1627 = zext i32 %tmp1626 to i96
  %tmp1628 = shl nuw nsw i96 %tmp1627, 32
  %ins1630 = or i96 %tmp1633, %tmp1628
  %tmp140 = zext i96 %ins1630 to i128
  %mask141 = and i128 %memtmp.0, -79228162514264337593543950336
  %tmp137 = and i128 %ins1056, 79228162495817593519834398720
  %mask = or i128 %mask141, %tmp140
  %ins = or i128 %mask, %tmp137
  %ins.tr = trunc i128 %ins to i96
  %170 = mul nsw i32 %6, %99
  %171 = add nsw i32 %170, %100
  %172 = mul nsw i32 %171, 3
  %173 = add nsw i32 %8, %172
  call void @llvm.trax.storef(float %167, i32 %173, i32 0) nounwind
  call void @llvm.trax.storef(float %168, i32 %173, i32 1) nounwind
  %tmp365 = lshr i96 %ins.tr, 64
  %tmp366 = trunc i96 %tmp365 to i32
  %tmp367 = bitcast i32 %tmp366 to float
  call void @llvm.trax.storef(float %tmp367, i32 %173, i32 2) nounwind
  %174 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb10

bb10:                                             ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit, %entry
  %memtmp.0 = phi i128 [ undef, %entry ], [ %ins, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp130.i.0 = phi i128 [ undef, %entry ], [ %ins1056, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp120.i.0 = phi i128 [ undef, %entry ], [ %ins1078, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp113.i.1 = phi i128 [ undef, %entry ], [ %memtmp113.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp103.i.1 = phi i128 [ undef, %entry ], [ %memtmp103.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp46.i.1 = phi i128 [ undef, %entry ], [ %memtmp46.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %memtmp.i.i.0 = phi i128 [ undef, %entry ], [ %ins1719, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %storemerge = phi i32 [ %42, %entry ], [ %174, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ]
  %175 = icmp sgt i32 %43, %storemerge
  br i1 %175, label %bb, label %return

return:                                           ; preds = %bb10
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

define internal fastcc %0 @_ZN6Vector5crossES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %1 = load float* %0, align 4
  %2 = fmul float %1, %other.1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %4 = load float* %3, align 4
  %tmp47 = lshr i64 %tmp28, 32
  %tmp48 = trunc i64 %tmp47 to i32
  %tmp49 = bitcast i32 %tmp48 to float
  %5 = fmul float %4, %tmp49
  %6 = fsub float %2, %5
  %tmp44 = trunc i64 %tmp28 to i32
  %tmp45 = bitcast i32 %tmp44 to float
  %7 = fmul float %4, %tmp45
  %8 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %9, %other.1
  %11 = fsub float %7, %10
  %12 = fmul float %9, %tmp49
  %13 = fmul float %1, %tmp45
  %14 = fsub float %12, %13
  %tmp17 = bitcast float %6 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %11 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3addES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fadd float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fadd float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3subES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fsub float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fsub float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fsub float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* nocapture %this) nounwind ssp align 2 {
return:
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %1, %1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %4, %4
  %6 = fadd float %2, %5
  %7 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %8 = load float* %7, align 4
  %9 = fmul float %8, %8
  %10 = fadd float %6, %9
  %11 = call float @llvm.trax.invsqrt(float %10) nounwind
  %12 = fdiv float 1.000000e+00, %11
  %13 = load float* %7, align 4
  %14 = fdiv float %13, %12
  %15 = load float* %3, align 4
  %16 = fdiv float %15, %12
  %17 = load float* %0, align 4
  %18 = fdiv float %17, %12
  %tmp18 = bitcast float %18 to i32
  %tmp19 = zext i32 %tmp18 to i64
  %tmp12 = bitcast float %16 to i32
  %tmp13 = zext i32 %tmp12 to i64
  %tmp14 = shl nuw i64 %tmp13, 32
  %ins16 = or i64 %tmp19, %tmp14
  %tmp7 = bitcast i64 %ins16 to double
  %mrv4 = insertvalue %0 undef, double %tmp7, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
