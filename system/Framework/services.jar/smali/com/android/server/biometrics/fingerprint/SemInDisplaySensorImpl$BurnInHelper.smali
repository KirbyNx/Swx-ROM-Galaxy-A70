.class Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BurnInHelper"
.end annotation


# instance fields
.field private mIconArray:[I

.field private mIconLocation:I

.field private mIconLocationX:I

.field private mIconLocationY:I

.field private mMaxMovingSize:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocationX:I

    .line 679
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocationY:I

    .line 686
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->setMaxMovingSize(Landroid/content/Context;)V

    .line 687
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mMaxMovingSize:I

    mul-int/2addr v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconArray:[I

    .line 689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mMaxMovingSize:I

    mul-int v2, v1, v1

    if-ge v0, v2, :cond_20

    .line 690
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconArray:[I

    aput v0, v1, v0

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 692
    :cond_20
    mul-int/2addr v1, v1

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_23
    if-ltz v1, :cond_3d

    .line 693
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 694
    .local v0, "r":I
    if-eq v0, v1, :cond_3a

    .line 695
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconArray:[I

    aget v3, v2, v0

    .line 696
    .local v3, "t":I
    aget v4, v2, v1

    aput v4, v2, v0

    .line 697
    aput v3, v2, v1

    .line 692
    .end local v3    # "t":I
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 700
    .end local v0    # "r":I
    :cond_3d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mMaxMovingSize:I

    mul-int/2addr v0, v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocation:I

    .line 701
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->getNextPosition(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getNextPosition(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;

    .line 720
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->updateLocation()V

    .line 721
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mX:I

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mY:I

    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getNextPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-object p1
.end method

.method private setMaxMovingSize(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 704
    nop

    .line 706
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 704
    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mMaxMovingSize:I

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxMovingSize() returned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mMaxMovingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method private updateLocation()V
    .registers 5

    .line 711
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocation:I

    .line 712
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mMaxMovingSize:I

    mul-int v2, v1, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocation:I

    .line 713
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconArray:[I

    aget v3, v2, v0

    div-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocationX:I

    .line 714
    aget v0, v2, v0

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mIconLocationY:I

    .line 715
    shr-int/lit8 v2, v1, 0x1

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mX:I

    .line 716
    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->mY:I

    .line 717
    return-void
.end method
