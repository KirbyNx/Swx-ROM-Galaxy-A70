.class Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .line 568
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 574
    :try_start_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v2, "AxT9IME.isVisibleWindow"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mIsSIPshown:Z
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$602(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_1a

    .line 575
    :catch_19
    move-exception v1

    .line 577
    :cond_1a
    :goto_1a
    return-void
.end method
