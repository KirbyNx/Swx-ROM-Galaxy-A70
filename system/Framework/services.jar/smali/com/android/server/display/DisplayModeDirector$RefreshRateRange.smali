.class public final Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRange"
.end annotation


# instance fields
.field public max:F

.field public min:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 6
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_21

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_21

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_15

    goto :goto_21

    .line 753
    :cond_15
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1c

    .line 755
    move v0, p1

    .line 756
    .local v0, "t":F
    move p1, p2

    .line 757
    move p2, v0

    .line 759
    .end local v0    # "t":F
    :cond_1c
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 760
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    .line 761
    return-void

    .line 748
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong values for min and max when initializing RefreshRateRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    .line 751
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 768
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 769
    return v0

    .line 772
    :cond_4
    instance-of v1, p1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 773
    return v2

    .line 776
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 777
    .local v1, "refreshRateRange":Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iget v4, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iget v4, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 782
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
