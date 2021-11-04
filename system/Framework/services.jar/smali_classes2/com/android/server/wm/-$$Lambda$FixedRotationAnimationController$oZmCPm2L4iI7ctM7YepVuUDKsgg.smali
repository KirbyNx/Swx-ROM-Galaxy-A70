.class public final synthetic Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$oZmCPm2L4iI7ctM7YepVuUDKsgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FixedRotationAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FixedRotationAnimationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$oZmCPm2L4iI7ctM7YepVuUDKsgg;->f$0:Lcom/android/server/wm/FixedRotationAnimationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$oZmCPm2L4iI7ctM7YepVuUDKsgg;->f$0:Lcom/android/server/wm/FixedRotationAnimationController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FixedRotationAnimationController;->lambda$hide$0$FixedRotationAnimationController(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
