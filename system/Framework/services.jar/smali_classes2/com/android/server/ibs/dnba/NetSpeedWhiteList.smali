.class public Lcom/android/server/ibs/dnba/NetSpeedWhiteList;
.super Ljava/lang/Object;
.source "NetSpeedWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;,
        Lcom/android/server/ibs/dnba/NetSpeedWhiteList$SCPMReceiver;,
        Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.dnbanet"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field public static final DNBANET_CATEGORY:Ljava/lang/String; = "whitelist"

.field private static final DNBANET_ITEM:Ljava/lang/String; = "unlimit_pkg"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final MSG_CHECK_SPCM_PARAMETERES:I = 0x14

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "dnbanet"

.field private static final TAG:Ljava/lang/String; = "NetSpeedWhiteList"

.field private static final noNetworkUsePkg:[Ljava/lang/String;


# instance fields
.field public final SCPM_URI_DNBANET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleteReceiver:Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

.field private final mNwLock:Ljava/lang/Object;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSCPMReceiver:Lcom/android/server/ibs/dnba/NetSpeedWhiteList$SCPMReceiver;

.field private mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

.field public mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noNetworkUseUid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 46
    const-string v0, "com.android.settings"

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.samsung.android.app.notes"

    const-string v3, "com.samsung.android.calendar"

    const-string v4, "com.sec.android.app.popupcalculator"

    const-string v5, "com.samsung.android.packageinstaller"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUsePkg:[Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->DEBUG_SCPM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedMonitor;Landroid/os/HandlerThread;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nsm"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .param p3, "ht"    # Landroid/os/HandlerThread;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUseUid:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    .line 173
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/dnbanet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    .line 174
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 55
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 57
    invoke-static {p1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    .line 58
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$SCPMReceiver;-><init>(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mSCPMReceiver:Lcom/android/server/ibs/dnba/NetSpeedWhiteList$SCPMReceiver;

    .line 59
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;-><init>(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mBootCompleteReceiver:Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;

    .line 60
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$WhiteListHandler;-><init>(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mPm:Landroid/content/pm/PackageManager;

    .line 62
    sget-object v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUsePkg:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_58
    if-ge v2, v1, :cond_70

    aget-object v3, v0, v2

    .line 63
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    invoke-virtual {v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getUidForPackageName(Ljava/lang/String;)I

    move-result v4

    .line 64
    .local v4, "uid":I
    if-lez v4, :cond_6d

    .line 65
    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUseUid:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 67
    :cond_70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 33
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 33
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Lcom/android/server/ibs/dnba/NetSpeedUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 33
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 33
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    return-object v0
.end method

.method private getSCPMPolicyItemFromDB()V
    .registers 11

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 328
    .local v1, "scpmpkg":Ljava/lang/String;
    const-string v2, "NetSpeedWhiteList"

    const-string v3, "getSCPMPolicyItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_14
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_25

    move-object v0, v2

    .line 334
    goto :goto_43

    .line 331
    :catch_25
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetSpeedWhiteList"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_43
    if-eqz v0, :cond_a8

    .line 337
    :cond_45
    :goto_45
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 338
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 339
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "item":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "category":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "data1":Ljava/lang/String;
    const-string/jumbo v5, "unlimit_pkg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    const-string/jumbo v5, "whitelist"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 343
    move-object v5, v4

    .line 344
    .end local v1    # "scpmpkg":Ljava/lang/String;
    .local v5, "scpmpkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v7

    .line 345
    :try_start_76
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    monitor-exit v7
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_a0

    .line 347
    sget-boolean v1, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v1, :cond_9e

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,scpm pkg: data1 = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "NetSpeedWhiteList"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "data1":Ljava/lang/String;
    :cond_9e
    move-object v1, v5

    goto :goto_a3

    .line 346
    .restart local v2    # "item":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    .restart local v4    # "data1":Ljava/lang/String;
    :catchall_a0
    move-exception v1

    :try_start_a1
    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v1

    .line 350
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "data1":Ljava/lang/String;
    .end local v5    # "scpmpkg":Ljava/lang/String;
    .restart local v1    # "scpmpkg":Ljava/lang/String;
    :cond_a3
    :goto_a3
    goto :goto_45

    .line 352
    :cond_a4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_af

    .line 354
    :cond_a8
    const-string v2, "NetSpeedWhiteList"

    const-string v3, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_af
    return-void
.end method

.method private hasValidItemFromDB()Z
    .registers 11

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 292
    .local v1, "scpmpkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 293
    .local v2, "hasValidItem":Z
    const-string v3, "NetSpeedWhiteList"

    const-string/jumbo v4, "hasValidItemFromDB!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_16
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_27

    move-object v0, v3

    .line 299
    goto :goto_45

    .line 296
    :catch_27
    move-exception v3

    .line 297
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetSpeedWhiteList"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_45
    if-eqz v0, :cond_88

    .line 302
    :cond_47
    :goto_47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 303
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 304
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "item":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "category":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "data1":Ljava/lang/String;
    const-string/jumbo v7, "unlimit_pkg"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    const-string/jumbo v7, "whitelist"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 308
    const/4 v7, 0x1

    .line 309
    .end local v2    # "hasValidItem":Z
    .local v7, "hasValidItem":Z
    iget-object v8, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v8

    .line 310
    :try_start_78
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 311
    monitor-exit v8

    .line 312
    move v2, v7

    goto :goto_84

    .line 311
    :catchall_80
    move-exception v2

    monitor-exit v8
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_80

    throw v2

    .line 314
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "data1":Ljava/lang/String;
    .end local v7    # "hasValidItem":Z
    .restart local v2    # "hasValidItem":Z
    :cond_83
    goto :goto_47

    .line 316
    :cond_84
    :goto_84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_90

    .line 318
    :cond_88
    const-string v3, "NetSpeedWhiteList"

    const-string/jumbo v4, "hasValidItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_90
    return v2
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 134
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    .line 137
    :cond_10
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2d

    .line 138
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 139
    .local v0, "mMusicIsActive":Z
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v1

    .line 140
    .local v1, "mRecordIsActive":Z
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result v2

    .line 141
    .local v2, "mIsUsingAudio":Z
    if-nez v0, :cond_29

    if-eqz v1, :cond_2d

    :cond_29
    if-eqz v2, :cond_2d

    .line 142
    const/4 v3, 0x1

    return v3

    .line 145
    .end local v0    # "mMusicIsActive":Z
    .end local v1    # "mRecordIsActive":Z
    .end local v2    # "mIsUsingAudio":Z
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 11

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "cursorPolicy":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 261
    .local v1, "isNeedUpdate":Z
    sget-boolean v2, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->DEBUG_SCPM:Z

    const-string v3, "NetSpeedWhiteList"

    if-eqz v2, :cond_e

    .line 262
    const-string/jumbo v2, "isNeedUpdateSCPMPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_20

    move-object v0, v2

    .line 268
    goto :goto_27

    .line 266
    :catch_20
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    if-eqz v0, :cond_70

    .line 270
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 271
    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "policyName":Ljava/lang/String;
    const-string/jumbo v4, "policyVersion"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "policyVersion":Ljava/lang/String;
    const-string v5, "dnbanet"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x1

    .line 276
    goto :goto_6d

    .line 278
    .end local v2    # "policyName":Ljava/lang/String;
    .end local v4    # "policyVersion":Ljava/lang/String;
    :cond_6c
    goto :goto_29

    .line 279
    :cond_6d
    :goto_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_70
    return v1
.end method

.method private isSCPMAvailable()Z
    .registers 4

    .line 251
    sget-boolean v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    .line 252
    const-string v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_c
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2
.end method

.method private isSCPMWhitelsit(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 153
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 155
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1e
    goto :goto_9

    .line 156
    :cond_1f
    monitor-exit v0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 156
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 359
    const-string/jumbo v0, "mWhitelistIgnoreNetworkLimit:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, "app":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .end local v2    # "app":Ljava/lang/String;
    goto :goto_f

    .line 364
    :cond_23
    monitor-exit v0

    .line 366
    return-void

    .line 364
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public duplicateNoNetworkUseUid()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUseUid:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-object v0
.end method

.method public getWhiteUidList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    invoke-virtual {v3, v2}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getUidForPackageName(Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, "uid":I
    if-lez v3, :cond_26

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_26
    goto :goto_b

    .line 100
    :cond_27
    return-object v0
.end method

.method public isNoNetworkUseApp(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 79
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUseUid:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1a

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_1a
    goto :goto_6

    .line 84
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isNoNetworkUseApp(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->noNetworkUsePkg:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 71
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 72
    const/4 v0, 0x1

    return v0

    .line 70
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 75
    :cond_14
    return v2
.end method

.method public isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 104
    const-string/jumbo v0, "share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetSpeedWhiteList"

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 105
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    invoke-virtual {v0, p2}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "names":[Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 107
    array-length v4, v0

    move v5, v1

    :goto_17
    if-ge v5, v4, :cond_36

    aget-object v6, v0, v5

    .line 108
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isSCPMWhitelsit(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 109
    const-string v1, " share uid isSCPMWhitelsit "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v3

    .line 112
    :cond_27
    invoke-direct {p0, v6, p2}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isMusicOrRecordActive(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 113
    const-string v1, " share uid isMusicOrRecordActive "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v3

    .line 107
    .end local v6    # "name":Ljava/lang/String;
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 118
    .end local v0    # "names":[Ljava/lang/String;
    :cond_36
    goto :goto_4f

    .line 119
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isSCPMWhitelsit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 120
    const-string v0, " isSCPMWhitelsit "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v3

    .line 124
    :cond_43
    invoke-direct {p0, p1, p2}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isMusicOrRecordActive(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 125
    const-string v0, " isMusicOrRecordActive "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v3

    .line 129
    :cond_4f
    :goto_4f
    return v1
.end method

.method public updateSCPMParametersFromDB()V
    .registers 3

    .line 237
    sget-boolean v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->DEBUG_SCPM:Z

    const-string v1, "NetSpeedWhiteList"

    if-eqz v0, :cond_c

    .line 238
    const-string/jumbo v0, "updateSCPMParametersFromDB"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_c
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 241
    return-void

    .line 243
    :cond_13
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 244
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->getSCPMPolicyItemFromDB()V

    goto :goto_29

    .line 246
    :cond_23
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for dnbanet"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_29
    return-void
.end method
