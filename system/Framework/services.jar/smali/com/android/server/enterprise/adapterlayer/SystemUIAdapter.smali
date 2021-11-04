.class public Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
    }
.end annotation


# static fields
.field private static final KEY_STATUSBAR_EXPANSION:Ljava/lang/String; = "knoxmdm_key_statusbar_disable_expansion"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "SystemUIAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# instance fields
.field private adapterUserId:I

.field private isCallbackDied:Z

.field private isFistcalled:Z

.field private final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mKioskModeService:Lcom/samsung/android/knox/kiosk/IKioskMode;

.field private mRegisteredCount:I

.field private mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 42
    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 43
    iput v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    .line 171
    nop

    .line 172
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    return p1
.end method

.method private disableStatusBar(ZLjava/lang/String;)V
    .registers 11
    .param p1, "disable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1236
    .local v0, "token":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_6b
    .catchall {:try_start_4 .. :try_end_8} :catchall_69

    .line 1237
    .local v2, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_64

    .line 1238
    const-string/jumbo v3, "knoxmdm_key_statusbar_disable_expansion : "

    const/4 v4, 0x0

    if-nez p1, :cond_39

    .line 1239
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1241
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_64

    .line 1244
    :cond_39
    const/high16 v5, 0x10000

    iget-object v6, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1246
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v6, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_64} :catch_6b
    .catchall {:try_start_10 .. :try_end_64} :catchall_69

    .line 1254
    .end local v2    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_64
    :goto_64
    nop

    :goto_65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    goto :goto_76

    .line 1254
    :catchall_69
    move-exception v2

    goto :goto_77

    .line 1251
    :catch_6b
    move-exception v2

    .line 1252
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarExpansionAllowedAsUser() failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_69

    .line 1254
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_65

    .line 1256
    :goto_76
    return-void

    .line 1254
    :goto_77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v2
.end method

.method private getCurrentUserId()I
    .registers 5

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 250
    .local v1, "token":J
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    move v0, v3

    .line 251
    iget v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    if-eq v0, v3, :cond_18

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_17
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    goto :goto_18

    .line 256
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw v3

    .line 254
    :catch_17
    move-exception v3

    .line 256
    :cond_18
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    nop

    .line 258
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    monitor-enter v0

    .line 209
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    if-nez v1, :cond_12

    if-eqz p0, :cond_12

    .line 210
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    .line 211
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 213
    :cond_12
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 208
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKioskMode()Lcom/samsung/android/knox/kiosk/IKioskMode;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mKioskModeService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    if-nez v0, :cond_11

    .line 191
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mKioskModeService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 194
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mKioskModeService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    return-object v0
.end method

.method private getRestrictionPolicy()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_11

    .line 199
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 202
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method

.method private getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;
    .registers 2

    .line 185
    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_12

    .line 178
    nop

    .line 179
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 181
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private isCalledFromSystem()Z
    .registers 3

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_27

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCalledFromSystem() : no permission because non-system : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private isCalledFromSystemUI()Z
    .registers 6

    .line 228
    const-string v0, "SystemUIAdapter"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "caller":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 230
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 231
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 232
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_22

    move-object v2, v4

    .line 238
    .end local v3    # "index":I
    :cond_21
    goto :goto_2b

    .line 235
    .end local v2    # "caller":Ljava/lang/String;
    :catch_22
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "isCalledFromSystemUI() : fail to get caller name. "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v3, 0x0

    move-object v2, v3

    .line 239
    .local v2, "caller":Ljava/lang/String;
    :goto_2b
    if-eqz v2, :cond_38

    const-string v3, "android.uid.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_38

    .line 243
    :cond_36
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_38
    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCalledFromSystemUI() : no permission because not systemui : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1
.end method

