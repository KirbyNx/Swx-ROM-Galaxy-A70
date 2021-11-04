.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerServiceExt;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;->f$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iput-wide p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;->f$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-wide v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$broadcastScreenRotationAnimationStarted$5$WindowManagerServiceExt(J)V

    return-void
.end method
