.class public final synthetic Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$0:Lcom/android/server/wm/FreeformController;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$0:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;->f$3:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/FreeformController;->lambda$updateFreeformBoundsForLidStateChanged$2$FreeformController(ZZLandroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    return-void
.end method