.method private isComContainerId(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 262
    const-string v0, "SystemUIAdapter"

    const/4 v1, 0x0

    .line 263
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 265
    .local v2, "token":J
    :try_start_7
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z

    move-result v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_19
    .catchall {:try_start_7 .. :try_end_11} :catchall_17

    move v1, v4

    .line 269
    nop

    :goto_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    goto :goto_22

    .line 269
    :catchall_17
    move-exception v0

    goto :goto_3a

    .line 266
    :catch_19
    move-exception v4

    .line 267
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1a
    const-string/jumbo v5, "isComContainerId() has failed. "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_17

    .line 269
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_13

    .line 271
    :goto_22
    if-eqz v1, :cond_39

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isComContainerId() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_39
    return v1

    .line 269
    :goto_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw v0
.end method

.method private onKeyguardLaunched()V
    .registers 6

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 123
    .local v0, "token":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    if-eqz v2, :cond_18

    .line 124
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    .line 125
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/knox/ISecurityPolicy;->onKeyguardLaunched()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1f
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 130
    :cond_18
    nop

    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    goto :goto_2a

    .line 130
    :catchall_1d
    move-exception v2

    goto :goto_2b

    .line 127
    :catch_1f
    move-exception v2

    .line 128
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_20
    const-string v3, "SystemUIAdapter"

    const-string/jumbo v4, "onKeyguardLaunched() has failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_1d

    .line 130
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_19

    .line 132
    :goto_2a
    return-void

    .line 130
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    throw v2
.end method


# virtual methods
.method public clearAllNotificationsAsUser(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllNotificationsAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 287
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_1e
    const/4 v0, 0x1

    .line 290
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 292
    .local v2, "token":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 293
    .local v4, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v4, :cond_2b

    .line 294
    const/4 v0, 0x0

    goto :goto_2e

    .line 296
    :cond_2b
    invoke-interface {v4, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_34
    .catchall {:try_start_23 .. :try_end_2e} :catchall_32

    .line 302
    .end local v4    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    goto :goto_3c

    .line 302
    :catchall_32
    move-exception v1

    goto :goto_3d

    .line 298
    :catch_34
    move-exception v4

    .line 299
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_35
    const-string v5, "clearAllNotificationsAsUser failed with Exception"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_32

    .line 300
    const/4 v0, 0x0

    .end local v4    # "ex":Ljava/lang/Exception;
    goto :goto_2e

    .line 304
    :goto_3c
    return v0

    .line 302
    :goto_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    throw v1
.end method

.method public excludeExternalStorageForFailedPasswordsWipeAsUser(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "exclude"    # Z

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "excludeExternalStorageForFailedPasswordsWipeAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_25

    .line 493
    return-void

    .line 495
    :cond_25
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 497
    .local v0, "hasSeparateChallenge":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthEnabled() excludeExternalStorageForFailedPasswordsWipeAsUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v2

    if-eq p1, v2, :cond_4e

    if-eqz v0, :cond_4e

    .line 501
    return-void

    .line 504
    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 505
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 506
    .local v4, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v4, :cond_6f

    .line 507
    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->excludeExternalStorageForFailedPasswordsWipe(Z)V
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_6f} :catch_79
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_6f} :catch_72
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6f} :catch_70

    .line 509
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v4    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_6f
    goto :goto_58

    .line 517
    :catch_70
    move-exception v1

    goto :goto_80

    .line 514
    :catch_72
    move-exception v2

    .line 515
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "excludeExternalStorageForFailedPasswordsWipe() Failed with RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_7f

    .line 510
    :catch_79
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "excludeExternalStorageForFailedPasswordsWipe() failed with NullPointerException."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_7f
    :goto_7f
    nop

    .line 520
    :goto_80
    return-void
.end method

.method public getAdapterId()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    return v0
.end method

.method public getRegisteredCount()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    return v0
.end method

.method public isKnoxStateMonitorRegistered()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .registers 9
    .param p1, "callback"    # Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerSystemUICallback() is called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystemUI()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 74
    const-string/jumbo v2, "registerSystemUICallback() has failed because it\'s only allowed to call by SystemUI "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v3

    .line 79
    :cond_26
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 80
    .local v2, "userId":I
    if-eqz v2, :cond_43

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerSystemUICallback() has failed because it\'s only allowed user_system, but userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v3

    .line 87
    :cond_43
    if-eqz p1, :cond_99

    .line 89
    :try_start_45
    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 90
    .local v4, "key":I
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {p1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;

    invoke-direct {v6, p0, v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    invoke-interface {v5, v6, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 92
    const-string/jumbo v5, "registerSystemUICallback() successfully added"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_66} :catch_68

    .line 94
    nop

    .end local v4    # "key":I
    goto :goto_69

    .line 93
    :catch_68
    move-exception v4

    .line 95
    :goto_69
    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 96
    const/4 v0, 0x1

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerSystemUICallback() callback has registered. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 100
    .local v4, "token":J
    :try_start_87
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_93
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    .line 103
    :goto_8a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    goto :goto_95

    .line 103
    :catchall_8e
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw v1

    .line 101
    :catch_93
    move-exception v1

    goto :goto_8a

    .line 105
    :goto_95
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->onKeyguardLaunched()V

    .line 106
    .end local v4    # "token":J
    goto :goto_9f

    .line 107
    :cond_99
    const-string/jumbo v3, "registerSystemUICallback() has failed."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_9f
    return v0
.end method

.method public setAdminLockEnabled(IZZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "licenseExpired"    # Z

    .line 1210
    const-string v0, "SystemUIAdapter"

    const-string/jumbo v1, "setAdminLockEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1212
    return-void

    .line 1214
    :cond_f
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_16

    .line 1215
    return-void

    .line 1218
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1219
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1220
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_37

    .line 1221
    invoke-interface {v3, p2, p3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setAdminLock(ZZ)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_37} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_37} :catch_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_38

    .line 1223
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_37
    goto :goto_20

    .line 1228
    :catch_38
    move-exception v1

    .line 1229
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "setAdminLockEnabled() Failed with Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 1226
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_40
    move-exception v1

    .line 1227
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setAdminLockEnabled() Failed with RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4f

    .line 1224
    :catch_48
    move-exception v1

    .line 1225
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setAdminLockEnabled() failed with NullPointerException."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4f
    :goto_4f
    nop

    .line 1231
    :goto_50
    return-void
.end method

.method public setAirplaneModeAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAirplaneModeAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 632
    return-void

    .line 634
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 635
    return-void

    .line 638
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 639
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 640
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 641
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setAirplaneModeAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 643
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 648
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 646
    :catch_51
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setAirplaneModeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 644
    :catch_59
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setAirplaneModeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 651
    :goto_61
    return-void
.end method

.method public setApplicationNameControlEnabledAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 1162
    const-string v0, "SystemUIAdapter"

    const-string/jumbo v1, "setApplicationNameEnabledAsUser()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1164
    return-void

    .line 1166
    :cond_f
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_16

    .line 1167
    return-void

    .line 1170
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1171
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1172
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_37

    .line 1173
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setApplicationNameControlEnabled(Z)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_37} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_37} :catch_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_38

    .line 1175
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_37
    goto :goto_20

    .line 1180
    :catch_38
    move-exception v1

    .line 1181
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "setApplicationNameEnabledAsUser() Failed with Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 1178
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_40
    move-exception v1

    .line 1179
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setApplicationNameEnabledAsUser() Failed with RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4f

    .line 1176
    :catch_48
    move-exception v1

    .line 1177
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setApplicationNameEnabledAsUser() failed with NullPointerException."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4f
    :goto_4f
    nop

    .line 1183
    :goto_50
    return-void
.end method

.method public setBluetoothAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 860
    return-void

    .line 862
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 863
    return-void

    .line 866
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 867
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 868
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 869
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setBluetoothAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 871
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 876
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 874
    :catch_51
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setBluetoothAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 872
    :catch_59
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setBluetoothAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 879
    :goto_61
    return-void
.end method

.method public setCameraAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 794
    return-void

    .line 796
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 797
    return-void

    .line 800
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 801
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 802
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 803
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setCameraAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 805
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 810
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 808
    :catch_51
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setCameraAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 806
    :catch_59
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setCameraAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 813
    :goto_61
    return-void
.end method

.method public setCellularDataAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCellularDataAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 706
    return-void

    .line 708
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 709
    return-void

    .line 712
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 713
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 714
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 715
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setCellularDataAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 717
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 722
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 720
    :catch_51
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setCellularDataAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 718
    :catch_59
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setCellularDataAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 725
    :goto_61
    return-void
.end method

.method public setFaceRecognitionEvenCameraBlockedAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFaceRecognitionEvenCameraBlockedAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 824
    return-void

    .line 826
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 827
    return-void

    .line 830
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 831
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 832
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 833
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 835
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 845
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 840
    :catch_51
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setFaceRecognitionEvenCameraBlockedAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 836
    :catch_59
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setFaceRecognitionEvenCameraBlockedAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 848
    :goto_61
    return-void
.end method

.method public setGPSStateChangeAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGPSStateChangeAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1048
    return-void

    .line 1050
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 1051
    return-void

    .line 1054
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1055
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1056
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 1057
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setGPSStateChangeAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 1059
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 1064
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 1062
    :catch_51
    move-exception v0

    .line 1063
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setGPSStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 1060
    :catch_59
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setGPSStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 1067
    :goto_61
    return-void
.end method

.method public setKioskModeEnabledAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKioskModeEnabled() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 388
    return-void

    .line 390
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 391
    return-void

    .line 394
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 395
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 396
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 397
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setKioskModeEnabled(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 399
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 404
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 402
    :catch_51
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setKioskModeEnabled() failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 400
    :catch_59
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setKioskModeEnabled() failed with NullPointerException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 407
    :goto_61
    return-void
.end method

.method public setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "isAllowed"    # Z

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLocationProviderAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1018
    return-void

    .line 1020
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_35

    .line 1021
    return-void

    .line 1024
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1025
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1026
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_56

    .line 1027
    invoke-interface {v3, p2, p3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLocationProviderAllowed(Ljava/lang/String;Z)V
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_56} :catch_61
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_56} :catch_59
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_56} :catch_57

    .line 1029
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_56
    goto :goto_3f

    .line 1034
    :catch_57
    move-exception v0

    goto :goto_69

    .line 1032
    :catch_59
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setLocationProviderAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_68

    .line 1030
    :catch_61
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setLocationProviderAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_68
    :goto_68
    nop

    .line 1037
    :goto_69
    return-void
