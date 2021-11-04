.class Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartThingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartthings/SmartThingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartthings/SmartThingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/smartthings/SmartThingsService;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/smartthings/SmartThingsService;Lcom/android/server/smartthings/SmartThingsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/smartthings/SmartThingsService;
    .param p2, "x1"    # Lcom/android/server/smartthings/SmartThingsService$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;-><init>(Lcom/android/server/smartthings/SmartThingsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 40
    if-nez p2, :cond_3

    .line 41
    return-void

    .line 43
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x304ed112

    const/4 v4, 0x1

    if-eq v2, v3, :cond_22

    const v3, 0x5c1076e2

    if-eq v2, v3, :cond_18

    :cond_17
    goto :goto_2b

    :cond_18
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v1, v4

    goto :goto_2b

    :cond_22
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_30

    if-eq v1, v4, :cond_30

    goto :goto_36

    .line 47
    :cond_30
    iget-object v1, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    # invokes: Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/server/smartthings/SmartThingsService;->access$100(Lcom/android/server/smartthings/SmartThingsService;Landroid/content/Context;)V

    .line 48
    nop

    .line 52
    :goto_36
    return-void
.end method
