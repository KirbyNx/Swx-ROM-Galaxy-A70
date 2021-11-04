.class public final Lcom/android/server/NandswapManager;
.super Landroid/app/job/JobService;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NandswapManager$NandSwapBigdataManager;,
        Lcom/android/server/NandswapManager$ProcessingManager;,
        Lcom/android/server/NandswapManager$NandswapClient;
    }
.end annotation


# static fields
.field private static final BD_STAT_AVG_UPDAGE_JOB_ID:I = 0x32e

.field private static final BIGDATA_INFO_PROP:Ljava/lang/String; = "persist.sys.%s.bigdata_info"

.field private static final DAILY_QUOTA_LIMIT_PROP:Ljava/lang/String; = "ro.sys.kernelmemory.nandswap.daily_quota_limit"

.field private static final DAILY_QUOTA_PROP:Ljava/lang/String; = "ro.sys.kernelmemory.nandswap.daily_quota"

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final MMC_LIFETIME_SYS_NODE:Ljava/lang/String; = "/sys/block/mmcblk0/device/life_time"

.field private static final NANDSWAP_QUOTA_RESET_JOB_ID:I = 0x32d

.field private static final NUM_NANDSWAP_CLIENTS:I = 0x1

.field private static final QUOTA_REMAINING_PROP:Ljava/lang/String; = "persist.sys.zram.daily_quota_remain"

.field private static final RAM_EXPAND_SIZE:Ljava/lang/String; = "ram_expand_size"

.field private static final SYS_BACKING_DEV:Ljava/lang/String; = "/sys/block/%s/backing_dev"

.field private static final SYS_BD_STAT:Ljava/lang/String; = "/sys/block/%s/bd_stat"

.field private static final SYS_WRITEBACK_LIMIT:Ljava/lang/String; = "/sys/block/%s/writeback_limit"

.field private static final TAG:Ljava/lang/String; = "NandswapManager"

.field private static final UFS_GKI_LIFETIME_SYS_NODE:Ljava/lang/String; = "/sys/class/sec/ufs/lt"

.field private static final UFS_LIFETIME_SYS_NODE:Ljava/lang/String; = "/sys/class/scsi_host/host0/lt"

.field private static final UX_SUPPORT_PROP:Ljava/lang/String; = "ro.sys.kernelmemory.nandswap.ux_support"

.field private static final ZRAM_SWAP_FILE_PATH:Ljava/lang/String; = "/data/per_boot/zram_swap"

.field private static final dailyQuotaDefault:I = 0x40000

.field private static final dailyQuotaLimitDefault:I = 0xc0000

.field private static final intentReceiver:Landroid/content/BroadcastReceiver;

.field private static mClients:[Lcom/android/server/NandswapManager$NandswapClient;

.field private static mContext:Landroid/content/Context;

.field private static mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

.field private static final sNandswapManager:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/NandswapManager;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 83
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    .line 286
    new-instance v0, Lcom/android/server/NandswapManager$1;

    invoke-direct {v0}, Lcom/android/server/NandswapManager$1;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/NandswapManager$NandSwapBigdataManager;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    return-object v0
.end method

.method static synthetic access$1500()[Lcom/android/server/NandswapManager$NandswapClient;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 48
    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsBigdataInfoInReboot()V

    return-void
.end method

.method private static checkStorageLifeTime()Z
    .registers 12

    .line 95
    const-string v0, ""

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/scsi_host/host0/lt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "ufsSysNode":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/ufs/lt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "ufsGkiSysNode":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 100
    const-string v3, "/sys/class/scsi_host/host0/lt"

    .local v3, "sysNodePath":Ljava/lang/String;
    goto :goto_24

    .line 101
    .end local v3    # "sysNodePath":Ljava/lang/String;
    :cond_19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 102
    const-string v3, "/sys/class/sec/ufs/lt"

    .restart local v3    # "sysNodePath":Ljava/lang/String;
    goto :goto_24

    .line 104
    .end local v3    # "sysNodePath":Ljava/lang/String;
    :cond_22
    const-string v3, "/sys/block/mmcblk0/device/life_time"

    .line 106
    .restart local v3    # "sysNodePath":Ljava/lang/String;
    :goto_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try to check lifetime via "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NandswapManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v4, 0x0

    :try_start_3c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x10

    invoke-static {v6, v7, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\s+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "lifeTimes":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_52
    array-length v9, v6

    const/4 v10, 0x1

    if-ge v8, v9, :cond_7b

    .line 112
    aget-object v9, v6, v8

    const-string v11, "0x"

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 113
    .local v9, "value":I
    const/16 v11, 0x8

    if-le v9, v11, :cond_78

    .line 114
    const-string v0, "abort: lifetime below 20%%(val=%d)"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_77} :catch_7c

    .line 115
    return v4

    .line 109
    .end local v9    # "value":I
    :cond_78
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    .line 119
    .end local v8    # "i":I
    :cond_7b
    return v10

    .line 120
    .end local v6    # "lifeTimes":[Ljava/lang/String;
    :catch_7c
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    return v4
.end method

.method private static createNandswapClients()V
    .registers 5

    .line 127
    const-string v0, "NandswapManager"

    const-string v1, "Create Nandswap clients"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/NandswapManager$NandswapClient;

    sput-object v1, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_32

    .line 131
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "zram%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    new-instance v4, Lcom/android/server/NandswapManager$NandswapClient;

    invoke-direct {v4, v2}, Lcom/android/server/NandswapManager$NandswapClient;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 133
    sget-object v3, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->init()V

    .line 130
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 135
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method private static destroyNandswapClients()V
    .registers 3

    .line 138
    const-string v0, "NandswapManager"

    const-string v1, "Destroy Nandswap Clients"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_13

    .line 140
    sget-object v2, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    aput-object v1, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 142
    .end local v0    # "i":I
    :cond_13
    sput-object v1, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    .line 143
    return-void
.end method

.method private static initNandswapClients()Z
    .registers 10

    .line 147
    const-string v0, "NandswapManager"

    const-string v1, "Init Nandswap Clients"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "weightSum":I
    const/4 v1, 0x0

    .line 151
    .local v1, "num_clients_enabled":I
    sget-object v2, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_20

    aget-object v6, v2, v5

    .line 152
    .local v6, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v6}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 153
    iget v7, v6, Lcom/android/server/NandswapManager$NandswapClient;->weight:I

    add-int/2addr v0, v7

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 151
    .end local v6    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 158
    :cond_20
    if-eqz v1, :cond_63

    if-nez v0, :cond_25

    goto :goto_63

    .line 162
    :cond_25
    const/high16 v2, 0x40000

    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.daily_quota"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, "dailyQuota":I
    const/high16 v3, 0xc0000

    const-string/jumbo v5, "ro.sys.kernelmemory.nandswap.daily_quota_limit"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 164
    .local v3, "dailyQuotaLimit":I
    sget-object v5, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    array-length v6, v5

    move v7, v4

    :goto_3b
    if-ge v7, v6, :cond_61

    aget-object v8, v5, v7

    .line 165
    .local v8, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v8}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 167
    iget v9, v8, Lcom/android/server/NandswapManager$NandswapClient;->weight:I

    mul-int/2addr v9, v2

    div-int/2addr v9, v0

    iput v9, v8, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 168
    iget v9, v8, Lcom/android/server/NandswapManager$NandswapClient;->weight:I

    mul-int/2addr v9, v3

    div-int/2addr v9, v0

    iput v9, v8, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 172
    invoke-virtual {v8}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    move-result v9

    if-nez v9, :cond_5e

    .line 173
    invoke-virtual {v8, v4}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaRemainingProp(I)I

    move-result v9

    .line 174
    .local v9, "quotaRemaining":I
    invoke-virtual {v8, v9}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    .line 164
    .end local v8    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    .end local v9    # "quotaRemaining":I
    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 178
    :cond_61
    const/4 v4, 0x1

    return v4

    .line 159
    .end local v2    # "dailyQuota":I
    .end local v3    # "dailyQuotaLimit":I
    :cond_63
    :goto_63
    return v4
