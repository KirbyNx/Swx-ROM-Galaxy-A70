.class Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserActivityTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 10374
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .line 10374
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 10379
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 10380
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$19200(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 10381
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$19002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 10385
    :cond_27
    return-void
.end method
