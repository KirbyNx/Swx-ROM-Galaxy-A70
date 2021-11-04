.class Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PortListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 349
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortReceived(I)V
    .registers 4
    .param p1, "port"    # I

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received tls port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbDebuggingManager"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v0

    if-lez p1, :cond_21

    .line 353
    const/16 v1, 0x18

    goto :goto_23

    .line 354
    :cond_21
    const/16 v1, 0x19

    .line 352
    :goto_23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method
