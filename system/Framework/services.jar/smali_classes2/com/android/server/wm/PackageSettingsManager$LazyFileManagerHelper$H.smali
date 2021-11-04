.class Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;
.super Landroid/os/Handler;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H$Duration;
    }
.end annotation


# static fields
.field private static final MSG_REQUEST_TO_SAVE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 361
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Landroid/os/Looper;Lcom/android/server/wm/PackageSettingsManager$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/wm/PackageSettingsManager$1;

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;-><init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_f

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    monitor-enter v0

    .line 370
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 371
    monitor-exit v0

    .line 374
    :goto_f
    return-void

    .line 371
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method
