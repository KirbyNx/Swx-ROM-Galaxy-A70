.class Lcom/android/server/accessibility/AccessibilityManagerService$AssistantMenuBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssistantMenuBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 722
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .line 722
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AssistantMenuBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 725
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->isAssistantMenuNeedToRunning(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.accessibility"

    const-string v4, "com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 731
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 732
    .local v1, "assistantMenu2":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.samsung.accessibility.assistantmenu.serviceframework.AMMetaDataParserService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 734
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 736
    .end local v0    # "assistantMenu":Landroid/content/Intent;
    .end local v1    # "assistantMenu2":Landroid/content/Intent;
    :cond_2f
    return-void
.end method
