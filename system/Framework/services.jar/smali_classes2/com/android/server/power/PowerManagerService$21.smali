.class Lcom/android/server/power/PowerManagerService$21;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->startSmartStayLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 10538
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$21;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 10540
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    .line 10552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "undefined message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 10547
    :cond_22
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$21;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleAbuseWakelockWhenUseractivityChanged()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8300(Lcom/android/server/power/PowerManagerService;)V

    .line 10548
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$21;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$19600(Lcom/android/server/power/PowerManagerService;Z)V

    .line 10549
    goto :goto_39

    .line 10542
    :cond_2d
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$21;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleAbuseWakelockWhenUseractivityChanged()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8300(Lcom/android/server/power/PowerManagerService;)V

    .line 10543
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$21;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$19600(Lcom/android/server/power/PowerManagerService;Z)V

    .line 10544
    nop

    .line 10555
    :goto_39
    return-void
.end method
