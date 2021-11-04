.class public Lcom/samsung/android/mcfds/lib/common/LibUtil;
.super Ljava/lang/Object;
.source "LibUtil.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/samsung/android/mcfds/lib/common/LibUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwOnMainThread(Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(TT;)V"
        }
    .end annotation

    .line 22
    .local p0, "exception":Ljava/lang/Exception;, "TT;"
    sget-boolean v0, Lcom/samsung/android/mcfds/lib/common/LibUtil;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 24
    .local v0, "mainThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 25
    .end local v0    # "mainThread":Ljava/lang/Thread;
    goto :goto_17

    .line 26
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_17
    return-void
.end method