.end method

.method public setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "iccIds"    # [Ljava/lang/String;

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockedIccIdsAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1077
    return-void

    .line 1079
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_25

    .line 1080
    return-void

    .line 1083
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1084
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1085
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_46

    .line 1086
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockedIccIds([Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_46} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_46} :catch_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_47

    .line 1088
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_46
    goto :goto_2f

    .line 1093
    :catch_47
    move-exception v0

    goto :goto_59

    .line 1091
    :catch_49
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setLockedIccIdsAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_58

    .line 1089
    :catch_51
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setLockedIccIdsAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_58
    :goto_58
    nop

    .line 1095
    :goto_59
    return-void
.end method

.method public setLockscreenInvisibleOverlayAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockscreenInvisibleOverlayAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1105
    return-void

    .line 1107
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_25

    .line 1108
    return-void

    .line 1111
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1112
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1113
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_46

    .line 1114
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenInvisibleOverlay(Z)V
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_46} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_46} :catch_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_47

    .line 1116
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_46
    goto :goto_2f

    .line 1121
    :catch_47
    move-exception v0

    goto :goto_59

    .line 1119
    :catch_49
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setLockscreenInvisibleOverlayAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_58

    .line 1117
    :catch_51
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setLockscreenInvisibleOverlayAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_58
    :goto_58
    nop

    .line 1123
    :goto_59
    return-void
