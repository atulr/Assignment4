; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define i32 @main() nounwind ssp {
entry:
  %stack.i = alloca [32 x i32], align 4
  %0 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %1 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %2 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %3 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %4 = call float @llvm.trax.loadf(i32 %3, i32 0) nounwind
  %5 = call float @llvm.trax.loadf(i32 %3, i32 1) nounwind
  %6 = call float @llvm.trax.loadf(i32 %3, i32 2) nounwind
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %8 = call float @llvm.trax.loadf(i32 %7, i32 0) nounwind
  %9 = call float @llvm.trax.loadf(i32 %7, i32 1) nounwind
  %10 = call float @llvm.trax.loadf(i32 %7, i32 2) nounwind
  %11 = add nsw i32 %7, 9
  %12 = call float @llvm.trax.loadf(i32 %11, i32 0) nounwind
  %13 = call float @llvm.trax.loadf(i32 %11, i32 1) nounwind
  %14 = call float @llvm.trax.loadf(i32 %11, i32 2) nounwind
  %15 = add nsw i32 %7, 12
  %16 = call float @llvm.trax.loadf(i32 %15, i32 0) nounwind
  %17 = call float @llvm.trax.loadf(i32 %15, i32 1) nounwind
  %18 = call float @llvm.trax.loadf(i32 %15, i32 2) nounwind
  %19 = add nsw i32 %7, 15
  %20 = call float @llvm.trax.loadf(i32 %19, i32 0) nounwind
  %21 = call float @llvm.trax.loadf(i32 %19, i32 1) nounwind
  %22 = call float @llvm.trax.loadf(i32 %19, i32 2) nounwind
  %23 = add nsw i32 %7, 18
  %24 = call float @llvm.trax.loadf(i32 %23, i32 0) nounwind
  %25 = call float @llvm.trax.loadf(i32 %23, i32 1) nounwind
  %26 = call float @llvm.trax.loadf(i32 %23, i32 2) nounwind
  %27 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %28 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %29 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %30 = call i32 @llvm.trax.atominc(i32 0)
  %31 = mul nsw i32 %1, %0
  %32 = sitofp i32 %0 to float
  %33 = fdiv float %32, -2.000000e+00
  %34 = sitofp i32 %1 to float
  %35 = fdiv float %34, -2.000000e+00
  %36 = icmp sgt i32 %31, %30
  br i1 %36, label %bb, label %return

bb:                                               ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit, %entry
  %storemerge557 = phi i32 [ %475, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %30, %entry ]
  %memtmp103.i.1554 = phi i128 [ %memtmp103.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ undef, %entry ]
  %memtmp113.i.1553 = phi i128 [ %memtmp113.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ undef, %entry ]
  %memtmp.0550 = phi i128 [ %ins, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ undef, %entry ]
  %mask283502549 = phi i512 [ %mask283503, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ undef, %entry ]
  %37 = sdiv i32 %storemerge557, %0
  %38 = srem i32 %storemerge557, %0
  %39 = sitofp i32 %38 to float
  %40 = fadd float %39, %33
  %41 = fadd float %40, 5.000000e-01
  %42 = fmul float %41, 2.000000e+00
  %43 = fdiv float %42, %32
  %44 = sitofp i32 %37 to float
  %45 = fadd float %44, %35
  %46 = fadd float %45, 5.000000e-01
  %47 = fmul float %46, 2.000000e+00
  %48 = fdiv float %47, %34
  %49 = fmul float %24, %48
  %50 = fmul float %25, %48
  %51 = fmul float %26, %48
  %52 = fmul float %20, %43
  %53 = fmul float %21, %43
  %54 = fmul float %22, %43
  %55 = fadd float %49, %52
  %56 = fadd float %50, %53
  %57 = fadd float %54, %51
  %58 = fadd float %55, %16
  %59 = fadd float %56, %17
  %60 = fadd float %18, %57
  %61 = fmul float %58, %58
  %62 = fmul float %59, %59
  %63 = fadd float %61, %62
  %64 = fmul float %60, %60
  %65 = fadd float %63, %64
  %66 = call float @llvm.trax.invsqrt(float %65) nounwind
  %67 = fdiv float 1.000000e+00, %66
  %68 = fdiv float %60, %67
  %69 = fdiv float %59, %67
  %70 = fdiv float %58, %67
  %mask258 = and i512 %mask283502549, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins259 = or i512 %mask258, 1343554297
  br label %bb.outer.i46

bb.outer.i46:                                     ; preds = %bb9.i146, %bb
  %mask283504 = phi i512 [ %ins259, %bb ], [ %mask283503, %bb9.i146 ]
  %node_id.0.ph.i41 = phi i32 [ 0, %bb ], [ %228, %bb9.i146 ]
  %sp.0.ph.i42 = phi i32 [ -1, %bb ], [ %229, %bb9.i146 ]
  %tmp404.i44 = add i32 %sp.0.ph.i42, 1
  %tmp576 = sext i32 %tmp404.i44 to i64
  %tmp578 = zext i32 %sp.0.ph.i42 to i64
  br label %bb.i58

bb.i58:                                           ; preds = %bb3.i74, %bb.outer.i46
  %indvar.i47 = phi i64 [ %indvar.next.i73, %bb3.i74 ], [ 0, %bb.outer.i46 ]
  %node_id.0.i48 = phi i32 [ %106, %bb3.i74 ], [ %node_id.0.ph.i41, %bb.outer.i46 ]
  %tmp577 = add i64 %tmp576, %indvar.i47
  %scevgep.i52 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp577
  %tmp579 = add i64 %tmp578, %indvar.i47
  %sp.0.i50 = trunc i64 %tmp579 to i32
  %71 = shl nsw i32 %node_id.0.i48, 3
  %72 = add nsw i32 %71, %29
  %73 = call float @llvm.trax.loadf(i32 %72, i32 2) nounwind
  %74 = call float @llvm.trax.loadf(i32 %72, i32 1) nounwind
  %75 = call float @llvm.trax.loadf(i32 %72, i32 0) nounwind
  %76 = call float @llvm.trax.loadf(i32 %72, i32 5) nounwind
  %77 = call float @llvm.trax.loadf(i32 %72, i32 4) nounwind
  %78 = call float @llvm.trax.loadf(i32 %72, i32 3) nounwind
  %79 = fsub float %75, %8
  %80 = fdiv float %79, %70
  %81 = fsub float %78, %8
  %82 = fdiv float %81, %70
  %83 = fcmp ogt float %80, %82
  %tx1.i.0.i53 = select i1 %83, float %82, float %80
  %tx2.i.0.i54 = select i1 %83, float %80, float %82
  %84 = fcmp ogt float %tx1.i.0.i53, -1.000000e+10
  %tnear.i.0.i55 = select i1 %84, float %tx1.i.0.i53, float -1.000000e+10
  %85 = fcmp olt float %tx2.i.0.i54, 1.000000e+10
  %tfar.i.0.i56 = select i1 %85, float %tx2.i.0.i54, float 1.000000e+10
  %86 = fcmp ogt float %tnear.i.0.i55, %tfar.i.0.i56
  %87 = fcmp olt float %tfar.i.0.i56, 0.000000e+00
  %or.cond.i57 = or i1 %86, %87
  br i1 %or.cond.i57, label %bb7.i145, label %bb29.i.i64

bb29.i.i64:                                       ; preds = %bb.i58
  %88 = fsub float %74, %9
  %89 = fdiv float %88, %69
  %90 = fsub float %77, %9
  %91 = fdiv float %90, %69
  %92 = fcmp ogt float %89, %91
  %ty1.i.0.i59 = select i1 %92, float %91, float %89
  %ty2.i.0.i60 = select i1 %92, float %89, float %91
  %93 = fcmp ogt float %ty1.i.0.i59, %tnear.i.0.i55
  %tnear.i.1.i61 = select i1 %93, float %ty1.i.0.i59, float %tnear.i.0.i55
  %94 = fcmp olt float %ty2.i.0.i60, %tfar.i.0.i56
  %tfar.i.1.i62 = select i1 %94, float %ty2.i.0.i60, float %tfar.i.0.i56
  %95 = fcmp ogt float %tnear.i.1.i61, %tfar.i.1.i62
  %96 = fcmp olt float %tfar.i.1.i62, 0.000000e+00
  %or.cond1395.i63 = or i1 %95, %96
  br i1 %or.cond1395.i63, label %bb7.i145, label %bb62.i.i70

bb62.i.i70:                                       ; preds = %bb29.i.i64
  %97 = fsub float %73, %10
  %98 = fdiv float %97, %68
  %99 = fsub float %76, %10
  %100 = fdiv float %99, %68
  %101 = fcmp ogt float %98, %100
  %tz1.i.0.i65 = select i1 %101, float %100, float %98
  %tz2.i.0.i66 = select i1 %101, float %98, float %100
  %102 = fcmp ogt float %tz1.i.0.i65, %tnear.i.1.i61
  %tnear.i.2.i67 = select i1 %102, float %tz1.i.0.i65, float %tnear.i.1.i61
  %103 = fcmp olt float %tz2.i.0.i66, %tfar.i.1.i62
  %tfar.i.2.i68 = select i1 %103, float %tz2.i.0.i66, float %tfar.i.1.i62
  %104 = fcmp ogt float %tnear.i.2.i67, %tfar.i.2.i68
  %105 = fcmp olt float %tfar.i.2.i68, 0.000000e+00
  %or.cond1396.i69 = or i1 %104, %105
  br i1 %or.cond1396.i69, label %bb7.i145, label %bb1.i71

bb1.i71:                                          ; preds = %bb62.i.i70
  %106 = call i32 @llvm.trax.loadi(i32 %72, i32 7) nounwind
  %107 = call i32 @llvm.trax.loadi(i32 %72, i32 6) nounwind
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %bb3.i74, label %bb6.preheader.i72

bb6.preheader.i72:                                ; preds = %bb1.i71
  %109 = icmp sgt i32 %107, 0
  br i1 %109, label %bb5.i85, label %bb7.i145

bb3.i74:                                          ; preds = %bb1.i71
  %110 = add nsw i32 %106, 1
  store i32 %110, i32* %scevgep.i52, align 4
  %indvar.next.i73 = add i64 %indvar.i47, 1
  br label %bb.i58

bb5.i85:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144, %bb6.preheader.i72
  %mask283501 = phi i512 [ %mask283500, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144 ], [ %mask283504, %bb6.preheader.i72 ]
  %storemerge388.i75 = phi i32 [ %224, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144 ], [ 0, %bb6.preheader.i72 ]
  %tmp570 = mul i32 %storemerge388.i75, 11
  %tmp396.i77 = add i32 %106, %tmp570
  %111 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 2) nounwind
  %112 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 1) nounwind
  %113 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 0) nounwind
  %114 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 5) nounwind
  %115 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 4) nounwind
  %116 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 3) nounwind
  %117 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 8) nounwind
  %118 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 7) nounwind
  %119 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 6) nounwind
  %120 = call i32 @llvm.trax.loadi(i32 %tmp396.i77, i32 10) nounwind
  %121 = call i32 @llvm.trax.loadi(i32 %tmp396.i77, i32 9) nounwind
  %122 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %123 = mul nsw i32 %120, 25
  %124 = add nsw i32 %122, %123
  %125 = call float @llvm.trax.loadf(i32 %124, i32 6) nounwind
  %126 = call float @llvm.trax.loadf(i32 %124, i32 5) nounwind
  %127 = call float @llvm.trax.loadf(i32 %124, i32 4) nounwind
  %128 = fsub float %113, %119
  %129 = fsub float %112, %118
  %130 = fsub float %111, %117
  %131 = fsub float %116, %119
  %132 = fsub float %115, %118
  %133 = fsub float %114, %117
  %134 = fmul float %129, %133
  %135 = fmul float %132, %130
  %136 = fsub float %134, %135
  %137 = fmul float %131, %130
  %138 = fmul float %128, %133
  %139 = fsub float %137, %138
  %140 = fmul float %132, %128
  %141 = fmul float %131, %129
  %142 = fsub float %140, %141
  %143 = fmul float %136, %136
  %144 = fmul float %139, %139
  %145 = fadd float %143, %144
  %146 = fmul float %142, %142
  %147 = fadd float %145, %146
  %148 = call float @llvm.trax.invsqrt(float %147) nounwind
  %149 = fmul float %69, %133
  %150 = fmul float %132, %68
  %151 = fsub float %149, %150
  %152 = fmul float %131, %68
  %153 = fmul float %70, %133
  %154 = fsub float %152, %153
  %155 = fmul float %132, %70
  %156 = fmul float %131, %69
  %157 = fsub float %155, %156
  %158 = fmul float %151, %128
  %159 = fadd float %158, 0.000000e+00
  %160 = fmul float %154, %129
  %161 = fadd float %160, %159
  %162 = fmul float %157, %130
  %163 = fadd float %162, %161
  %164 = fdiv float 1.000000e+00, %163
  %165 = fsub float %8, %119
  %166 = fsub float %9, %118
  %167 = fsub float %10, %117
  %168 = fmul float %151, %165
  %169 = fadd float %168, 0.000000e+00
  %170 = fmul float %154, %166
  %171 = fadd float %170, %169
  %172 = fmul float %157, %167
  %173 = fadd float %172, %171
  %174 = fmul float %173, %164
  %175 = fcmp olt float %174, 0.000000e+00
  %176 = fcmp ogt float %174, 1.000000e+00
  %or.cond1397.i84 = or i1 %175, %176
  br i1 %or.cond1397.i84, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144, label %bb73.i.i86

