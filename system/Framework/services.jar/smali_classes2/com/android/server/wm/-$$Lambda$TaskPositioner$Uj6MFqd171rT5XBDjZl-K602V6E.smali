.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPositioner$Uj6MFqd171rT5XBDjZl-K602V6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$Uj6MFqd171rT5XBDjZl-K602V6E;->f$0:Lcom/android/server/wm/TaskPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$Uj6MFqd171rT5XBDjZl-K602V6E;->f$0:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->lambda$unregister$2$TaskPositioner()V

    return-void
.end method
