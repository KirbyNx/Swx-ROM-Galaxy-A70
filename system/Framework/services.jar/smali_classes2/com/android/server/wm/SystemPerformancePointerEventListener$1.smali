.class Lcom/android/server/wm/SystemPerformancePointerEventListener$1;
.super Landroid/view/GestureDetector;
.source "SystemPerformancePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SystemPerformancePointerEventListener;->lambda$new$2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method
