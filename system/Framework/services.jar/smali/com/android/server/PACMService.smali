.class public final Lcom/android/server/PACMService;
.super Lcom/android/server/SystemService;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PACMService$PAC_Packet;,
        Lcom/android/server/PACMService$PACServiceSocketThread;
    }
.end annotation


# static fields
.field private static final ACTION_EM_SYNC:Ljava/lang/String; = "com.android.server.em.EM_SYNC_TOKEN_STATE"

.field private static final ACTION_GALAXY_DIAG_START:Ljava/lang/String; = "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

.field private static final ACTION_GALAXY_DIAG_STOP:Ljava/lang/String; = "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

.field private static final CACHE_TAG:Ljava/lang/String; = "MODE"

.field private static final GALAXY_DIAG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor"

.field private static final MESSAGE_CHECK_BOARDCAST_RECEIVER:I = 0x1

.field public static final NOK:I = 0x0

.field public static final OK:I = 0x1

.field private static final PROP_SECURELOCK_PROPERTY:Ljava/lang/String; = "sys.locksecured"

.field public static final PROTOCOL_VERSION:I = 0x1

.field public static final SERVICE_VERSION:Ljava/lang/String; = "10.6.0"

.field private static final SS_DIAG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor.ve"

.field private static final TAG:Ljava/lang/String; = "PACMService"

.field private static final VISUAL_DIAG_PACKAGE_NAME:Ljava/lang/String; = "kr.co.avad.diagnostictool"

.field public static mGalaxyDiag:Z

.field private static final mIsJDMDevice:Z

.field private static mReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAtMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEmTokenState:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadSocket:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    const-string/jumbo v0, "jdm"

    const-string/jumbo v1, "in_house"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PACMService;->mIsJDMDevice:Z

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const-string v0, "PACMService"

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    .line 85
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    .line 98
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    .line 134
    new-instance v1, Lcom/android/server/PACMService$1;

    invoke-direct {v1, p0}, Lcom/android/server/PACMService$1;-><init>(Lcom/android/server/PACMService;)V

    iput-object v1, p0, Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v1, Lcom/android/server/PACMService$2;

    invoke-direct {v1, p0}, Lcom/android/server/PACMService$2;-><init>(Lcom/android/server/PACMService;)V

    iput-object v1, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    .line 105
    iget-object v1, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/PACMService;->registerProtectedCommandList()V

    .line 109
    :try_start_36
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/PACMService$PACServiceSocketThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/PACMService;->mThreadSocket:Ljava/lang/Thread;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_46} :catch_47

    .line 114
    goto :goto_50

    .line 111
    :catch_47
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to start PACM Service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    const-string v1, "Success to start PACM Service(S-ver : 10.6.0/ P-ver : 1)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 67
    sget-boolean v0, Lcom/android/server/PACMService;->mIsJDMDevice:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PACMService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PACMService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PACMService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PACMService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/PACMService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/PACMService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/PACMService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PACMService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PACMService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/PACMService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/PACMService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PACMService;

    .line 67
    iget-object v0, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packagename"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 183
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "PACMService"

    const/4 v2, 0x0

    if-nez p1, :cond_12

    .line 184
    const-string/jumbo v3, "package name is null in isPackageInstalled"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v2

    .line 189
    :cond_12
    :try_start_12
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_15} :catch_49

    .line 193
    nop

    .line 195
    const-string v3, "android"

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is installed but signature is not matched"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v2

    .line 199
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is installed and signature is matched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x1

    return v1

    .line 190
    :catch_49
    move-exception v3

    .line 191
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "GalaxyDiag app is not installed!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v2
.end method

.method private registerForBroadcasts()V
    .registers 4

    .line 230
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    sget-object v1, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 239
    nop

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_2f

    .line 236
    :catch_24
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PACMService"

    const-string v2, "Failed to add Broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private registerProtectedCommandList()V
    .registers 10

    .line 161
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;

    iget-object v2, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;

    iget-object v3, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v4, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;

    iget-object v5, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;-><init>(Landroid/content/Context;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    new-instance v4, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;

    iget-object v5, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;-><init>(Landroid/content/Context;)V

    aput-object v4, v0, v1

    .line 168
    .local v0, "classList":[Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
    const/4 v1, 0x0

    .line 169
    .local v1, "ret":I
    array-length v4, v0

    :goto_2d
    if-ge v2, v4, :cond_5c

    aget-object v5, v0, v2

    .line 170
    .local v5, "iter":Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
    iget-object v6, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->getList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->putCommandList(Ljava/util/LinkedHashMap;Ljava/util/List;)I

    move-result v6

    move v1, v6

    .line 171
    if-eq v1, v3, :cond_59

    .line 172
    const-string v6, "PACMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add class command list("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_5d

    .line 169
    .end local v5    # "iter":Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 177
    .end local v0    # "classList":[Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
    .end local v1    # "ret":I
    :cond_5c
    goto :goto_61

    .line 175
    :catch_5d
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_61
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 127
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_16

    .line 128
    const-string v0, "PACMService"

    const-string v1, "PHASE_LOCK_SETTINGS_READY"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    .line 130
    iget-object v0, p0, Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 122
    const-string v0, "PACMService"

    const-string/jumbo v1, "onStart() "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
