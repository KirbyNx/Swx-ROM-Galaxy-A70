.class Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemCoverServiceInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 7
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "user"    # Landroid/os/UserHandle;

    .line 770
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 771
    invoke-direct/range {p0 .. p6}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 772
    return-void
.end method


# virtual methods
.method asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 776
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;

    move-result-object v0

    return-object v0
.end method

.method onCoverAppStateChanged(Z)I
    .registers 4
    .param p1, "covered"    # Z

    .line 809
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1b

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCoverAppStateChanged : covered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_28

    .line 814
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverService;->onCoverAppCovered(Z)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_29

    return v0

    .line 818
    :cond_28
    goto :goto_2d

    .line 816
    :catch_29
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method systemReady()V
    .registers 3

    .line 781
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1f

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_2a

    .line 786
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverService;->onSystemReady()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b

    .line 790
    :cond_2a
    goto :goto_2f

    .line 788
    :catch_2b
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 791
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 795
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1f

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCoverState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_2a

    .line 800
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverService;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b

    .line 804
    :cond_2a
    goto :goto_2f

    .line 802
    :catch_2b
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 805
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method
