.class final Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
.super Landroid/os/Handler;
.source "LicenseLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/license/LicenseLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/license/LicenseLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 328
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    .line 329
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 333
    if-eqz p1, :cond_49

    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_49

    .line 341
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    const-string v2, "apiName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    const-string v3, "adminUid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 344
    const-string/jumbo v4, "isGetterApi"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 345
    const-string/jumbo v5, "isOldNamespace"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 346
    const-string/jumbo v6, "profileUserId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 347
    const-string/jumbo v7, "parent"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 342
    # invokes: Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;IZZIZ)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/license/LicenseLogService;->access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;IZZIZ)V

    .line 349
    .end local v0    # "data":Landroid/os/Bundle;
    goto :goto_49

    .line 336
    :cond_3d
    const-string v0, "LicenseLogService"

    const-string v1, "MSG_CLEAN_OLD_RECORDS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    # invokes: Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V
    invoke-static {v0}, Lcom/android/server/enterprise/license/LicenseLogService;->access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V

    .line 354
    :cond_49
    :goto_49
    return-void
.end method
