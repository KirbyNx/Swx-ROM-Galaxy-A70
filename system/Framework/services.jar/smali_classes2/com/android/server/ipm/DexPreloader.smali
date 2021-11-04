.class public Lcom/android/server/ipm/DexPreloader;
.super Ljava/lang/Object;
.source "DexPreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/DexPreloader$DexPreloadTask;,
        Lcom/android/server/ipm/DexPreloader$Dex2OatTask;,
        Lcom/android/server/ipm/DexPreloader$PackageMaintainer;,
        Lcom/android/server/ipm/DexPreloader$MainHandler;,
        Lcom/android/server/ipm/DexPreloader$ADCPRecords;,
        Lcom/android/server/ipm/DexPreloader$CacheAPP;
    }
.end annotation


# static fields
.field private static final ACTION_HANDLE_2OAT_DEX:I = 0x3

.field private static final ACTION_HANDLE_COMPLIE_DEX:I = 0x6

.field private static final ACTION_HANDLE_PACKAGE_ADD:I = 0x1

.field private static final ACTION_HANDLE_PACKAGE_DEL:I = 0x2

.field private static final ACTION_HANDLE_PRELOAD_DEX:I = 0x5

.field private static final ACTION_HANDLE_SAVE_PROFILE:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMEOUT_INTERVAL:J = 0x7530L

.field private static mMainHandler:Landroid/os/Handler;

.field private static sDexPredloader:Lcom/android/server/ipm/DexPreloader;


