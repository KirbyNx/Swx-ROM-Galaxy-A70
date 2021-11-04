.class public Lcom/android/server/wm/utils/RotationAnimationUtils;
.super Ljava/lang/Object;
.source "RotationAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 174
    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    goto :goto_30

    .line 187
    :cond_d
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 188
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_30

    .line 183
    :cond_17
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 184
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 185
    goto :goto_30

    .line 179
    :cond_22
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 180
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 181
    goto :goto_30

    .line 176
    :cond_2c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 177
    nop

    .line 191
    :goto_30
    return-void
.end method

.method public static getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F
    .registers 3
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;Z)F

    move-result v0

    return v0
.end method

.method public static getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;Z)F
    .registers 9
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "applyAverage"    # Z

    .line 155
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 156
    return v0

    .line 159
    :cond_4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 160
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 161
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    .local v2, "crop":Landroid/graphics/Rect;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 163
    invoke-static {p1, v2, v3}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    .line 164
    .local v3, "buffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v3, :cond_1f

    .line 165
    return v0

    .line 168
    :cond_1f
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 169
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 168
    invoke-static {v0, v4, p2}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;Z)F

    move-result v0

    return v0
.end method

.method public static getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)F
    .registers 3
    .param p0, "graphicBuffer"    # Landroid/graphics/GraphicBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;Z)F

    move-result v0

    return v0
.end method

