.class Lcom/android/server/DockObserver$3;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DockObserver;

    .line 431
    iput-object p1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CCIC Dock UEVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/DockObserver;->mLastUEventDevice:I
    invoke-static {v0, v1}, Lcom/android/server/DockObserver;->access$302(Lcom/android/server/DockObserver;I)I

    .line 438
    :try_start_20
    iget-object v0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_27} :catch_46

    .line 440
    :try_start_27
    iget-object v1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    const-string v2, "USBPD_IDS"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/DockObserver;->access$602(Lcom/android/server/DockObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;I)V

    .line 443
    monitor-exit v0

    .line 446
    goto :goto_5d

    .line 443
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_43

    .end local p0    # "this":Lcom/android/server/DockObserver$3;
    .end local p1    # "event":Landroid/os/UEventObserver$UEvent;
    :try_start_45
    throw v1
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_46} :catch_46

    .line 444
    .restart local p0    # "this":Lcom/android/server/DockObserver$3;
    .restart local p1    # "event":Landroid/os/UEventObserver$UEvent;
    :catch_46
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse switch state from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockObserver"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_5d
    return-void
.end method
