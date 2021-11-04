.class Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractionControlChordLongPress"
.end annotation


# instance fields
.field private mIsLaunchFromPowerKey:Z

.field final synthetic this$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/KeyCombinationManager;Z)V
    .registers 3
    .param p2, "isLaunchFromPowerKey"    # Z

    .line 575
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-boolean p2, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->mIsLaunchFromPowerKey:Z

    .line 577
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager;ZLcom/android/server/policy/KeyCombinationManager$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/policy/KeyCombinationManager;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/server/policy/KeyCombinationManager$1;

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;-><init>(Lcom/android/server/policy/KeyCombinationManager;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 580
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->mIsLaunchFromPowerKey:Z

    if-eqz v0, :cond_f

    .line 581
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->access$102(Lcom/android/server/policy/KeyCombinationManager;Z)Z

    .line 582
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    # setter for: Lcom/android/server/policy/KeyCombinationManager;->mIsVoiceAssistantShortPressed:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->access$202(Lcom/android/server/policy/KeyCombinationManager;Z)Z

    .line 585
    :cond_f
    const-string v0, "KeyCombinationManager"

    const-string v1, "broadcast Interaction Control intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessibility.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.accessibility"

    const-string v3, "com.samsung.accessibility.interactioncontrol.AccessControlReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, v1, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 589
    return-void
.end method
