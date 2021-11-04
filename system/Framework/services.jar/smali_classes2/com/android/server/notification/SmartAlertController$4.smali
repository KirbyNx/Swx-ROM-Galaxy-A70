.class Lcom/android/server/notification/SmartAlertController$4;
.super Ljava/lang/Thread;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->unregisterListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/SmartAlertController;

    .line 174
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$600(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 178
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;
    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->access$900(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/SmartAlertController;->access$602(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 181
    const-string v0, "SmartAlertController"

    const-string v1, "SmartAlert - unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2c
    return-void
.end method
