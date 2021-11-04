.class public final synthetic Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CoreLiveLog;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CoreLiveLog;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;->f$0:Lcom/android/server/wm/CoreLiveLog;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;->f$0:Lcom/android/server/wm/CoreLiveLog;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/CoreLiveLog;->lambda$sendLog$0$CoreLiveLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
