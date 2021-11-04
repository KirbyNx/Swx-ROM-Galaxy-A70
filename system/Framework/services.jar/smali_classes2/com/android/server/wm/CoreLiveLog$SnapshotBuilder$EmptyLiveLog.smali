.class Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;
.super Lcom/android/server/wm/CoreLiveLog;
.source "CoreLiveLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyLiveLog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;

    .line 266
    iput-object p1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;->this$0:Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/CoreLiveLog;-><init>()V

    return-void
.end method


# virtual methods
.method public sendLog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3
    .param p1, "inst"    # Ljava/lang/Runnable;
    .param p2, "code"    # Ljava/lang/String;

    .line 273
    invoke-virtual {p0, p2}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;->sendLogImmediate(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public sendLog(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;->sendLogImmediate(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public sendLogImmediate(Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to send log "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreLiveLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method
