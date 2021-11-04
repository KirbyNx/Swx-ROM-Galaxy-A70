.class final Lcom/android/server/am/Pageboost$HeimdalldManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeimdalldManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900()V
    .registers 0

    .line 2547
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldManager;->init()V

    return-void
.end method

.method private static init()V
    .registers 0

    .line 2549
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->init()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->access$3400()V

    .line 2550
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->init()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->access$3500()V

    .line 2551
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldProxy;->init()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldProxy;->access$3600()V

    .line 2552
    return-void
.end method

.method public static onReceiveData(Ljava/lang/String;)V
    .registers 7
    .param p0, "rawData"    # Ljava/lang/String;

    .line 2554
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2555
    .local v0, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 2556
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2557
    .local v2, "memUsage":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2558
    .local v3, "isGlbKill":Z
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2559
    .local v4, "isRealKill":Z
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->updatePkgInfoList(Ljava/lang/String;IZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->access$3700(Ljava/lang/String;IZZ)V

    .line 2560
    return-void
.end method
