.class Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;",
        ">;"
    }
.end annotation


# instance fields
.field public final mBrightness:F

.field public final mBrightnessOffset:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 8
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "currentBrightness"    # F

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 918
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    .line 920
    sub-float v0, p2, p3

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    .line 922
    const/high16 v0, 0x40200000    # 2.5f

    div-float v1, p1, v0

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, p1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 924
    mul-float/2addr v0, p1

    add-float/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 926
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)I
    .registers 5
    .param p1, "userPoint"    # Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 946
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    iget v1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_a

    const/4 v0, 0x1

    return v0

    .line 947
    :cond_a
    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    const/4 v0, -0x1

    return v0

    .line 948
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 907
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->compareTo(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)I

    move-result p1

    return p1
.end method

.method public isInSameBoundary(F)Z
    .registers 3
    .param p1, "lux"    # F

    .line 929
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    .line 930
    const/4 v0, 0x1

    return v0

    .line 933
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isInSameBoundary(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)Z
    .registers 4
    .param p1, "userPoint"    # Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 937
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    iget v1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_10

    .line 938
    const/4 v0, 0x1

    return v0

    .line 941
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 966
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    sub-float/2addr v0, v1

    .line 968
    .local v0, "existingBrightness":F
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, v0, v2

    .line 969
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    mul-float/2addr v3, v2

    .line 970
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    mul-float/2addr v3, v2

    .line 971
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 972
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 973
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 974
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 968
    const-string v2, "%5.1f -> %5.1f (%+6.1f) @ %6.1f < %6.1f < %6.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
