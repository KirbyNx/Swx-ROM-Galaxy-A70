.class final Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;
.super Landroid/os/Handler;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictionToastHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 150
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RestrictionToastManager"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    goto :goto_6d

    .line 163
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "toastMsg":Ljava/lang/String;
    if-eqz v3, :cond_6d

    # getter for: Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->access$100()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 167
    :try_start_1e
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 168
    # getter for: Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->access$100()Landroid/content/Context;

    move-result-object v5

    const v6, 0x103012b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 167
    invoke-static {v4, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 169
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 170
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_35

    .line 173
    .end local v2    # "toast":Landroid/widget/Toast;
    goto :goto_6d

    .line 171
    :catch_35
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayToast fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 158
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "toastMsg":Ljava/lang/String;
    :cond_4f
    # getter for: Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed message from recently displayed queue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    nop

    .line 178
    :cond_6d
    :goto_6d
    return-void
.end method
