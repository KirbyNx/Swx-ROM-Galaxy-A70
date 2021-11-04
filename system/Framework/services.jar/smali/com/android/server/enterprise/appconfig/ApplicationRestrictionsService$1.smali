.class Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    .line 117
    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    # getter for: Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->access$000(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "settings":Landroid/os/Bundle;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 122
    iget-object v2, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->sendBroadcastAsUserInternal(Ljava/lang/String;I)V

    .line 124
    :cond_1a
    return-void
.end method
