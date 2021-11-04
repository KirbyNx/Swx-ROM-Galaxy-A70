.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$bZz5Va7EZ309Ymq4DAMtHxm89Zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$bZz5Va7EZ309Ymq4DAMtHxm89Zs;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$bZz5Va7EZ309Ymq4DAMtHxm89Zs;->f$0:Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$stopFreezingDisplayLocked$10$WindowManagerService(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