.method public static getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;Z)F
    .registers 25
    .param p0, "graphicBuffer"    # Landroid/graphics/GraphicBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p2, "applyAverage"    # Z

    .line 56
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_108

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    move-object/from16 v4, p1

    goto/16 :goto_10a

    .line 60
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v5

    .line 60
    invoke-static {v2, v4, v5, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    .line 62
    .local v2, "ir":Landroid/media/ImageReader;
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v3, v0, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 63
    invoke-virtual {v2}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    .line 64
    .local v3, "image":Landroid/media/Image;
    if-eqz v3, :cond_105

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3a

    move-object/from16 v20, v3

    goto/16 :goto_107

    .line 68
    :cond_3a
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    .line 69
    .local v1, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 70
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v7

    .line 71
    .local v7, "width":I
    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 72
    .local v8, "height":I
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    .line 73
    .local v9, "pixelStride":I
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 74
    .local v10, "rowStride":I
    mul-int/lit8 v11, v7, 0x2

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v11, v12

    new-array v11, v11, [F

    .line 77
    .local v11, "borderLumas":[F
    if-eqz p2, :cond_c4

    .line 79
    div-int/lit8 v5, v7, 0xa

    .line 80
    .local v5, "startX":I
    div-int/lit8 v12, v8, 0xa

    .line 81
    .local v12, "startY":I
    sub-int v13, v7, v5

    .line 82
    .local v13, "endX":I
    sub-int v14, v8, v12

    .line 83
    .local v14, "endY":I
    const/4 v15, 0x0

    .line 84
    .local v15, "l":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "x":I
    :goto_6b
    if-ge v0, v7, :cond_80

    .line 85
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "l":I
    .local v16, "l":I
    invoke-static {v6, v0, v12, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v17

    aput v17, v11, v15

    .line 86
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "l":I
    .restart local v15    # "l":I
    invoke-static {v6, v0, v14, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v17

    aput v17, v11, v16

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 88
    .end local v0    # "x":I
    :cond_80
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_81
    if-ge v0, v8, :cond_96

    .line 89
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "l":I
    .restart local v16    # "l":I
    invoke-static {v6, v5, v0, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v17

    aput v17, v11, v15

    .line 90
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "l":I
    .restart local v15    # "l":I
    invoke-static {v6, v13, v0, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v17

    aput v17, v11, v16

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 93
    .end local v0    # "y":I
    :cond_96
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 94
    invoke-static {v11}, Ljava/util/Arrays;->sort([F)V

    .line 98
    const/4 v0, 0x2

    .line 99
    .local v0, "startNdx":I
    const/16 v16, 0x8

    .line 100
    .local v16, "endNdx":I
    move/from16 v17, v0

    .end local v0    # "startNdx":I
    .local v17, "startNdx":I
    array-length v0, v11

    div-int/lit8 v0, v0, 0xa

    .line 102
    .local v0, "indexInterval":I
    const/16 v18, 0x0

    .line 103
    .local v18, "sumLumas":F
    const/16 v19, 0x2

    move/from16 v21, v19

    move-object/from16 v19, v1

    move/from16 v1, v21

    .local v1, "i":I
    .local v19, "plane":Landroid/media/Image$Plane;
    :goto_ae
    move-object/from16 v20, v3

    .end local v3    # "image":Landroid/media/Image;
    .local v20, "image":Landroid/media/Image;
    const/16 v3, 0x8

    if-ge v1, v3, :cond_bf

    .line 104
    mul-int v3, v0, v1

    aget v3, v11, v3

    add-float v18, v18, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v20

    goto :goto_ae

    .line 106
    .end local v1    # "i":I
    :cond_bf
    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v18, v1

    return v1

    .line 111
    .end local v0    # "indexInterval":I
    .end local v5    # "startX":I
    .end local v12    # "startY":I
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    .end local v15    # "l":I
    .end local v16    # "endNdx":I
    .end local v17    # "startNdx":I
    .end local v18    # "sumLumas":F
    .end local v19    # "plane":Landroid/media/Image$Plane;
    .end local v20    # "image":Landroid/media/Image;
    .local v1, "plane":Landroid/media/Image$Plane;
    .restart local v3    # "image":Landroid/media/Image;
    :cond_c4
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    .end local v1    # "plane":Landroid/media/Image$Plane;
    .end local v3    # "image":Landroid/media/Image;
    .restart local v19    # "plane":Landroid/media/Image$Plane;
    .restart local v20    # "image":Landroid/media/Image;
    const/4 v0, 0x0

    .line 112
    .local v0, "l":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_ca
    if-ge v1, v7, :cond_e1

    .line 113
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "l":I
    .local v3, "l":I
    invoke-static {v6, v1, v5, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v12

    aput v12, v11, v0

    .line 114
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "l":I
    .restart local v0    # "l":I
    add-int/lit8 v12, v8, -0x1

    invoke-static {v6, v1, v12, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v12

    aput v12, v11, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 118
    .end local v1    # "x":I
    :cond_e1
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_e2
    if-ge v1, v8, :cond_f9

    .line 119
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "l":I
    .restart local v3    # "l":I
    invoke-static {v6, v5, v1, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v12

    aput v12, v11, v0

    .line 120
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "l":I
    .restart local v0    # "l":I
    add-int/lit8 v12, v7, -0x1

    invoke-static {v6, v12, v1, v9, v10}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v12

    aput v12, v11, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 124
    .end local v1    # "y":I
    :cond_f9
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 128
    invoke-static {v11}, Ljava/util/Arrays;->sort([F)V

    .line 129
    array-length v1, v11

    div-int/lit8 v1, v1, 0x2

    aget v1, v11, v1

    return v1

    .line 64
    .end local v0    # "l":I
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "pixelStride":I
    .end local v10    # "rowStride":I
    .end local v11    # "borderLumas":[F
    .end local v19    # "plane":Landroid/media/Image$Plane;
    .end local v20    # "image":Landroid/media/Image;
    .local v3, "image":Landroid/media/Image;
    :cond_105
    move-object/from16 v20, v3

    .line 65
    .end local v3    # "image":Landroid/media/Image;
    .restart local v20    # "image":Landroid/media/Image;
    :goto_107
    return v1

    .line 56
    .end local v2    # "ir":Landroid/media/ImageReader;
    .end local v20    # "image":Landroid/media/Image;
    :cond_108
    move-object/from16 v4, p1

    .line 57
    :goto_10a
    return v1
.end method

.method private static getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F
    .registers 8
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I

    .line 134
    mul-int v0, p2, p4

    mul-int v1, p1, p3

    add-int/2addr v0, v1

    .line 135
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 136
    .local v1, "pixel":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 137
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 138
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 139
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 140
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->luminance()F

    move-result v2

    return v2
.end method