bb73.i.i86:                                       ; preds = %bb5.i85
  %177 = fmul float %166, %130
  %178 = fmul float %129, %167
  %179 = fsub float %177, %178
  %180 = fmul float %128, %167
  %181 = fmul float %165, %130
  %182 = fsub float %180, %181
  %183 = fmul float %129, %165
  %184 = fmul float %128, %166
  %185 = fsub float %183, %184
  %186 = fmul float %179, %70
  %187 = fadd float %186, 0.000000e+00
  %188 = fmul float %182, %69
  %189 = fadd float %188, %187
  %190 = fmul float %185, %68
  %191 = fadd float %190, %189
  %192 = fmul float %191, %164
  %193 = fcmp olt float %192, 0.000000e+00
  br i1 %193, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144, label %bb94.i55.i87

bb94.i55.i87:                                     ; preds = %bb73.i.i86
  %194 = fadd float %192, %174
  %195 = fcmp ogt float %194, 1.000000e+00
  br i1 %195, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144, label %bb96.i.i90

bb96.i.i90:                                       ; preds = %bb94.i55.i87
  %196 = fmul float %179, %131
  %197 = fadd float %196, 0.000000e+00
  %198 = fmul float %182, %132
  %199 = fadd float %198, %197
  %200 = fmul float %185, %133
  %201 = fadd float %200, %199
  %202 = fmul float %201, %164
  %203 = fcmp ule float %202, 0.000000e+00
  %204 = fcmp olt float %202, 0x3F50624DE0000000
  %or.cond1398.i88 = or i1 %203, %204
  %205 = fcmp oeq float %202, 1.000000e+10
  %or.cond1399.i89 = or i1 %or.cond1398.i88, %205
  br i1 %or.cond1399.i89, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144, label %bb2.i.i.i91

