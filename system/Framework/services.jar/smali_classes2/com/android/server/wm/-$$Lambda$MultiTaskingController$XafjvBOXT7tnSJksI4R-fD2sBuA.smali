.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$XafjvBOXT7tnSJksI4R-fD2sBuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$XafjvBOXT7tnSJksI4R-fD2sBuA;->f$0:Lcom/android/server/wm/MultiTaskingController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$XafjvBOXT7tnSJksI4R-fD2sBuA;->f$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->lambda$installSystemProvidersLocked$0$MultiTaskingController()V

    return-void
.end method
