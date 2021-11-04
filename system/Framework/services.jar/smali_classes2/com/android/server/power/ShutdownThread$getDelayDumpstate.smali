.class Lcom/android/server/power/ShutdownThread$getDelayDumpstate;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getDelayDumpstate"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static delayDumpRaunnable:Ljava/lang/Runnable;

.field private static delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1391
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1395
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1396
    return-void
.end method

.method public static startState()V
    .registers 4

    .line 1399
    sget-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    if-nez v0, :cond_16

    .line 1400
    const-string v0, "ShutdownDelay"

    const-string v1, "Start handler"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    new-instance v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    .line 1403
    :cond_16
    new-instance v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayDumpRaunnable:Ljava/lang/Runnable;

    .line 1418
    # getter for: Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recovery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    # getter for: Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recovery-update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_43

    .line 1421
    :cond_38
    sget-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    sget-object v1, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4d

    .line 1419
    :cond_43
    :goto_43
    sget-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    sget-object v1, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1423
    :goto_4d
    return-void
.end method
