.class Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DlnaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaClientDeathMonitor"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mPlayerType:I

.field final synthetic this$0:Lcom/android/server/display/DlnaController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V
    .registers 6
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "playerType"    # I

    .line 325
    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DlnaClientDeathMonitor, playerType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/android/server/display/DlnaController;->access$400(Lcom/android/server/display/DlnaController;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DlnaController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput-object p2, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    .line 328
    iput p3, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mPlayerType:I

    .line 330
    const/4 p1, 0x0

    :try_start_24
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 333
    goto :goto_2c

    .line 331
    :catch_28
    move-exception p1

    .line 332
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->binderDied()V

    .line 334
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 338
    const-string v0, "DlnaController"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;-><init>(Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 360
    const-string v0, "DlnaController"

    const-string/jumbo v1, "unlinkToDeath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 362
    return-void
.end method