.end method

.method public setLockscreenWallpaperAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockscreenWallpaperAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1133
    return-void

    .line 1135
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_25

    .line 1136
    return-void

    .line 1139
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1140
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1141
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_46

    .line 1142
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenWallpaper(Z)V
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_46} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_46} :catch_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_47

    .line 1144
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_46
    goto :goto_2f

    .line 1149
    :catch_47
    move-exception v0

    goto :goto_59

    .line 1147
    :catch_49
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setLockscreenWallpaperAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_58

    .line 1145
    :catch_51
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setLockscreenWallpaperAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_58
    :goto_58
    nop

    .line 1151
    :goto_59
    return-void
.end method

.method public setMaximumFailedPasswordsForDisableAsUser(IILjava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "num"    # I
    .param p3, "PkgName"    # Ljava/lang/String;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaximumFailedPasswordsForDisableAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 421
    return-void

    .line 423
    :cond_2e
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 425
    .local v0, "hasSeparateChallenge":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaximumFailedPasswordsForDisableAsUser() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v2

    if-eq p1, v2, :cond_57

    if-eqz v0, :cond_57

    .line 429
    return-void

    .line 432
    :cond_57
    :try_start_57
    const-string/jumbo v2, "ro.organization_owned"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "organizationOwnedDevice":Ljava/lang/String;
    if-eqz v2, :cond_6b

    const-string/jumbo v3, "true"

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v3, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    .line 435
    .local v3, "isOrganizationOwnedDeviceEnabled":Z
    :goto_6c
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 436
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 437
    .local v6, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v6, :cond_97

    .line 438
    if-eqz p1, :cond_94

    if-nez v0, :cond_94

    if-nez v3, :cond_94

    .line 439
    invoke-interface {v6, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMaximumFailedPasswordsForProfileDisable(I)V

    goto :goto_97

    .line 441
    :cond_94
    invoke-interface {v6, p2, p3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMaximumFailedPasswordsForDisable(ILjava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_57 .. :try_end_97} :catch_a3
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_97} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_97} :catch_99

    .line 444
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v6    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_97
    :goto_97
    goto :goto_76

    .line 435
    .end local v2    # "organizationOwnedDevice":Ljava/lang/String;
    .end local v3    # "isOrganizationOwnedDeviceEnabled":Z
    :cond_98
    goto :goto_aa

    .line 449
    :catch_99
    move-exception v1

    goto :goto_ab

    .line 447
    :catch_9b
    move-exception v2

    .line 448
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "setMaximumFailedPasswordsForDisable() Failed with RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_aa

    .line 445
    :catch_a3
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "setMaximumFailedPasswordsForDisable() failed with NullPointerException."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_aa
    nop

    .line 452
    :goto_ab
    return-void
.end method

.method public setMultifactorAuthEnabled(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 1186
    const-string v0, "SystemUIAdapter"

    const-string/jumbo v1, "setMultifactorAuthEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1188
    return-void

    .line 1190
    :cond_f
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_16

    .line 1191
    return-void

    .line 1194
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1195
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 1196
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_37

    .line 1197
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMultifactorAuthEnabled(Z)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_37} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_37} :catch_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_38

    .line 1199
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_37
    goto :goto_20

    .line 1204
    :catch_38
    move-exception v1

    .line 1205
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "setMultifactorAuthEnabled() Failed with Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 1202
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_40
    move-exception v1

    .line 1203
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setMultifactorAuthEnabled() Failed with RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4f

    .line 1200
    :catch_48
    move-exception v1

    .line 1201
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setMultifactorAuthEnabled() failed with NullPointerException."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4f
    :goto_4f
    nop

    .line 1207
    :goto_50
    return-void
