.class Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;
.super Landroid/os/Handler;
.source "MultiUserPkgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/MultiUserPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalMainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/MultiUserPkgManager;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/MultiUserPkgManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 91
    iput-object p1, p0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 99
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_26
    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_8a

    goto :goto_88

    .line 102
    :pswitch_30
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_88

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "userId":I
    if-eq v1, v3, :cond_41

    .line 106
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # invokes: Lcom/android/server/ipm/MultiUserPkgManager;->doInsertPkgAsUserToMemory(I)V
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$200(Lcom/android/server/ipm/MultiUserPkgManager;I)V

    .line 107
    .end local v1    # "userId":I
    :cond_41
    goto :goto_88

    .line 122
    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_88

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    .restart local v1    # "userId":I
    if-eq v1, v3, :cond_53

    .line 126
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # invokes: Lcom/android/server/ipm/MultiUserPkgManager;->doDelPkgAsUserFromMemory(I)V
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$300(Lcom/android/server/ipm/MultiUserPkgManager;I)V

    .line 127
    .end local v1    # "userId":I
    :cond_53
    goto :goto_88

    .line 110
    :pswitch_54
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_88

    .line 112
    const-string/jumbo v1, "pkgName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v3, "isReInstall"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 115
    .local v9, "isReInstall":Z
    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 116
    .local v10, "u":I
    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 118
    .local v11, "uid":I
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    move-object v4, v1

    move-object v5, v2

    move v6, v9

    move v7, v10

    move v8, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/ipm/MultiUserPkgManager;->onPackageStatusChange(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 132
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    .end local v9    # "isReInstall":Z
    .end local v10    # "u":I
    .end local v11    # "uid":I
    :cond_88
    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x64
        :pswitch_54
        :pswitch_42
        :pswitch_30
    .end packed-switch
.end method
