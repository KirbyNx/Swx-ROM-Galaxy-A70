.class public Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BRIGHTENING_HYSTERESIS:F = 0.1f

.field private static final DEFAULT_DARKENING_HYSTERESIS:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field private mHysteresisBrightSpline:Landroid/util/Spline;

.field private mHysteresisDarkSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>([I[I[I[I)V
    .registers 10
    .param p1, "brightInputLuxes"    # [I
    .param p2, "brightOutputLuxes"    # [I
    .param p3, "darkInputLuxes"    # [I
    .param p4, "darkOutputLuxes"    # [I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_28

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_28

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object v0

    .line 84
    .local v0, "brightInputLuxesForSpline":[F
    invoke-direct {p0, p2}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object v1

    .line 85
    .local v1, "brightOutputLuxesForSpline":[F
    invoke-direct {p0, p3}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object v2

    .line 86
    .local v2, "darkInputLuxesForSpline":[F
    invoke-direct {p0, p4}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object v3

    .line 88
    .local v3, "darkOutputLuxesForSpline":[F
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    .line 89
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    .line 90
    return-void

    .line 80
    .end local v0    # "brightInputLuxesForSpline":[F
    .end local v1    # "brightOutputLuxesForSpline":[F
    .end local v2    # "darkInputLuxesForSpline":[F
    .end local v3    # "darkOutputLuxesForSpline":[F
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mismatch between hysteresis array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertArrayFromIntToFloat([I)[F
    .registers 5
    .param p1, "intArray"    # [I

    .line 93
    array-length v0, p1

    new-array v0, v0, [F

    .line 95
    .local v0, "floatArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 96
    aget v2, p1, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 99
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 172
    const-string v0, "HysteresisLevels"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHysteresisBrightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHysteresisDarkSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public getBrighteningThreshold(F)F
    .registers 3
    .param p1, "value"    # F

    .line 116
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 118
    .local v0, "brightThreshold":F
    return v0
.end method

.method public getDarkeningThreshold(F)F
    .registers 4
    .param p1, "value"    # F

    .line 134
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 135
    .local v0, "darkThreshold":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_13

    :cond_11
    const/high16 v1, -0x40800000    # -1.0f

    :goto_13
    move v0, v1

    .line 138
    return v0
.end method
