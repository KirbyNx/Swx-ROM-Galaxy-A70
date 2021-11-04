.class public final synthetic Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$dP8qDptNigoqhzVtIudsX5naGu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$dP8qDptNigoqhzVtIudsX5naGu4;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$dP8qDptNigoqhzVtIudsX5naGu4;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    check-cast p1, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RemoteAnimationController;->lambda$createWallpaperAnimations$2$RemoteAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    return-void
.end method
