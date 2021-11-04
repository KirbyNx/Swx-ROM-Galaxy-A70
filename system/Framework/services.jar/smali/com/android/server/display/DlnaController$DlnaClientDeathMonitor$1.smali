.class Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 339
    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 343
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # invokes: Lcom/android/server/display/DlnaController;->isStandbyModeOn()Z
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$500(Lcom/android/server/display/DlnaController;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 344
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    iget-object v3, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget v3, v3, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mPlayerType:I

    # invokes: Lcom/android/server/display/DlnaController;->updateStandbyModePlayerState(II)Z
    invoke-static {v0, v3, v2}, Lcom/android/server/display/DlnaController;->access$600(Lcom/android/server/display/DlnaController;II)Z

    .line 345
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # invokes: Lcom/android/server/display/DlnaController;->requestStandbyModeReadyImage()Z
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$700(Lcom/android/server/display/DlnaController;)Z

    goto :goto_37

    .line 347
    :cond_29
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # invokes: Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V
    invoke-static {v0, v2}, Lcom/android/server/display/DlnaController;->access$800(Lcom/android/server/display/DlnaController;I)V

    .line 348
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # setter for: Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/DlnaController;->access$202(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaDevice;)Lcom/android/server/display/DlnaDevice;

    .line 351
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$900(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 352
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$900(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->unlinkToDeath()V

    .line 353
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # setter for: Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    invoke-static {v0, v1}, Lcom/android/server/display/DlnaController;->access$902(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 355
    :cond_53
    return-void
.end method
