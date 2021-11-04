.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$Il9FDC2f46RW4ytag0fRFWl_8WQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppTransitionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppTransitionController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$Il9FDC2f46RW4ytag0fRFWl_8WQ;->f$0:Lcom/android/server/wm/AppTransitionController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$Il9FDC2f46RW4ytag0fRFWl_8WQ;->f$0:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransitionController;->lambda$handleAppTransitionReady$1$AppTransitionController()V

    return-void
.end method