.end method

.method public setNFCAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNFCAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 735
    return-void

    .line 737
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 738
    return-void

    .line 741
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 742
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 743
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 744
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 746
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 751
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 749
    :catch_51
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setNFCAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 747
    :catch_59
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setNFCAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 754
    :goto_61
    return-void
.end method

.method public setNFCStateChangeAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNFCStateChangeAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 892
    return-void

    .line 894
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 895
    return-void

    .line 898
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 899
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 900
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 901
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCStateChangeAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 903
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 908
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 906
    :catch_51
    move-exception v0

    .line 907
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setNFCStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 904
    :catch_59
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setNFCStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 911
    :goto_61
    return-void
.end method

.method public setNavigationBarHiddenAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "hidden"    # Z

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNavigationBarHiddenAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hidden = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 357
    return-void

    .line 359
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 360
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_33

    .line 361
    return-void

    .line 365
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 366
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 367
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_54

    .line 368
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNavigationBarHidden(Z)V
    :try_end_54
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_54} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_54} :catch_57
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_54} :catch_55

    .line 370
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_54
    goto :goto_3d

    .line 375
    :catch_55
    move-exception v0

    goto :goto_67

    .line 373
    :catch_57
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setNavigationBarHidden() failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_66

    .line 371
    :catch_5f
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setNavigationBarHidden() failed with NullPointerException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_66
    :goto_66
    nop

    .line 378
    :goto_67
    return-void
