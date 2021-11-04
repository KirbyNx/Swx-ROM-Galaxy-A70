.class Lcom/android/server/enterprise/device/DeviceInfo$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .line 1895
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1900
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1901
    return-void

    .line 1904
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1907
    .local v2, "msgData":Landroid/os/Bundle;
    const-string v3, "DeviceInfo"

    if-eqz v1, :cond_af

    if-nez v2, :cond_1b

    goto/16 :goto_af

    .line 1913
    :cond_1b
    const-string v4, "com.samsung.mms.RECEIVED_MSG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1914
    const/4 v3, 0x1

    .local v3, "isInbound":Z
    goto :goto_2e

    .line 1915
    .end local v3    # "isInbound":Z
    :cond_25
    const-string v4, "com.samsung.mms.SENT_MSG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 1916
    const/4 v3, 0x0

    .line 1922
    .restart local v3    # "isInbound":Z
    :goto_2e
    const-string/jumbo v4, "msg_type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1923
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "mms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1925
    const-string/jumbo v5, "msg_address"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1926
    .local v5, "address":Ljava/lang/String;
    const-string v6, "date"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1927
    .local v6, "date":J
    const-string/jumbo v8, "msg_subject"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1928
    .local v8, "subject":Ljava/lang/String;
    const-string/jumbo v9, "msg_body"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1929
    .local v9, "body":Ljava/lang/String;
    const-string v10, "content_location"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1931
    .local v10, "contentLocation":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    const-string v13, ""

    if-nez v10, :cond_6c

    move-object v14, v13

    goto :goto_7b

    :cond_6c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_7b
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    if-nez v8, :cond_82

    move-object v12, v13

    goto :goto_91

    :cond_82
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_91
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_97

    goto :goto_98

    :cond_97
    move-object v13, v9

    :goto_98
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1933
    .local v11, "message":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v5, v13, v11, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1935
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "contentLocation":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    :cond_a8
    return-void

    .line 1918
    .end local v3    # "isInbound":Z
    .end local v4    # "type":Ljava/lang/String;
    :cond_a9
    const-string v4, "Unexpected intent arrived at mMessagingReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return-void

    .line 1908
    :cond_af
    :goto_af
    const-string v4, "No data arrived at mMessagingReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    return-void
.end method
