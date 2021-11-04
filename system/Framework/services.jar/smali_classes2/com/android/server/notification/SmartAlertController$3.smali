.class Lcom/android/server/notification/SmartAlertController$3;
.super Ljava/lang/Thread;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->registerListener()V
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

    .line 153
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$600(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$700(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 157
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 158
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;
    invoke-static {v2}, Lcom/android/server/notification/SmartAlertController;->access$900(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 160
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z
    invoke-static {v0, v2}, Lcom/android/server/notification/SmartAlertController;->access$602(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 161
    const-string v0, "SmartAlert - registerListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 163
    :cond_36
    const-string v0, "SmartAlert - mSmartAlertMotionManager is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 166
    :cond_3c
    const-string v0, "SmartAlert - already registered or Setting disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_41
    return-void
.end method