.end method

.method public setPasswordLockDelayAsUser(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "time"    # I

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPasswordLockDelayAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 530
    return-void

    .line 532
    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 534
    .local v0, "hasSeparateChallenge":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthEnabled() setPasswordLockDelayAsUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v2

    if-eq p1, v2, :cond_4f

    if-eqz v0, :cond_4f

    .line 537
    return-void

    .line 540
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 541
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 542
    .local v4, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v4, :cond_70

    .line 543
    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordLockDelay(I)V
    :try_end_70
    .catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_70} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_70} :catch_73
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_70} :catch_71

    .line 545
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v4    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_70
    goto :goto_59

    .line 550
    :catch_71
    move-exception v1

    goto :goto_83

    .line 548
    :catch_73
    move-exception v2

    .line 549
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "setPasswordLockDelay() Failed with RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_82

    .line 546
    :catch_7b
    move-exception v2

    .line 547
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "setPasswordLockDelay() failed with NullPointerException."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_82
    :goto_82
    nop

    .line 553
    :goto_83
    return-void
.end method

.method public setPasswordVisibilityEnabledAsUser(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "allow"    # Z

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPasswordVisibilityEnabledAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 567
    return-void

    .line 569
    :cond_26
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 571
    .local v0, "hasSeparateChallenge":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasswordVisibilityEnabledAsUser() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v2

    if-eq p1, v2, :cond_4f

    if-eqz v0, :cond_4f

    .line 574
    return-void

    .line 577
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 578
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 579
    .local v4, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v4, :cond_70

    .line 580
    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordVisibilityEnabled(Z)V
    :try_end_70
    .catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_70} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_70} :catch_73
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_70} :catch_71

    .line 582
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v4    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_70
    goto :goto_59

    .line 587
    :catch_71
    move-exception v1

    goto :goto_83

    .line 585
    :catch_73
    move-exception v2

    .line 586
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "setPasswordVisibilityEnabled() Failed with RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_82

    .line 583
    :catch_7b
    move-exception v2

    .line 584
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "setPasswordVisibilityEnabled() failed with NullPointerException."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_82
    :goto_82
    nop

    .line 590
    :goto_83
    return-void
.end method

.method public setPwdChangeRequestedAsUser(II)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "flag"    # I

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPwdChangeRequestedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 462
    return-void

    .line 464
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 465
    return-void

    .line 468
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 469
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 470
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 471
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPwdChangeRequested(I)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 473
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 478
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 476
    :catch_51
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setPwdChangeRequested() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 474
    :catch_59
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setPwdChangeRequested() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 481
    :goto_61
    return-void
.end method

.method public setRoamingDataAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRoamingDataAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 924
    return-void

    .line 926
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 927
    return-void

    .line 930
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 931
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 932
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 933
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setRoamingAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 935
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 940
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 938
    :catch_51
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setRoamingDataAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 936
    :catch_59
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setRoamingDataAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 943
    :goto_61
    return-void
.end method

.method public setSettingsChangeAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSettingsChangeAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 602
    return-void

    .line 604
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 605
    return-void

    .line 608
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 609
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 610
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 611
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setSettingsChangeAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 613
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 618
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 616
    :catch_51
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setSettingsChangeAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 614
    :catch_59
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setSettingsChangeAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 621
    :goto_61
    return-void
.end method

.method public setStatusBarExpansionAllowedAsUser(IZLjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatusBarExpansionAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 665
    return-void

    .line 667
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 668
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_37

    .line 669
    return-void

    .line 672
    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    .line 676
    :cond_37
    if-nez p2, :cond_3e

    .line 677
    const/4 v0, 0x1

    :try_start_3a
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->disableStatusBar(ZLjava/lang/String;)V

    goto :goto_52

    .line 678
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getKioskMode()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getKioskMode()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    .line 679
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isStatusBarHiddenAsUser(I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 680
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->disableStatusBar(ZLjava/lang/String;)V

    .line 683
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 684
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 685
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_73

    .line 686
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarExpansionAllowed(Z)V
    :try_end_73
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_73} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_73} :catch_76
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_73} :catch_74

    .line 688
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_73
    goto :goto_5c

    .line 693
    :catch_74
    move-exception v0

    goto :goto_86

    .line 691
    :catch_76
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setStatusBarExpansionAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_85

    .line 689
    :catch_7e
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setStatusBarExpansionAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_85
    :goto_85
    nop

    .line 695
    :goto_86
    return-void
