.class public Lcom/android/server/SpqrService;
.super Lcom/android/server/SystemService;
.source "SpqrService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpqrService"


# instance fields
.field private volatile mService:Landroid/os/ISpqrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/SpqrService;Landroid/os/ISpqrService;)Landroid/os/ISpqrService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SpqrService;
    .param p1, "x1"    # Landroid/os/ISpqrService;

    .line 31
    iput-object p1, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/SpqrService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SpqrService;

    .line 31
    invoke-direct {p0}, Lcom/android/server/SpqrService;->findSpqrNativeService()V

    return-void
.end method

.method private checkUserAndService(II)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "appId"    # I

    .line 68
    iget-object v0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    const/4 v1, 0x0

    const-string v2, "SpqrService"

    if-nez v0, :cond_e

    .line 69
    const-string/jumbo v0, "spqr_service is not initialized"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v1

    .line 72
    :cond_e
    if-gez p1, :cond_25

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v1

    .line 76
    :cond_25
    if-gez p2, :cond_3c

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid app id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 80
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method private findSpqrNativeService()V
    .registers 6

    .line 40
    const-string/jumbo v0, "spqr_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 43
    :try_start_9
    new-instance v1, Lcom/android/server/SpqrService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SpqrService$1;-><init>(Lcom/android/server/SpqrService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 53
    goto :goto_15

    .line 51
    :catch_13
    move-exception v1

    .line 52
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 56
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    const-string v1, "SpqrService"

    if-eqz v0, :cond_25

    .line 57
    invoke-static {v0}, Landroid/os/ISpqrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpqrService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    .line 58
    const-string v2, "SPQR native service found successfully"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 60
    :cond_25
    const-string v2, "SPQR native service not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$SpqrService$ffnR7nM5-Ho0EOum0CMaC59Ni0U;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$SpqrService$ffnR7nM5-Ho0EOum0CMaC59Ni0U;-><init>(Lcom/android/server/SpqrService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    :goto_38
    return-void
.end method


# virtual methods
.method public createInvariantProfileLI(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "oldBaseCodePath"    # Ljava/lang/String;
    .param p2, "newBaseCodePath"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appId"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "refProfPath"    # Ljava/lang/String;
    .param p7, "oldVersionName"    # Ljava/lang/String;
    .param p8, "newVersionName"    # Ljava/lang/String;

    .line 97
    move-object v1, p0

    const-string v2, "SpqrService"

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-direct {p0, v12, v13}, Lcom/android/server/SpqrService;->checkUserAndService(II)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_f

    .line 98
    return v14

    .line 101
    :cond_f
    :try_start_f
    iget-object v3, v1, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Landroid/os/ISpqrService;->createInvariantProfile(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare new profile for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_33} :catch_42

    move-object/from16 v3, p5

    :try_start_35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3f} :catch_40

    .line 108
    goto :goto_5d

    .line 106
    :catch_40
    move-exception v0

    goto :goto_45

    :catch_42
    move-exception v0

    move-object/from16 v3, p5

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    :goto_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create invariant profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5d
    return v14
.end method

.method public synthetic lambda$findSpqrNativeService$0$SpqrService()V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/SpqrService;->findSpqrNativeService()V

    .line 63
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/server/SpqrService;->findSpqrNativeService()V

    .line 86
    return-void
.end method
