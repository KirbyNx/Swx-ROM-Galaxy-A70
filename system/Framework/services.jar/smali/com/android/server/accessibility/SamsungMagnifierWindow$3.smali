.class Lcom/android/server/accessibility/SamsungMagnifierWindow$3;
.super Landroid/os/Handler;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 963
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 966
    iget v0, p1, Landroid/os/Message;->what:I

    .line 967
    .local v0, "type":I
    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4e

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    .line 979
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mTimeHandler: HANDLER_MESSAGE_CHANGE_CONFIG"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :try_start_15
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 982
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_26
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_2a

    .line 986
    :catchall_24
    move-exception v1

    goto :goto_31

    .line 983
    :catch_26
    move-exception v1

    .line 984
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 986
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 987
    nop

    .line 989
    goto :goto_6e

    .line 986
    :goto_31
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V
    invoke-static {v3, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 987
    throw v1

    .line 991
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 974
    :cond_4e
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "mTimeHandler: HANDLER_MESSAGE_SHOW_CONTROL"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->enableMagnifierWindowController(Z)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 977
    goto :goto_6e

    .line 969
    :cond_5e
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mTimeHandler: HANDLER_MESSAGE_HIDE_CONTROL"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->enableMagnifierWindowController(Z)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 972
    nop

    .line 994
    :goto_6e
    return-void
.end method