bb2.i.i.i91:                                      ; preds = %bb96.i.i90
  %tmp255 = trunc i512 %mask283501 to i32
  %tmp256 = bitcast i32 %tmp255 to float
  %206 = fcmp ogt float %tmp256, %202
  br i1 %206, label %bb3.i.i.i142, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144

bb3.i.i.i142:                                     ; preds = %bb2.i.i.i91
  %tmp250 = bitcast float %202 to i32
  %tmp251 = zext i32 %tmp250 to i512
  %207 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 2) nounwind
  %208 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 1) nounwind
  %209 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 0) nounwind
  %210 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 5) nounwind
  %211 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 4) nounwind
  %212 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 3) nounwind
  %213 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 8) nounwind
  %214 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 7) nounwind
  %215 = call float @llvm.trax.loadf(i32 %tmp396.i77, i32 6) nounwind
  %216 = call i32 @llvm.trax.loadi(i32 %tmp396.i77, i32 10) nounwind
  %217 = call i32 @llvm.trax.loadi(i32 %tmp396.i77, i32 9) nounwind
  %tmp369.i92 = bitcast float %209 to i32
  %tmp370.i93 = zext i32 %tmp369.i92 to i480
  %tmp301.i94 = bitcast float %208 to i32
  %tmp302.i95 = zext i32 %tmp301.i94 to i480
  %tmp303.i96 = shl nuw nsw i480 %tmp302.i95, 32
  %tmp295.i97 = bitcast float %207 to i32
  %tmp296.i98 = zext i32 %tmp295.i97 to i480
  %tmp297.i99 = shl nuw nsw i480 %tmp296.i98, 64
  %tmp363.i100 = bitcast float %212 to i32
  %tmp364.i101 = zext i32 %tmp363.i100 to i480
  %tmp365.i102 = shl nuw nsw i480 %tmp364.i101, 96
  %tmp357.i103 = bitcast float %211 to i32
  %tmp358.i104 = zext i32 %tmp357.i103 to i480
  %tmp359.i105 = shl nuw nsw i480 %tmp358.i104, 128
  %tmp351.i106 = bitcast float %210 to i32
  %tmp352.i107 = zext i32 %tmp351.i106 to i480
  %tmp353.i108 = shl nuw nsw i480 %tmp352.i107, 160
  %tmp345.i109 = bitcast float %215 to i32
  %tmp346.i110 = zext i32 %tmp345.i109 to i480
  %tmp347.i111 = shl nuw nsw i480 %tmp346.i110, 192
  %tmp339.i112 = bitcast float %214 to i32
  %tmp340.i113 = zext i32 %tmp339.i112 to i480
  %tmp341.i114 = shl nuw nsw i480 %tmp340.i113, 224
  %tmp333.i115 = bitcast float %213 to i32
  %tmp334.i116 = zext i32 %tmp333.i115 to i480
  %tmp335.i117 = shl nuw nsw i480 %tmp334.i116, 256
  %tmp290.i118 = zext i32 %217 to i480
  %tmp291.i119 = shl nuw nsw i480 %tmp290.i118, 288
  %218 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %219 = mul nsw i32 %216, 25
  %220 = add nsw i32 %218, %219
  %221 = call float @llvm.trax.loadf(i32 %220, i32 6) nounwind
  %222 = call float @llvm.trax.loadf(i32 %220, i32 5) nounwind
  %223 = call float @llvm.trax.loadf(i32 %220, i32 4) nounwind
  %tmp325.i120 = bitcast float %223 to i32
  %tmp326.i121 = zext i32 %tmp325.i120 to i480
  %tmp327.i122 = shl nuw nsw i480 %tmp326.i121, 320
  %tmp317.i123 = bitcast float %222 to i32
  %tmp318.i124 = zext i32 %tmp317.i123 to i480
  %tmp319.i125 = shl nuw nsw i480 %tmp318.i124, 352
  %tmp309.i126 = bitcast float %221 to i32
  %tmp310.i127 = zext i32 %tmp309.i126 to i480
  %tmp311.i128 = shl nuw nsw i480 %tmp310.i127, 384
  %mask298.i129 = or i480 %tmp297.i99, %tmp370.i93
  %mask366.i130 = or i480 %mask298.i129, %tmp303.i96
  %mask360.masked.masked.masked.masked.masked.i131 = or i480 %mask366.i130, %tmp353.i108
  %mask354.masked.masked.masked.masked.masked.masked.i132 = or i480 %mask360.masked.masked.masked.masked.masked.i131, %tmp359.i105
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i133 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i132, %tmp365.i102
  %mask342.masked.masked.masked.masked.masked.masked.masked.i134 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i133, %tmp335.i117
  %mask336.masked.masked.masked.masked.masked.masked.i135 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i134, %tmp341.i114
  %mask292.masked.masked.masked.masked.masked.i136 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i135, %tmp347.i111
  %mask328.masked.masked.masked.masked.i137 = or i480 %mask292.masked.masked.masked.masked.masked.i136, %tmp291.i119
  %mask320.masked.masked.masked.i138 = or i480 %mask328.masked.masked.masked.masked.i137, %tmp311.i128
  %mask312.masked.masked.i139 = or i480 %mask320.masked.masked.masked.i138, %tmp319.i125
  %ins288.i140 = or i480 %mask312.masked.masked.i139, %tmp327.i122
  %ins285.i141 = or i480 %ins288.i140, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp245 = zext i480 %ins285.i141 to i512
  %tmp246 = shl nuw i512 %tmp245, 32
  %ins248 = or i512 %tmp246, %tmp251
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144: ; preds = %bb3.i.i.i142, %bb2.i.i.i91, %bb96.i.i90, %bb94.i55.i87, %bb73.i.i86, %bb5.i85
  %mask283500 = phi i512 [ %ins248, %bb3.i.i.i142 ], [ %mask283501, %bb2.i.i.i91 ], [ %mask283501, %bb96.i.i90 ], [ %mask283501, %bb94.i55.i87 ], [ %mask283501, %bb73.i.i86 ], [ %mask283501, %bb5.i85 ]
  %224 = add nsw i32 %storemerge388.i75, 1
  %exitcond569 = icmp eq i32 %224, %107
  br i1 %exitcond569, label %bb7.i145, label %bb5.i85

