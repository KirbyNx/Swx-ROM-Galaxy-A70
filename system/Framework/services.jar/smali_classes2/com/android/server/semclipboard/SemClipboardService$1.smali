.class Lcom/android/server/semclipboard/SemClipboardService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/semclipboard/SemClipboardService;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 582
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$1;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemClipboardService.onKnoxModeChange called for  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardService"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onKnoxModeChange called for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2e
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$1;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const-string v1, "SWITCHED"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/semclipboard/SemClipboardService;->multiUserMode(ILjava/lang/String;)V

    .line 606
    return-void
.end method

.method public onLockedBootComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "userHandle"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 586
    if-eqz p2, :cond_9

    .line 587
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_9

    .line 589
    :catch_7
    move-exception v0

    goto :goto_a

    .line 590
    :cond_9
    :goto_9
    nop

    .line 591
    :goto_a
    return-void
.end method