.end method

.method private static resetClientQuotas()V
    .registers 6

    .line 183
    const-string v0, "NandswapManager"

    const-string v1, "Reset Client Quotas"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 185
    .local v3, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 186
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    move-result v4

    iget v5, v3, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    add-int/2addr v4, v5

    .line 187
    .local v4, "newQuota":I
    iget v5, v3, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    if-le v4, v5, :cond_22

    .line 188
    iget v4, v3, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 190
    :cond_22
    invoke-virtual {v3, v4}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    .line 184
    .end local v3    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    .end local v4    # "newQuota":I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 193
    :cond_28
    return-void
.end method

.method private static saveClientsBigdataInfoInReboot()V
    .registers 5

    .line 204
    sget-object v0, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 205
    .local v3, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 206
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->setBigdataInfoProp()V

    .line 204
    .end local v3    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 209
    :cond_14
    return-void
.end method

.method private static saveClientsStorageUsage()V
    .registers 5

    .line 196
    sget-object v0, Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 197
    .local v3, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 198
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->saveStorageUsage()V

    .line 196
    .end local v3    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 201
    :cond_14
    return-void
.end method

.method private static schedNextLimitReset()V
    .registers 7

    .line 212
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 213
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const/16 v3, 0x32d

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 214
    const-wide/16 v3, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 215
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 217
    return-void
.end method

.method private static schedNextUpdateAvgerage()V
    .registers 7

    .line 220
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 221
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const/16 v3, 0x32e

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 222
    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 223
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 225
    return-void
.end method

.method public static scheduleNandswapManager(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    const-string v0, "NandswapManager"

    const-string v1, "Initalize Nandswap Manager..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ram_expand_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    invoke-static {}, Lcom/android/server/NandswapManager;->checkStorageLifeTime()Z

    move-result v1

    if-nez v1, :cond_19

    .line 232
    return-void

    .line 235
    :cond_19
    invoke-static {}, Lcom/android/server/NandswapManager;->createNandswapClients()V

    .line 236
    invoke-static {}, Lcom/android/server/NandswapManager;->initNandswapClients()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 237
    const-string/jumbo v1, "no clients enabled. destroy and exit."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/android/server/NandswapManager;->destroyNandswapClients()V

    .line 239
    return-void

    .line 242
    :cond_2c
    sput-object p0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 243
    new-instance v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;-><init>(Landroid/content/Context;Lcom/android/server/NandswapManager$1;)V

    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    sget-object v1, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/NandswapManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 255
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V

    .line 256
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 260
    const-string v0, "NandswapManager"

    const-string/jumbo v1, "onStartJob"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/android/server/NandswapManager;->checkStorageLifeTime()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 262
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NandswapManager;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 263
    return v1

    .line 266
    :cond_13
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32d

    if-ne v0, v2, :cond_25

    .line 267
    invoke-static {}, Lcom/android/server/NandswapManager;->resetClientQuotas()V

    .line 268
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 269
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NandswapManager;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_36

    .line 270
    :cond_25
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32e

    if-ne v0, v2, :cond_36

    .line 271
    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsStorageUsage()V

    .line 272
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V

    .line 273
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NandswapManager;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 276
    :cond_36
    :goto_36
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 281
    const-string v0, "NandswapManager"

    const-string/jumbo v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    return v0
.end method
