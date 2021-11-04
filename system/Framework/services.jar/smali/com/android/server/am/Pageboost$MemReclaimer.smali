.class final Lcom/android/server/am/Pageboost$MemReclaimer;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemReclaimer"
.end annotation


# static fields
.field private static final MAX_PREPARE_SIZE:I = 0x96

.field private static final MEM_PREPARATION_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2212
    nop

    .line 2213
    const-string/jumbo v0, "ro.config.pageboost.mem_prepare.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost$MemReclaimer;->MEM_PREPARATION_ENABLED:Z

    .line 2212
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2217
    return-void
.end method

.method static synthetic access$4300()Z
    .registers 1

    .line 2211
    sget-boolean v0, Lcom/android/server/am/Pageboost$MemReclaimer;->MEM_PREPARATION_ENABLED:Z

    return v0
.end method

.method public static reclaimMem(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 5
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 2220
    sget-boolean v0, Lcom/android/server/am/Pageboost$MemReclaimer;->MEM_PREPARATION_ENABLED:Z

    if-nez v0, :cond_6

    .line 2221
    const/4 v0, 0x0

    return v0

    .line 2224
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v0

    .line 2225
    .local v0, "mu":Lcom/android/server/am/Pageboost$MemUsage;
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    .line 2226
    .local v1, "memNeeded":I
    const/16 v2, 0x96

    if-le v1, v2, :cond_15

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    move v1, v2

    .line 2227
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2228
    .local v2, "size":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    .line 2229
    const/4 v3, 0x1

    return v3
.end method
