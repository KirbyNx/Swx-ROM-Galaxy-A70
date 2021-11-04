.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$mtQmfigNXJ1YjHL9uPPFrPO_hzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$mtQmfigNXJ1YjHL9uPPFrPO_hzQ;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$mtQmfigNXJ1YjHL9uPPFrPO_hzQ;->f$0:Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->lambda$checkDrawnWindowsLocked$9$WindowManagerService(Lcom/android/server/wm/WindowContainer;Ljava/lang/Runnable;)V

    return-void
.end method
