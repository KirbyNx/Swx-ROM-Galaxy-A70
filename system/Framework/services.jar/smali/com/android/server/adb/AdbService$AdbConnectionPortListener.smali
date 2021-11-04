.class Lcom/android/server/adb/AdbService$AdbConnectionPortListener;
.super Ljava/lang/Object;
.source "AdbService.java"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbConnectionPortListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/adb/AdbService;

    .line 409
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortReceived(I)V
    .registers 5
    .param p1, "port"    # I

    .line 411
    if-lez p1, :cond_f

    const v0, 0xffff

    if-gt p1, v0, :cond_f

    .line 412
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v0, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_2c

    .line 414
    :cond_f
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v0, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 417
    :try_start_17
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    # getter for: Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$600(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_wifi_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_23} :catch_24

    .line 423
    goto :goto_2c

    .line 419
    :catch_24
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AdbService"

    const-string v2, "ADB_ENABLED is restricted."

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_2c
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v1, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    # invokes: Lcom/android/server/adb/AdbService;->broadcastPortInfo(I)V
    invoke-static {v0, v1}, Lcom/android/server/adb/AdbService;->access$900(Lcom/android/server/adb/AdbService;I)V

    .line 426
    return-void
.end method
