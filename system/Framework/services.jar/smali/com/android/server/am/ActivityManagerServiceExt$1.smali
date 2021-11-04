.class Lcom/android/server/am/ActivityManagerServiceExt$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceExt;

    .line 556
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 559
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 561
    const-string v1, "AM_DEBUG"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    .line 562
    .local v1, "am_debug":[Z
    const-string v2, "ATM_DEBUG"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v2

    .line 563
    .local v2, "atm_debug":[Z
    const-string v3, "WM_DEBUG"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v3

    .line 564
    .local v3, "wm_debug":[Z
    const-string v4, "ActivityManagerServiceExt"

    if-eqz v1, :cond_26

    .line 565
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerDebugConfig;->reconfigureDebug([Z)V

    goto :goto_2b

    .line 567
    :cond_26
    const-string v5, "Can\'t reconfigure am_debug"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_2b
    if-eqz v2, :cond_31

    .line 570
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->reconfigureDebug([Z)V

    goto :goto_36

    .line 572
    :cond_31
    const-string v5, "Can\'t reconfigure atm_debug"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_36
    if-eqz v3, :cond_3c

    .line 575
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerDebugConfig;->reconfigureDebug([Z)V

    goto :goto_41

    .line 577
    :cond_3c
    const-string v5, "Can\'t reconfigure wm_debug"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1    # "am_debug":[Z
    .end local v2    # "atm_debug":[Z
    .end local v3    # "wm_debug":[Z
    :cond_41
    :goto_41
    return-void
.end method