# instance fields
.field private DELAY_ACTOR_S:J

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mCachedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/ipm/DexPreloader$CacheAPP;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-string v0, "DexPreloader"

    sput-object v0, Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ipm/DexPreloader;->sDexPredloader:Lcom/android/server/ipm/DexPreloader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "ht"    # Landroid/os/HandlerThread;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/ipm/DexPreloader;->DELAY_ACTOR_S:J

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    .line 432
    new-instance v0, Lcom/android/server/ipm/DexPreloader$1;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/DexPreloader$1;-><init>(Lcom/android/server/ipm/DexPreloader;)V

    iput-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/server/ipm/DexPreloader$MainHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ipm/DexPreloader$MainHandler;-><init>(Lcom/android/server/ipm/DexPreloader;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/ipm/DexPreloader;->mMainHandler:Landroid/os/Handler;

    .line 173
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/android/server/ipm/DexPreloader;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 175
    sput-object p0, Lcom/android/server/ipm/DexPreloader;->sDexPredloader:Lcom/android/server/ipm/DexPreloader;

    .line 176
    new-instance v1, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;-><init>(Lcom/android/server/ipm/DexPreloader;Lcom/android/server/ipm/DexPreloader$1;)V

    iget-wide v2, p0, Lcom/android/server/ipm/DexPreloader;->DELAY_ACTOR_S:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 178
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/DexPreloader;->pool:Ljava/util/concurrent/ExecutorService;

    .line 179
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/DexPreloader;->isShowIconPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/server/ipm/DexPreloader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ipm/DexPreloader;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;

    .line 50
    iget-wide v0, p0, Lcom/android/server/ipm/DexPreloader;->DELAY_ACTOR_S:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/ipm/DexPreloader;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ipm/DexPreloader;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ipm/DexPreloader;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ipm/DexPreloader;)Landroid/content/pm/PackageManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/DexPreloader;

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public static excute(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p0, "r"    # Landroid/content/pm/ApplicationInfo;

    .line 103
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 104
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 105
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/android/server/ipm/DexPreloader;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method public static getInstanse()Lcom/android/server/ipm/DexPreloader;
    .registers 1

    .line 99
    sget-object v0, Lcom/android/server/ipm/DexPreloader;->sDexPredloader:Lcom/android/server/ipm/DexPreloader;

    return-object v0
.end method

.method private isShowIconPackage(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/android/server/ipm/DexPreloader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 258
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 260
    const/4 v2, 0x1

    return v2

    .line 262
    :cond_25
    return v2
.end method


# virtual methods
.method public checkAppNeed2Dex(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 127
    const-string v0, "com.smile.gifmaker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    const-string v0, "com.ss.android.ugc.aweme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_31

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 131
    :try_start_15
    iget-object v2, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget v2, v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    if-nez v2, :cond_2c

    .line 132
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 134
    :cond_2c
    monitor-exit v0

    .line 135
    return v1

    .line 134
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v1

    .line 128
    :cond_31
    :goto_31
    return v1
.end method

.method public dexCompile(JLjava/lang/String;)V
    .registers 7
    .param p1, "len"    # J
    .param p3, "pkg"    # Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_18

    const-wide/16 v0, 0x7800

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    goto :goto_18

    .line 123
    :cond_d
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;

    invoke-direct {v1, p0, p3}, Lcom/android/server/ipm/DexPreloader$Dex2OatTask;-><init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void

    .line 120
    :cond_18
    :goto_18
    sget-object v0, Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "large prf pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[adcp]:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.sys.dex2oat_en"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string/jumbo v1, "persist.sys.dexpreload_en"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]]:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string/jumbo v1, "persist.sys.libpreload_en"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    const-string v0, "-----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/DexPreloader$CacheAPP;>;>;"
    new-instance v3, Lcom/android/server/ipm/DexPreloader$2;

    invoke-direct {v3, p0}, Lcom/android/server/ipm/DexPreloader$2;-><init>(Lcom/android/server/ipm/DexPreloader;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    const/16 v3, 0x32

    .line 472
    .local v3, "limit":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 473
    .local v5, "tmp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/DexPreloader$CacheAPP;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-wide v6, v6, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_88

    goto :goto_6d

    .line 474
    :cond_88
    add-int/lit8 v6, v3, -0x1

    .end local v3    # "limit":I
    .local v6, "limit":I
    if-nez v3, :cond_8e

    move v3, v6

    goto :goto_f7

    .line 475
    :cond_8e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-object v7, v7, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget v8, v8, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-object v8, v8, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    iget-boolean v8, v8, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->succeed:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-object v8, v8, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    iget-wide v8, v8, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->artSize:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-wide v7, v7, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-wide v9, v9, Lcom/android/server/ipm/DexPreloader$CacheAPP;->removeTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    .end local v5    # "tmp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/DexPreloader$CacheAPP;>;"
    move v3, v6

    goto/16 :goto_6d

    .line 478
    .end local v6    # "limit":I
    .restart local v3    # "limit":I
    :cond_f7
    :goto_f7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "enable"    # Ljava/lang/String;

    .line 482
    const-string/jumbo v0, "preload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "off"

    const-string/jumbo v2, "on"

    const-string v3, "false"

    const-string/jumbo v4, "true"

    if-eqz v0, :cond_42

    .line 483
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "persist.sys.libpreload_en"

    const-string/jumbo v5, "persist.sys.dexpreload_en"

    if-eqz v0, :cond_2e

    .line 484
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v0, "set dexpreload on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11f

    .line 487
    :cond_2e
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 488
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v0, "set dexpreload off"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11f

    .line 492
    :cond_42
    const-string v0, "2oat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 493
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "persist.sys.dex2oat_en"

    if-eqz v0, :cond_5e

    .line 494
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v0, "set dex2oat on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11f

    .line 496
    :cond_5e
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 497
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v0, "set dex2oat off"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11f

    .line 500
    :cond_6f
    const-string v0, "apps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 501
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 502
    .local v0, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/ipm/DexPreloader$CacheAPP;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    .line 503
    .local v2, "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached apps is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mSystem:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    .end local v2    # "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    goto :goto_81

    .line 505
    :cond_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installed apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " did not launched once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .end local v0    # "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/ipm/DexPreloader$CacheAPP;>;"
    goto :goto_11f

    :cond_d5
    const-string v0, "app"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 507
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 508
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/ipm/DexPreloader$CacheAPP;-><init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;IZJJI)V

    invoke-virtual {v0, p3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "test only one app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in dex2oat solution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11f

    .line 510
    :cond_113
    const-string/jumbo v0, "savedb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 511
    invoke-virtual {p0}, Lcom/android/server/ipm/DexPreloader;->launchedPkgDbOperation()V

    .line 513
    :cond_11f
    :goto_11f
    return-void
.end method

.method public launchedPkgDbOperation()V
    .registers 12

    .line 139
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 140
    sget-object v0, Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;

    const-string v1, "db is closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 143
    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v0, "values":Landroid/content/ContentValues;
    sget-object v1, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_1a
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ipm/DBManager;->beginTransaction()V

    .line 147
    iget-object v2, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_24} :catch_c9
    .catchall {:try_start_1a .. :try_end_24} :catchall_c7

    .line 148
    :try_start_24
    iget-object v3, p0, Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    .line 149
    .local v4, "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    iget-wide v5, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_61

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from tbl_PkgSummary where user_pkg = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/ipm/DBManager;->execSQL(Ljava/lang/String;)V

    .line 153
    .end local v5    # "sql":Ljava/lang/String;
    :cond_61
    const-string/jumbo v5, "user_pkg"

    iget-object v6, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v5, "launched"

    iget v6, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v5, "dex_compiled"

    iget-object v6, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mADCPRecords:Lcom/android/server/ipm/DexPreloader$ADCPRecords;

    iget-wide v6, v6, Lcom/android/server/ipm/DexPreloader$ADCPRecords;->artSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string/jumbo v5, "time_add"

    iget-wide v6, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string/jumbo v5, "time_gap"

    iget-wide v6, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    iget-wide v8, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->removeTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v5

    const-string/jumbo v6, "tbl_PkgSummary"

    const-string/jumbo v7, "user_pkg"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mPkgName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v0, v7, v8}, Lcom/android/server/ipm/DBManager;->insertOrReplace(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 160
    .end local v4    # "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    goto/16 :goto_2e

    .line 161
    :cond_b7
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ipm/DBManager;->setTransactionSuccessful()V

    .line 162
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_24 .. :try_end_bf} :catchall_c4

    .line 166
    :try_start_bf
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v2
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_f8

    goto :goto_e9

    .line 162
    :catchall_c4
    move-exception v3

    :try_start_c5
    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    .end local v0    # "values":Landroid/content/ContentValues;
    .end local p0    # "this":Lcom/android/server/ipm/DexPreloader;
    :try_start_c6
    throw v3
    :try_end_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c6 .. :try_end_c7} :catch_c9
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    .line 166
    .restart local v0    # "values":Landroid/content/ContentValues;
    .restart local p0    # "this":Lcom/android/server/ipm/DexPreloader;
    :catchall_c7
    move-exception v2

    goto :goto_ef

    .line 163
    :catch_c9
    move-exception v2

    .line 164
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_ca
    sget-object v3, Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insert or update db failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_ca .. :try_end_e5} :catchall_c7

    .line 166
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_e5
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v2

    :goto_e9
    invoke-virtual {v2}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 167
    nop

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 166
    :goto_ef
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 167
    nop

    .end local v0    # "values":Landroid/content/ContentValues;
    .end local p0    # "this":Lcom/android/server/ipm/DexPreloader;
    throw v2

    .line 168
    .restart local v0    # "values":Landroid/content/ContentValues;
    .restart local p0    # "this":Lcom/android/server/ipm/DexPreloader;
    :catchall_f8
    move-exception v2

    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_f8

    throw v2
.end method

.method public storeDexProfile(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 110
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 111
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 114
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 115
    sget-object v1, Lcom/android/server/ipm/DexPreloader;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method
