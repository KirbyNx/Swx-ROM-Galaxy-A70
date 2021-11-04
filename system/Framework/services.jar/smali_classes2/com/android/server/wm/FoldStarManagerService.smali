.class public Lcom/android/server/wm/FoldStarManagerService;
.super Lcom/samsung/android/core/IFoldStarManager$Stub;
.source "FoldStarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FoldStarManagerService$H;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "FoldStar"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/core/IFoldStarCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayCompatPackageNotified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledCustomBoundsPackageChanged:Z

.field private mFixedAspectRatioPackageNotified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/wm/FoldStarManagerService$H;

.field private mLastCustomBoundsPackage:Ljava/lang/String;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mRegisteredCallbackCount:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/core/IFoldStarManager$Stub;-><init>()V

    .line 67
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    new-instance v0, Lcom/android/server/wm/FoldStarManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/FoldStarManagerService$H;-><init>(Lcom/android/server/wm/FoldStarManagerService;Landroid/os/Looper;Lcom/android/server/wm/FoldStarManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mH:Lcom/android/server/wm/FoldStarManagerService$H;

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/FoldStarManagerService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FoldStarManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/wm/FoldStarManagerService;->handleOnCustomBoundsPackageChanged(Landroid/os/Message;)V

    return-void
.end method

.method private checkMultiStarPackageAndPermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private getLauncherPackages(ILjava/util/List;)V
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p2, "outLauncherPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 179
    .local v2, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 180
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 181
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v2    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_10

    .line 183
    :cond_26
    return-void
.end method

.method private handleOnCustomBoundsPackageChanged(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 141
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 142
    .local v0, "mode":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_b

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 143
    .local v1, "packageName":Ljava/lang/String;
    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_61

    .line 144
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 145
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_57

    .line 146
    iget-object v5, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/core/IFoldStarCallback;

    .line 147
    .local v5, "obs":Lcom/samsung/android/core/IFoldStarCallback;
    iget-object v6, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    .line 149
    .local v6, "cookie":Ljava/lang/Object;
    if-eqz v6, :cond_34

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_34

    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_5e

    goto :goto_35

    :cond_34
    const/4 v7, 0x0

    .line 150
    .local v7, "structureFlags":I
    :goto_35
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_54

    .line 152
    :try_start_39
    invoke-interface {v5, v0, v1}, Lcom/samsung/android/core/IFoldStarCallback;->onCustomBoundsPackageChanged(ILjava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    .line 156
    goto :goto_54

    .line 153
    :catchall_3d
    move-exception v8

    .line 154
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_3e
    const-string v9, "FoldStar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to onCustomBoundsPackageChanged, flags="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v5    # "obs":Lcom/samsung/android/core/IFoldStarCallback;
    .end local v6    # "cookie":Ljava/lang/Object;
    .end local v7    # "structureFlags":I
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 159
    .end local v4    # "i":I
    :cond_57
    iget-object v4, p0, Lcom/android/server/wm/FoldStarManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 160
    .end local v3    # "N":I
    monitor-exit v2

    .line 163
    .end local v0    # "mode":I
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_69

    .line 160
    .restart local v0    # "mode":I
    .restart local v1    # "packageName":Ljava/lang/String;
    :catchall_5e
    move-exception v3

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_3e .. :try_end_60} :catchall_5e

    .end local p0    # "this":Lcom/android/server/wm/FoldStarManagerService;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_60
    throw v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_61

    .line 161
    .end local v0    # "mode":I
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/FoldStarManagerService;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_61
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FoldStar"

    const-string v2, "Failed to handleOnCustomBoundsPackageChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method private synthetic lambda$getDisplayCompatPackages$0(ILjava/util/Map;Ljava/lang/String;)V
    .registers 7
    .param p1, "option"    # I
    .param p2, "outPackages"    # Ljava/util/Map;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mDisplayCompatPackages:Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;

    .line 329
    invoke-virtual {v0, p3}, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->getPolicy(Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "policy":I
    if-nez p1, :cond_16

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 332
    :cond_16
    const/4 v1, 0x2

    if-ne p1, v1, :cond_27

    .line 333
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    .line 335
    :cond_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 337
    :cond_27
    const/4 v2, 0x1

    if-ne p1, v2, :cond_35

    .line 338
    if-eq v0, v2, :cond_2e

    if-ne v0, v1, :cond_35

    .line 340
    :cond_2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_35
    :goto_35
    return-void
.end method

.method private synthetic lambda$getDisplayCompatPackages$1(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "outPackages"    # Ljava/util/Map;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 346
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 347
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 348
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v1, v1, Lcom/android/server/wm/PackageSettingsManager;->mDisplayCompatPackages:Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;

    .line 349
    invoke-virtual {v1, v0}, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->getPolicy(Ljava/lang/String;)I

    move-result v1

    .line 350
    .local v1, "policy":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "policy":I
    :cond_1a
    return-void
.end method

.method private synthetic lambda$getFixedAspectRatioPackages$2(ILjava/util/Map;Ljava/lang/String;)V
    .registers 6
    .param p1, "option"    # I
    .param p2, "outPackages"    # Ljava/util/Map;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 390
    if-nez p1, :cond_f

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mFixedAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    .line 392
    invoke-virtual {v0, p3}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->getAspectRatio(Ljava/lang/String;)F

    move-result v0

    .local v0, "ratio":F
    goto :goto_2e

    .line 393
    .end local v0    # "ratio":F
    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mFixedAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    .line 395
    invoke-virtual {v0, p3}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->getAspectRatioBySystem(Ljava/lang/String;)F

    move-result v0

    .restart local v0    # "ratio":F
    goto :goto_2e

    .line 396
    .end local v0    # "ratio":F
    :cond_1f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3c

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mFixedAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    .line 398
    invoke-virtual {v0, p3}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->getAspectRatioByUserSettings(Ljava/lang/String;)F

    move-result v0

    .line 402
    .restart local v0    # "ratio":F
    :goto_2e
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3b

    .line 403
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_3b
    return-void

    .line 400
    .end local v0    # "ratio":F
    :cond_3c
    return-void
.end method

.method private synthetic lambda$getFixedAspectRatioPackages$3(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "outPackages"    # Ljava/util/Map;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 408
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 409
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v1, v1, Lcom/android/server/wm/PackageSettingsManager;->mFixedAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    .line 412
    invoke-virtual {v1, v0}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->getAspectRatio(Ljava/lang/String;)F

    move-result v1

    .line 411
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 410
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private resetNotifiedPackagesLocked()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mDisplayCompatPackageNotified:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 168
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService;->mFixedAspectRatioPackageNotified:Ljava/util/Set;

    if-eqz v0, :cond_e

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 173
    :cond_e
    return-void
.end method


# virtual methods
.method public completeCustomBoundsPackageChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 480
    const-string v0, "[FoldStarManagerService]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRegisteredCallbackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mRegisteredCallbackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEnabledCustomBoundsPackageChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mEnabledCustomBoundsPackageChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastCustomBoundsPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FoldStarManagerService;->mLastCustomBoundsPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 485
    return-void
.end method

.method public getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "option"    # I
    .param p3, "requestedPackages"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "option"    # I
    .param p3, "requestedPackages"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public initAppContinuityValueWhenReset(ZZ)V
    .registers 3
    .param p1, "allAppContinuityModeOn"    # Z
    .param p2, "frontScreenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    return-void
.end method

.method notifyCustomBoundsPackageChangedIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 106
    return-void
.end method

.method public registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;I)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/core/IFoldStarCallback;
    .param p2, "structureFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public resetSettings(I)V
    .registers 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    return-void
.end method

.method public setAllAppContinuityMode(IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "allAppContinuityModeOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    return-void
.end method

.method public setAppContinuityMode(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "applyAppContinuityMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    return-void
.end method

.method public setBoundsCompatAlignment(I)V
    .registers 2
    .param p1, "alignment"    # I

    .line 297
    return-void
.end method

.method public setDisplayCompatPackages(ILjava/util/Map;Z)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "requestedPackages"    # Ljava/util/Map;
    .param p3, "replaceAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    return-void
.end method

.method public setEnabledCustomBoundsPackageChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    return-void
.end method

.method public setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "requestedPackages"    # Ljava/util/Map;
    .param p3, "replaceAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    return-void
.end method

.method public setFrontScreenCustomFontSize(ZIF)V
    .registers 4
    .param p1, "modeOn"    # Z
    .param p2, "fontSize"    # I
    .param p3, "fontScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    return-void
.end method

.method public setFrontScreenOnWhenAppContinuityMode(Z)V
    .registers 2
    .param p1, "frontScreenOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    return-void
.end method

.method public unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/core/IFoldStarCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    return v0
.end method
