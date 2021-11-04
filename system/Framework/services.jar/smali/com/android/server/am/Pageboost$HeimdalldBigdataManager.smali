.class final Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeimdalldBigdataManager"
.end annotation


# static fields
.field private static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2564
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3400()V
    .registers 0

    .line 2563
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->init()V

    return-void
.end method

.method static synthetic access$4100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 2563
    invoke-static {p0}, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->sendData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    .line 2563
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->onHqmUpdateRequest()V

    return-void
.end method

.method private static init()V
    .registers 2

    .line 2568
    # getter for: Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3800()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    sput-object v0, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 2570
    return-void
.end method

.method private static onHqmUpdateRequest()V
    .registers 2

    .line 2580
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onHqmUpdateRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->dumpPkgInfoListToBigdata()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->access$3900()V

    .line 2582
    return-void
.end method

.method private static sendData(Ljava/lang/String;)V
    .registers 11
    .param p0, "data"    # Ljava/lang/String;

    .line 2573
    sget-object v0, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_5

    .line 2574
    return-void

    .line 2576
    :cond_5
    const/4 v1, 0x0

    const-string v2, "AP"

    const-string v3, "HDMM"

    const-string/jumbo v4, "sm"

    const-string v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2577
    return-void
.end method
