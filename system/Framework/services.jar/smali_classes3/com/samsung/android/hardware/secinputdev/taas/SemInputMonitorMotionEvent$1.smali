.class Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;
.super Ljava/lang/Object;
.source "SemInputMonitorMotionEvent.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    # invokes: Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->monitorMotionEvent(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->access$000(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Landroid/view/MotionEvent;)V

    .line 39
    return-void
.end method
