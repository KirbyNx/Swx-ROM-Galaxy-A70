.class Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 148
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$000(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_b

    return-void

    .line 152
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetSpeedPolicy"

    if-eqz v0, :cond_33

    .line 153
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iput-boolean v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isScreenOn:Z

    .line 154
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v0

    const-string v1, "LCD OFF"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_180

    .line 156
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 157
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v0

    const-string/jumbo v1, "screen on off switch."

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isScreenOn:Z

    .line 159
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_180

    .line 160
    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.providers.downloads.start"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "value_uid"

    const-string/jumbo v4, "key_id"

    const-string v5, " uid = "

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_af

    .line 161
    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 162
    .local v8, "id":J
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "uid":I
    cmp-long v1, v8, v6

    if-eqz v1, :cond_17f

    if-eqz v0, :cond_17f

    .line 164
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download start id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17f

    .line 167
    .end local v0    # "uid":I
    .end local v8    # "id":J
    :cond_af
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.android.providers.downloads.complete"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 168
    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 169
    .local v6, "id":J
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 170
    .restart local v0    # "uid":I
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download complete id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " providerDownload size = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v9, v9, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    .line 171
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "isContained:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v9, v9, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 174
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v4, v4, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_180

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/ibs/dnba/NetSpeedStatus;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 177
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 178
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 179
    const/16 v2, 0x11

    iput v2, v1, Landroid/os/Message;->what:I

    .line 180
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_180

    .line 167
    .end local v0    # "uid":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v6    # "id":J
    :cond_17f
    :goto_17f
    nop

    .line 184
    :cond_180
    :goto_180
    return-void
.end method