bb7.i145:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144, %bb6.preheader.i72, %bb62.i.i70, %bb29.i.i64, %bb.i58
  %mask283503 = phi i512 [ %mask283504, %bb6.preheader.i72 ], [ %mask283500, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i144 ], [ %mask283504, %bb.i58 ], [ %mask283504, %bb29.i.i64 ], [ %mask283504, %bb62.i.i70 ]
  %225 = icmp slt i32 %sp.0.i50, 0
  br i1 %225, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit147, label %bb9.i146

bb9.i146:                                         ; preds = %bb7.i145
  %226 = sext i32 %sp.0.i50 to i64
  %227 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %226
  %228 = load i32* %227, align 4
  %229 = add nsw i32 %sp.0.i50, -1
  br label %bb.outer.i46

_ZN3BVH9intersectER9HitRecordR3Ray.exit147:       ; preds = %bb7.i145
  %tmp471 = lshr i512 %mask283503, 32
  %tmp472 = trunc i512 %tmp471 to i32
  %tmp473 = bitcast i32 %tmp472 to float
  %tmp467 = lshr i512 %mask283503, 64
  %tmp468 = trunc i512 %tmp467 to i32
  %tmp469 = bitcast i32 %tmp468 to float
  %tmp463 = lshr i512 %mask283503, 96
  %tmp464 = trunc i512 %tmp463 to i32
  %tmp465 = bitcast i32 %tmp464 to float
  %tmp459 = lshr i512 %mask283503, 128
  %tmp460 = trunc i512 %tmp459 to i32
  %tmp461 = bitcast i32 %tmp460 to float
  %tmp455 = lshr i512 %mask283503, 160
  %tmp456 = trunc i512 %tmp455 to i32
  %tmp457 = bitcast i32 %tmp456 to float
  %tmp451 = lshr i512 %mask283503, 192
  %tmp452 = trunc i512 %tmp451 to i32
  %tmp453 = bitcast i32 %tmp452 to float
  %tmp447 = lshr i512 %mask283503, 224
  %tmp439 = lshr i512 %mask283503, 288
  %tmp440 = trunc i512 %tmp439 to i32
  %tmp441 = bitcast i32 %tmp440 to float
  %tmp435 = lshr i512 %mask283503, 352
  %tmp436 = trunc i512 %tmp435 to i32
  %tmp437 = bitcast i32 %tmp436 to float
  %tmp431 = lshr i512 %mask283503, 384
  %tmp432 = trunc i512 %tmp431 to i32
  %tmp433 = bitcast i32 %tmp432 to float
  %tmp423 = lshr i512 %mask283503, 448
  %tmp424 = trunc i512 %tmp423 to i32
  %tmp425 = bitcast i32 %tmp424 to float
  %tmp419 = lshr i512 %mask283503, 480
  %tmp420 = trunc i512 %tmp419 to i32
  %tmp421 = bitcast i32 %tmp420 to float
  %tmp416 = trunc i512 %mask283503 to i32
  %tmp417 = bitcast i32 %tmp416 to float
  %230 = fmul float %70, %tmp417
  %231 = fmul float %69, %tmp417
  %232 = fmul float %68, %tmp417
  %233 = fadd float %230, %8
  %234 = fadd float %231, %9
  %235 = fadd float %10, %232
  %236 = fsub float %tmp473, %tmp461
  %237 = fsub float %tmp469, %tmp457
  %238 = fsub float %tmp465, %tmp453
  %tmp41.i179 = trunc i512 %tmp447 to i32
  %tmp42.i180 = bitcast i32 %tmp41.i179 to float
  %239 = fsub float %tmp461, %tmp42.i180
  %tmp37.i181517 = lshr i512 %mask283503, 256
  %tmp38.i182 = trunc i512 %tmp37.i181517 to i32
  %tmp39.i183 = bitcast i32 %tmp38.i182 to float
  %240 = fsub float %tmp457, %tmp39.i183
  %241 = fsub float %tmp453, %tmp441
  %242 = fmul float %237, %241
  %243 = fmul float %240, %238
  %244 = fsub float %242, %243
  %245 = fmul float %239, %238
  %246 = fmul float %236, %241
  %247 = fsub float %245, %246
  %248 = fmul float %240, %236
  %249 = fmul float %239, %237
  %250 = fsub float %248, %249
  %251 = fmul float %244, %244
  %252 = fmul float %247, %247
  %253 = fadd float %251, %252
  %254 = fmul float %250, %250
  %255 = fadd float %253, %254
  %256 = call float @llvm.trax.invsqrt(float %255) nounwind
  %257 = fdiv float 1.000000e+00, %256
  %258 = fdiv float %250, %257
  %259 = fdiv float %247, %257
  %260 = fdiv float %244, %257
  %261 = fmul float %70, %70
  %262 = fmul float %69, %69
  %263 = fadd float %261, %262
  %264 = fmul float %68, %68
  %265 = fadd float %263, %264
  %266 = call float @llvm.trax.invsqrt(float %265) nounwind
  %267 = fdiv float 1.000000e+00, %266
  %268 = fdiv float %68, %267
  %269 = fdiv float %69, %267
  %270 = fdiv float %70, %267
  %271 = fmul float %270, %260
  %272 = fadd float %271, 0.000000e+00
  %273 = fmul float %269, %259
  %274 = fadd float %273, %272
  %275 = fmul float %268, %258
  %276 = fadd float %275, %274
  %277 = fcmp ogt float %276, 0.000000e+00
  br i1 %277, label %bb.i, label %bb52.i

