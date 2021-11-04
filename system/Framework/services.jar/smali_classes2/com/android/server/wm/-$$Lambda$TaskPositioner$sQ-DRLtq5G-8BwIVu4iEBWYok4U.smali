.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;->f$0:Lcom/android/server/wm/TaskPositioner;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;->f$1:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;->f$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;->f$1:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskPositioner;->lambda$register$0$TaskPositioner(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
