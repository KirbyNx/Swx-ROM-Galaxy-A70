.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$SXu6PfV8H5peYjL-BDYwcZivV2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$SXu6PfV8H5peYjL-BDYwcZivV2Q;->f$0:Lcom/android/server/wm/WindowManagerServiceExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$SXu6PfV8H5peYjL-BDYwcZivV2Q;->f$0:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceExt;->lambda$updateCoverState$2$WindowManagerServiceExt()V

    return-void
.end method