.end method

.method public setStatusBarHiddenAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "hidden"    # Z

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatusBarHiddenAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hidden = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 317
    return-void

    .line 319
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 320
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_33

    .line 321
    return-void

    .line 325
    :cond_33
    const/4 v0, 0x0

    if-eqz p2, :cond_3b

    .line 326
    const/4 v2, 0x1

    :try_start_37
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->disableStatusBar(ZLjava/lang/String;)V

    goto :goto_4f

    .line 327
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    .line 328
    const/4 v3, 0x0

    invoke-interface {v2, v3, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 329
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->disableStatusBar(ZLjava/lang/String;)V

    .line 332
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 333
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 334
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_70

    .line 335
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarHidden(Z)V
    :try_end_70
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_70} :catch_7b
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_70} :catch_73
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_70} :catch_71

    .line 337
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_70
    goto :goto_59

    .line 342
    :catch_71
    move-exception v0

    goto :goto_83

    .line 340
    :catch_73
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setStatusBarHidden() failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_82

    .line 338
    :catch_7b
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setStatusBarHidden() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_82
    :goto_82
    nop

    .line 345
    :goto_83
    return-void
.end method

.method public setWifiAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 985
    return-void

    .line 987
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 988
    return-void

    .line 991
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 992
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 993
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 994
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 996
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 1001
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 999
    :catch_51
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setWifiAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 997
    :catch_59
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setWifiAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 1003
    :goto_61
    return-void
.end method

.method public setWifiStateChangeAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiStateChangeAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 956
    return-void

    .line 958
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 959
    return-void

    .line 962
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 963
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 964
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 965
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiStateChangeAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 967
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 972
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 970
    :catch_51
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setWifiStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 968
    :catch_59
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setWifiStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 975
    :goto_61
    return-void
.end method

.method public setWifiTetheringAllowedAsUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiTetheringAllowedAsUser() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    if-nez v0, :cond_26

    .line 765
    return-void

    .line 767
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 768
    return-void

    .line 771
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 772
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 773
    .local v3, "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    if-eqz v3, :cond_4e

    .line 774
    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiTetheringAllowed(Z)V
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_4e} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4e} :catch_4f

    .line 776
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;>;"
    .end local v3    # "callback":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    :cond_4e
    goto :goto_37

    .line 781
    :catch_4f
    move-exception v0

    goto :goto_61

    .line 779
    :catch_51
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setWifiTetheringAllowedAsUser() Failed with RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 777
    :catch_59
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setWifiTetheringAllowedAsUser() failed with NullPointerException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_60
    :goto_60
    nop

    .line 784
    :goto_61
    return-void
.end method

.method public updateSystemUIMonitor(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 135
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v0

    const-string v1, "SystemUIAdapter"

    if-nez v0, :cond_1e

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSystemUIMonitor() has failed because not system call, userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_1e
    if-ltz p1, :cond_45

    .line 141
    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    if-eq v0, p1, :cond_43

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSystemUIMonitor() userId has changed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_43
    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    .line 147
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 149
    .local v2, "token":J
    :try_start_49
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_67

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    iget v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 156
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_6d

    .line 157
    :cond_67
    const-string/jumbo v0, "updateSystemUIMonitor() cannot call because context is null. "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6d} :catch_74
    .catchall {:try_start_49 .. :try_end_6d} :catchall_72

    .line 162
    :goto_6d
    nop

    :goto_6e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    goto :goto_8c

    .line 162
    :catchall_72
    move-exception v0

    goto :goto_8d

    .line 159
    :catch_74
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSystemUIMonitor() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_72

    .line 162
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_6e

    .line 164
    :goto_8c
    return-void

    .line 162
    :goto_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    throw v0
.end method
