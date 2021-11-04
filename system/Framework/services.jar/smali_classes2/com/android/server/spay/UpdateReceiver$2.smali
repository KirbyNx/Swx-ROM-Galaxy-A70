.class Lcom/android/server/spay/UpdateReceiver$2;
.super Landroid/os/Handler;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/spay/UpdateReceiver;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 62
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_14c

    .line 69
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x304ed112

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4f

    const v5, 0x2f94f923

    if-eq v4, v5, :cond_45

    const v5, 0x5c1076e2

    if-eq v4, v5, :cond_3b

    :cond_3a
    goto :goto_58

    :cond_3b
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move v3, v6

    goto :goto_58

    :cond_45
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v3, 0x0

    goto :goto_58

    :cond_4f
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move v3, v7

    :goto_58
    const-string v4, "com.samsung.android.rajaampat"

    const-string v5, "com.samsung.android.samsungpay.gear"

    const-string v8, "com.samsung.android.spaymini"

    const-string v9, "com.samsung.android.spay"

    if-eqz v3, :cond_107

    if-eq v3, v7, :cond_68

    if-eq v3, v6, :cond_68

    goto/16 :goto_14c

    .line 86
    :cond_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getdata_of_intent"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_14c

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14c

    .line 88
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " received : triggering PF Install"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_14c

    .line 92
    :cond_cb
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 93
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_14c

    .line 94
    :cond_df
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 95
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_14c

    .line 96
    :cond_f3
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 97
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_14c

    .line 71
    :cond_107
    const-string v3, "ACTION_BOOT_COMPLETED received : triggering PF Install"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_14c

    .line 73
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 77
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.samsung.android.spayfw"

    invoke-static {v1, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 79
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    # getter for: Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 103
    :cond_14c
    :goto_14c
    return-void
.end method
