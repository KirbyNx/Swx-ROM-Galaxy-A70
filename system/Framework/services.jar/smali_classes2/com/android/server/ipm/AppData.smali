.class Lcom/android/server/ipm/AppData;
.super Ljava/lang/Object;
.source "NapBigDataService.java"


# instance fields
.field public accuracy:D

.field public avgHitLaunchTime:I

.field public avgNoHitLaunchTime:I

.field public benefit:I

.field public compName:Ljava/lang/String;

.field public preRatio:D

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDII)V
    .registers 10
    .param p1, "compName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "accuracy"    # D
    .param p5, "preRatio"    # D
    .param p7, "hitTime"    # I
    .param p8, "noHitTime"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/ipm/AppData;->compName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/server/ipm/AppData;->version:Ljava/lang/String;

    .line 46
    iput-wide p3, p0, Lcom/android/server/ipm/AppData;->accuracy:D

    .line 47
    iput-wide p5, p0, Lcom/android/server/ipm/AppData;->preRatio:D

    .line 48
    iput p7, p0, Lcom/android/server/ipm/AppData;->avgHitLaunchTime:I

    .line 49
    iput p8, p0, Lcom/android/server/ipm/AppData;->avgNoHitLaunchTime:I

    .line 50
    if-lez p8, :cond_18

    if-lez p7, :cond_18

    .line 51
    sub-int v0, p8, p7

    iput v0, p0, Lcom/android/server/ipm/AppData;->benefit:I

    goto :goto_1b

    .line 53
    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/AppData;->benefit:I

    .line 55
    :goto_1b
    return-void
.end method
