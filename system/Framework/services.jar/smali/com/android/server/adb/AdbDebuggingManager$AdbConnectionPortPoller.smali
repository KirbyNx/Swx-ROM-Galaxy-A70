.class Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdbConnectionPortPoller"
.end annotation


# instance fields
.field private final mAdbPortProp:Ljava/lang/String;

.field private mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDurationSecs:I

.field private mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 309
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 304
    const-string/jumbo v0, "service.adb.tls.port"

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mAdbPortProp:Ljava/lang/String;

    .line 306
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mDurationSecs:I

    .line 307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 310
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 311
    return-void
.end method


# virtual methods
.method public cancelAndWait()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 342
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 344
    goto :goto_11

    .line 343
    :catch_10
    move-exception v0

    .line 346
    :cond_11
    :goto_11
    return-void
.end method

.method public run()V
    .registers 6

    .line 315
    const-string v0, "AdbDebuggingManager"

    const-string v1, "Starting adb port property poller"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    const/16 v2, 0xa

    const/4 v3, -0x1

    if-ge v1, v2, :cond_38

    .line 321
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 322
    return-void

    .line 327
    :cond_16
    const v2, 0x7fffffff

    const-string/jumbo v4, "service.adb.tls.port"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 328
    .local v2, "port":I
    if-eq v2, v3, :cond_32

    if-lez v2, :cond_2a

    const v3, 0xffff

    if-gt v2, v3, :cond_2a

    goto :goto_32

    .line 332
    :cond_2a
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 320
    .end local v2    # "port":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 329
    .restart local v2    # "port":I
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 330
    return-void

    .line 334
    .end local v1    # "i":I
    .end local v2    # "port":I
    :cond_38
    const-string v1, "Failed to receive adb connection port"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    invoke-interface {v0, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 336
    return-void
.end method
