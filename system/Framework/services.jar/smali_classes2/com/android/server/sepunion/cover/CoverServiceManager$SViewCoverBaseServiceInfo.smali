.class Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SViewCoverBaseServiceInfo"
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

    .line 715
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 716
    invoke-direct/range {p0 .. p6}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 717
    return-void
.end method


# virtual methods
.method asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 721
    invoke-static {p1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v0

    return-object v0
.end method

.method onCoverAppStateChanged(Z)I
    .registers 4
    .param p1, "covered"    # Z

    .line 754
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1b

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCoverAppStateChanged : covered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_28

    .line 759
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onCoverAppCovered(Z)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_29

    return v0

    .line 763
    :cond_28
    goto :goto_2d

    .line 761
    :catch_29
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method systemReady()V
    .registers 3

    .line 726
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1f

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_2a

    .line 731
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b

    .line 735
    :cond_2a
    goto :goto_2f

    .line 733
    :catch_2b
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 736
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 740
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1f

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCoverState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_2a

    .line 745
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b

    .line 749
    :cond_2a
    goto :goto_2f

    .line 747
    :catch_2b
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method
