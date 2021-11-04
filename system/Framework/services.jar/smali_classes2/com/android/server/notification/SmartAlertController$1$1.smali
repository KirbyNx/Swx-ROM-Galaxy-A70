.class Lcom/android/server/notification/SmartAlertController$1$1;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController$1;->onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/SmartAlertController$1;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/notification/SmartAlertController$1;

    .line 88
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    iget-object v0, v0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mInCall:Z
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$100(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    if-eqz v0, :cond_12

    .line 91
    const-string v0, "SmartAlert - inCall, vibration will be returned"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 93
    :cond_12
    const-string v0, "SmartAlert - vibrate"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    iget-object v0, v0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$300(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$1$1;->this$1:Lcom/android/server/notification/SmartAlertController$1;

    iget-object v1, v1, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J
    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->access$200(Lcom/android/server/notification/SmartAlertController;)[J

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 97
    :goto_2c
    return-void
.end method
