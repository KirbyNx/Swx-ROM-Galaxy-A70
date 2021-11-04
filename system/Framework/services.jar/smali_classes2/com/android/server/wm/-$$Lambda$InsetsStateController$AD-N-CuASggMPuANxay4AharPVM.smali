.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$AD-N-CuASggMPuANxay4AharPVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$AD-N-CuASggMPuANxay4AharPVM;->f$0:Lcom/android/server/wm/InsetsStateController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$AD-N-CuASggMPuANxay4AharPVM;->f$0:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->lambda$notifyPendingInsetsControlChanged$5$InsetsStateController()V

    return-void
.end method
