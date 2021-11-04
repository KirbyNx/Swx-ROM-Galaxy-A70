.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$Zn3GHsFaEjE3o5xmL601n-fAS20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$Zn3GHsFaEjE3o5xmL601n-fAS20;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$Zn3GHsFaEjE3o5xmL601n-fAS20;->f$0:I

    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->lambda$notifyFocusedDisplayChangedLocked$3(I)V

    return-void
.end method
