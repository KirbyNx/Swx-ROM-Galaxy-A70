.class public Lcom/android/server/pm/AutoDisableHandler$ADHandler;
.super Landroid/os/Handler;
.source "AutoDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AutoDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ADHandler"
.end annotation


# instance fields
.field extras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/AutoDisableHandler;

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->extras:Landroid/os/Bundle;

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_2b

    .line 83
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2b

    .line 85
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService;

    .line 86
    .local v2, "mAm":Lcom/android/server/am/ActivityManagerService;
    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, -0x1

    const-string/jumbo v5, "userId"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 88
    .local v4, "userId":I
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1}, Lcom/android/server/am/MARsPolicyManager;->resetAutoDisabledAppState(Ljava/lang/String;IZ)V

    .line 92
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "mAm":Lcom/android/server/am/ActivityManagerService;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_2b
    :goto_2b
    return-void
.end method