bb.i:                                             ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit147
  %278 = fmul float %260, -1.000000e+00
  %279 = fmul float %259, -1.000000e+00
  %280 = fmul float %258, -1.000000e+00
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit147
  %N.i.0.0 = phi float [ %278, %bb.i ], [ %260, %_ZN3BVH9intersectER9HitRecordR3Ray.exit147 ]
  %N.i.1.0 = phi float [ %279, %bb.i ], [ %259, %_ZN3BVH9intersectER9HitRecordR3Ray.exit147 ]
  %N.i.2.0 = phi float [ %280, %bb.i ], [ %258, %_ZN3BVH9intersectER9HitRecordR3Ray.exit147 ]
  %281 = fmul float %tmp425, 0x3FD99999A0000000
  %282 = fsub float %4, %233
  %283 = fsub float %5, %234
  %284 = fsub float %6, %235
  %285 = fmul float %282, %282
  %286 = fmul float %283, %283
  %287 = fadd float %285, %286
  %288 = fmul float %284, %284
  %289 = fadd float %287, %288
  %290 = call float @llvm.trax.invsqrt(float %289) nounwind
  %291 = fdiv float 1.000000e+00, %290
  %292 = fdiv float %284, %291
  %293 = fdiv float %283, %291
  %294 = fdiv float %282, %291
  %295 = fmul float %294, %N.i.0.0
  %296 = fadd float %295, 0.000000e+00
  %297 = fmul float %293, %N.i.1.0
  %298 = fadd float %297, %296
  %299 = fmul float %292, %N.i.2.0
  %300 = fadd float %299, %298
  %301 = fcmp ogt float %300, 0.000000e+00
  br i1 %301, label %bb93.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb93.i:                                           ; preds = %bb52.i
  %302 = call float @llvm.trax.invsqrt(float %289) nounwind
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %bb93.i
  %tmp470498.off0 = phi i32 [ %tmp416, %bb93.i ], [ %tmp470497.off0, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %bb93.i ], [ %460, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %bb93.i ], [ %461, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp564 = sext i32 %tmp404.i to i64
  %tmp566 = zext i32 %sp.0.ph.i to i64
  br label %bb.i19

bb.i19:                                           ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %338, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp565 = add i64 %tmp564, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp565
  %tmp567 = add i64 %tmp566, %indvar.i
  %sp.0.i = trunc i64 %tmp567 to i32
  %303 = shl nsw i32 %node_id.0.i, 3
  %304 = add nsw i32 %303, %29
  %305 = call float @llvm.trax.loadf(i32 %304, i32 2) nounwind
  %306 = call float @llvm.trax.loadf(i32 %304, i32 1) nounwind
  %307 = call float @llvm.trax.loadf(i32 %304, i32 0) nounwind
  %308 = call float @llvm.trax.loadf(i32 %304, i32 5) nounwind
  %309 = call float @llvm.trax.loadf(i32 %304, i32 4) nounwind
  %310 = call float @llvm.trax.loadf(i32 %304, i32 3) nounwind
  %311 = fsub float %307, %233
  %312 = fdiv float %311, %294
  %313 = fsub float %310, %233
  %314 = fdiv float %313, %294
  %315 = fcmp ogt float %312, %314
  %tx1.i.0.i = select i1 %315, float %314, float %312
  %tx2.i.0.i = select i1 %315, float %312, float %314
  %316 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %316, float %tx1.i.0.i, float -1.000000e+10
  %317 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %317, float %tx2.i.0.i, float 1.000000e+10
  %318 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %319 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %318, %319
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i19
  %320 = fsub float %306, %234
  %321 = fdiv float %320, %293
  %322 = fsub float %309, %234
  %323 = fdiv float %322, %293
  %324 = fcmp ogt float %321, %323
  %ty1.i.0.i = select i1 %324, float %323, float %321
  %ty2.i.0.i = select i1 %324, float %321, float %323
  %325 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %325, float %ty1.i.0.i, float %tnear.i.0.i
  %326 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %326, float %ty2.i.0.i, float %tfar.i.0.i
  %327 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %328 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %327, %328
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %329 = fsub float %305, %235
  %330 = fdiv float %329, %292
  %331 = fsub float %308, %235
  %332 = fdiv float %331, %292
  %333 = fcmp ogt float %330, %332
  %tz1.i.0.i = select i1 %333, float %332, float %330
  %tz2.i.0.i = select i1 %333, float %330, float %332
  %334 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %334, float %tz1.i.0.i, float %tnear.i.1.i
  %335 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %335, float %tz2.i.0.i, float %tfar.i.1.i
  %336 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %337 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %336, %337
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i

bb1.i:                                            ; preds = %bb62.i.i
  %338 = call i32 @llvm.trax.loadi(i32 %304, i32 7) nounwind
  %339 = call i32 @llvm.trax.loadi(i32 %304, i32 6) nounwind
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i
  %341 = icmp sgt i32 %339, 0
  br i1 %341, label %bb5.i, label %bb7.i

bb3.i:                                            ; preds = %bb1.i
  %342 = add nsw i32 %338, 1
  store i32 %342, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i19

bb5.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %tmp470496.off0 = phi i32 [ %tmp470495.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %tmp470498.off0, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %456, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %338, %tmp
  %343 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %344 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %345 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %346 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %347 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %348 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %349 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %350 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %351 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %352 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %353 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %354 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %355 = mul nsw i32 %352, 25
  %356 = add nsw i32 %354, %355
  %357 = call float @llvm.trax.loadf(i32 %356, i32 6) nounwind
  %358 = call float @llvm.trax.loadf(i32 %356, i32 5) nounwind
  %359 = call float @llvm.trax.loadf(i32 %356, i32 4) nounwind
  %360 = fsub float %345, %351
  %361 = fsub float %344, %350
  %362 = fsub float %343, %349
  %363 = fsub float %348, %351
  %364 = fsub float %347, %350
  %365 = fsub float %346, %349
  %366 = fmul float %361, %365
  %367 = fmul float %364, %362
  %368 = fsub float %366, %367
  %369 = fmul float %363, %362
  %370 = fmul float %360, %365
  %371 = fsub float %369, %370
  %372 = fmul float %364, %360
  %373 = fmul float %363, %361
  %374 = fsub float %372, %373
  %375 = fmul float %368, %368
  %376 = fmul float %371, %371
  %377 = fadd float %375, %376
  %378 = fmul float %374, %374
  %379 = fadd float %377, %378
  %380 = call float @llvm.trax.invsqrt(float %379) nounwind
  %381 = fmul float %293, %365
  %382 = fmul float %364, %292
  %383 = fsub float %381, %382
  %384 = fmul float %363, %292
  %385 = fmul float %294, %365
  %386 = fsub float %384, %385
  %387 = fmul float %364, %294
  %388 = fmul float %363, %293
  %389 = fsub float %387, %388
  %390 = fmul float %383, %360
  %391 = fadd float %390, 0.000000e+00
  %392 = fmul float %386, %361
  %393 = fadd float %392, %391
  %394 = fmul float %389, %362
  %395 = fadd float %394, %393
  %396 = fdiv float 1.000000e+00, %395
  %397 = fsub float %233, %351
  %398 = fsub float %234, %350
  %399 = fsub float %235, %349
  %400 = fmul float %383, %397
  %401 = fadd float %400, 0.000000e+00
  %402 = fmul float %386, %398
  %403 = fadd float %402, %401
  %404 = fmul float %389, %399
  %405 = fadd float %404, %403
  %406 = fmul float %405, %396
  %407 = fcmp olt float %406, 0.000000e+00
  %408 = fcmp ogt float %406, 1.000000e+00
  %or.cond1397.i = or i1 %407, %408
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i
  %409 = fmul float %398, %362
  %410 = fmul float %361, %399
  %411 = fsub float %409, %410
  %412 = fmul float %360, %399
  %413 = fmul float %397, %362
  %414 = fsub float %412, %413
  %415 = fmul float %361, %397
  %416 = fmul float %360, %398
  %417 = fsub float %415, %416
  %418 = fmul float %411, %294
  %419 = fadd float %418, 0.000000e+00
  %420 = fmul float %414, %293
  %421 = fadd float %420, %419
  %422 = fmul float %417, %292
  %423 = fadd float %422, %421
  %424 = fmul float %423, %396
  %425 = fcmp olt float %424, 0.000000e+00
  br i1 %425, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %426 = fadd float %424, %406
  %427 = fcmp ogt float %426, 1.000000e+00
  br i1 %427, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %428 = fmul float %411, %363
  %429 = fadd float %428, 0.000000e+00
  %430 = fmul float %414, %364
  %431 = fadd float %430, %429
  %432 = fmul float %417, %365
  %433 = fadd float %432, %431
  %434 = fmul float %433, %396
  %435 = fcmp ule float %434, 0.000000e+00
  %436 = fcmp olt float %434, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %435, %436
  %437 = fcmp oeq float %434, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %437
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp411 = bitcast i32 %tmp470496.off0 to float
  %438 = fcmp ogt float %tmp411, %434
  br i1 %438, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp405 = bitcast float %434 to i32
  %439 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %440 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %441 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %442 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %443 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %444 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %445 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %446 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %447 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %448 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %449 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %450 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %451 = mul nsw i32 %448, 25
  %452 = add nsw i32 %450, %451
  %453 = call float @llvm.trax.loadf(i32 %452, i32 6) nounwind
  %454 = call float @llvm.trax.loadf(i32 %452, i32 5) nounwind
  %455 = call float @llvm.trax.loadf(i32 %452, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i
  %tmp470495.off0 = phi i32 [ %tmp405, %bb3.i.i.i ], [ %tmp470496.off0, %bb2.i.i.i ], [ %tmp470496.off0, %bb96.i.i ], [ %tmp470496.off0, %bb94.i55.i ], [ %tmp470496.off0, %bb73.i.i ], [ %tmp470496.off0, %bb5.i ]
  %456 = add nsw i32 %storemerge388.i, 1
  %exitcond = icmp eq i32 %456, %339
  br i1 %exitcond, label %bb7.i, label %bb5.i

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i19
  %tmp470497.off0 = phi i32 [ %tmp470498.off0, %bb6.preheader.i ], [ %tmp470495.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %tmp470498.off0, %bb.i19 ], [ %tmp470498.off0, %bb29.i.i ], [ %tmp470498.off0, %bb62.i.i ]
  %457 = icmp slt i32 %sp.0.i, 0
  br i1 %457, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %458 = sext i32 %sp.0.i to i64
  %459 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %458
  %460 = load i32* %459, align 4
  %461 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %462 = fdiv float 1.000000e+00, %302
  %tmp414 = bitcast i32 %tmp470497.off0 to float
  %463 = fcmp uge float %tmp414, %462
  %464 = fcmp ule float %tmp414, 0x3F847AE140000000
  %or.cond = or i1 %463, %464
  br i1 %or.cond, label %bb96.i, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb96.i:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %465 = fmul float %tmp421, %300
  %tmp1835 = bitcast float %465 to i32
  %tmp1836 = zext i32 %tmp1835 to i96
  %tmp1831 = shl nuw nsw i96 %tmp1836, 32
  %ins1833 = or i96 %tmp1831, %tmp1836
  %tmp1125 = zext i96 %ins1833 to i128
  %mask1126 = and i128 %memtmp103.i.1554, -79228162514264337593543950336
  %tmp1119 = zext i32 %tmp1835 to i128
  %tmp1120 = shl nuw nsw i128 %tmp1119, 64
  %mask1121 = or i128 %tmp1120, %mask1126
  %ins1122 = or i128 %mask1121, %tmp1125
  %ins1122.tr = trunc i128 %ins1122 to i96
  %466 = fadd float %465, %281
  %tmp1795 = lshr i96 %ins1122.tr, 64
  %tmp1796 = trunc i96 %tmp1795 to i32
  %tmp1797 = bitcast i32 %tmp1796 to float
  %467 = fadd float %tmp1797, %281
  %tmp1790 = bitcast float %466 to i32
  %tmp1791 = zext i32 %tmp1790 to i96
  %tmp1786 = shl nuw nsw i96 %tmp1791, 32
  %ins1788 = or i96 %tmp1786, %tmp1791
  %tmp1778 = bitcast float %467 to i32
  %tmp1103 = zext i96 %ins1788 to i128
  %mask1104 = and i128 %memtmp113.i.1553, -79228162514264337593543950336
  %tmp1097 = zext i32 %tmp1778 to i128
  %tmp1098 = shl nuw nsw i128 %tmp1097, 64
  %mask1099 = or i128 %tmp1103, %mask1104
  %ins1100 = or i128 %mask1099, %tmp1098
  %tmp1085 = lshr i128 %ins1100, 64
  %tmp1086 = trunc i128 %tmp1085 to i32
  %tmp1087 = bitcast i32 %tmp1086 to float
  br label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb96.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit, %bb52.i
  %light.i.0.0 = phi float [ %466, %bb96.i ], [ %281, %bb52.i ], [ %281, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %light.i.2.0 = phi float [ %tmp1087, %bb96.i ], [ %281, %bb52.i ], [ %281, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp113.i.0 = phi i128 [ %ins1100, %bb96.i ], [ %memtmp113.i.1553, %bb52.i ], [ %memtmp113.i.1553, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp103.i.0 = phi i128 [ %ins1122, %bb96.i ], [ %memtmp103.i.1554, %bb52.i ], [ %memtmp103.i.1554, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %468 = fmul float %tmp437, %light.i.0.0
  %469 = fmul float %tmp433, %light.i.0.0
  %tmp1682558 = lshr i512 %mask283503, 416
  %tmp1683 = trunc i512 %tmp1682558 to i32
  %tmp1684 = bitcast i32 %tmp1683 to float
  %470 = fmul float %tmp1684, %light.i.2.0
  %tmp1677 = bitcast float %468 to i32
  %tmp1678 = zext i32 %tmp1677 to i96
  %tmp1671 = bitcast float %469 to i32
  %tmp1672 = zext i32 %tmp1671 to i96
  %tmp1673 = shl nuw nsw i96 %tmp1672, 32
  %ins1675 = or i96 %tmp1673, %tmp1678
  %tmp1665 = bitcast float %470 to i32
  %tmp1059 = zext i96 %ins1675 to i128
  %tmp1053 = zext i32 %tmp1665 to i128
  %tmp1054 = shl nuw nsw i128 %tmp1053, 64
  %mask141 = and i128 %memtmp.0550, -79228162514264337593543950336
  %mask = or i128 %tmp1059, %mask141
  %ins = or i128 %mask, %tmp1054
  %ins.tr = trunc i128 %ins to i96
  %471 = mul nsw i32 %37, %0
  %472 = add nsw i32 %471, %38
  %473 = mul nsw i32 %472, 3
  %474 = add nsw i32 %473, %2
  call void @llvm.trax.storef(float %468, i32 %474, i32 0) nounwind
  call void @llvm.trax.storef(float %469, i32 %474, i32 1) nounwind
  %tmp365 = lshr i96 %ins.tr, 64
  %tmp366 = trunc i96 %tmp365 to i32
  %tmp367 = bitcast i32 %tmp366 to float
  call void @llvm.trax.storef(float %tmp367, i32 %474, i32 2) nounwind
  %475 = call i32 @llvm.trax.atominc(i32 0)
  %476 = icmp sgt i32 %31, %475
  br i1 %476, label %bb, label %return

return:                                           ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit, %entry
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind
