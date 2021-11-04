.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowTracing;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracing;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;->f$0:Lcom/android/server/wm/WindowTracing;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;->f$0:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowTracing;->lambda$new$0$WindowTracing(J)V

    return-void
.end method
