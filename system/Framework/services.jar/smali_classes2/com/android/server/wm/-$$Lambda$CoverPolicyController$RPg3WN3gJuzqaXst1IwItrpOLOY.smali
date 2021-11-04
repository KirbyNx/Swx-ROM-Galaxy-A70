.class public final synthetic Lcom/android/server/wm/-$$Lambda$CoverPolicyController$RPg3WN3gJuzqaXst1IwItrpOLOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CoverPolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CoverPolicyController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$CoverPolicyController$RPg3WN3gJuzqaXst1IwItrpOLOY;->f$0:Lcom/android/server/wm/CoverPolicyController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$CoverPolicyController$RPg3WN3gJuzqaXst1IwItrpOLOY;->f$0:Lcom/android/server/wm/CoverPolicyController;

    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicyController;->lambda$updateOrientationListener$0$CoverPolicyController()V

    return-void
.end method
