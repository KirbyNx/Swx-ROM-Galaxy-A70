.class Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 29
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 87
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "user_handle_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 89
    .local v3, "userHandleId":I
    const-string v5, "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 90
    if-nez v0, :cond_24

    .line 91
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onReceive() : Action is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_24
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_28f

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    const-string v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_7d

    .line 98
    :try_start_4b
    const-string v5, "com.samsung.android.knox.intent.extra.STATUS"

    const/4 v10, 0x1

    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 99
    .local v5, "status":I
    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 100
    .local v4, "userId":I
    invoke-virtual {v2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 101
    .local v6, "accountId":J
    if-ne v5, v10, :cond_75

    .line 102
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() : failed to install cba on accountId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_75
    iget-object v8, v1, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # invokes: Lcom/android/server/enterprise/email/AccountsReceiver;->sendClientAuthResultIntent(JII)V
    invoke-static {v8, v6, v7, v4, v5}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;JII)V

    .line 105
    .end local v4    # "userId":I
    .end local v5    # "status":I
    .end local v6    # "accountId":J
    move-object v12, v1

    goto/16 :goto_28c

    .line 106
    :cond_7d
    const-string v4, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_83} :catch_28f

    const-string v5, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    const-string v10, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    const-string v11, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    const-string/jumbo v12, "server_name"

    const-string/jumbo v13, "receive_host"

    const-string v14, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v15, "eas"

    const-string v8, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    const-string v9, "account_id"

    move-object/from16 v16, v5

    const-string/jumbo v5, "service"

    move-object/from16 v17, v11

    const-string/jumbo v11, "user_id"

    move-object/from16 v18, v13

    const-string/jumbo v13, "status"

    const-string v1, "containerid"

    move-object/from16 v19, v1

    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move/from16 v20, v3

    .end local v3    # "userHandleId":I
    .local v20, "userHandleId":I
    const-string v3, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v21, v1

    const-string v1, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    if-nez v4, :cond_198

    :try_start_b6
    const-string v4, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    move-object/from16 v22, v0

    move-object v0, v1

    move-object/from16 v4, v19

    move-object/from16 v1, v21

    goto/16 :goto_19f

    .line 155
    :cond_c7
    const-string v4, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const-string v4, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    goto :goto_dc

    :cond_d8
    move-object/from16 v12, p0

    goto/16 :goto_28c

    .line 157
    :cond_dc
    :goto_dc
    const/16 v4, 0x8

    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 158
    .local v4, "status":I
    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "email":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "service":Ljava/lang/String;
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    const-wide/16 v0, -0x1

    .end local v0    # "action":Ljava/lang/String;
    .local v22, "action":Ljava/lang/String;
    invoke-virtual {v2, v9, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 161
    .local v0, "id":J
    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move v4, v8

    .line 162
    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-wide v0, v8

    .line 163
    if-nez v11, :cond_105

    .line 164
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    .line 166
    :cond_105
    if-nez v5, :cond_10c

    .line 167
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 170
    :cond_10c
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 171
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "serveraddress":Ljava/lang/String;
    if-nez v6, :cond_11d

    .line 173
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 176
    :cond_11d
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v7, "newIntent":Landroid/content/Intent;
    move-object/from16 v8, v23

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    move-object/from16 v9, v21

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 180
    const-string v3, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    invoke-virtual {v7, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    move-object/from16 v3, v19

    move/from16 v10, v20

    .end local v20    # "userHandleId":I
    .local v10, "userHandleId":I
    invoke-virtual {v7, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_13d} :catch_193

    .line 182
    move-object/from16 v12, p0

    :try_start_13f
    iget-object v3, v12, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$200(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v3

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 184
    .end local v6    # "serveraddress":Ljava/lang/String;
    .end local v7    # "newIntent":Landroid/content/Intent;
    goto/16 :goto_28c

    .line 185
    .end local v10    # "userHandleId":I
    .restart local v20    # "userHandleId":I
    :cond_14e
    move-object/from16 v12, p0

    move-object/from16 v6, v19

    move/from16 v10, v20

    move-object/from16 v9, v21

    move-object/from16 v8, v23

    .end local v20    # "userHandleId":I
    .restart local v10    # "userHandleId":I
    move-object/from16 v7, v18

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "receive_host":Ljava/lang/String;
    if-nez v7, :cond_167

    .line 187
    move-object/from16 v13, v17

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 190
    :cond_167
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v13, "newIntent":Landroid/content/Intent;
    invoke-virtual {v13, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v13, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    move-object/from16 v3, v16

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v3, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    invoke-virtual {v13, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v13, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v3, v12, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$200(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v3, v13, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_191} :catch_28d

    goto/16 :goto_28c

    .line 200
    .end local v0    # "id":J
    .end local v4    # "status":I
    .end local v5    # "service":Ljava/lang/String;
    .end local v7    # "receive_host":Ljava/lang/String;
    .end local v10    # "userHandleId":I
    .end local v11    # "email":Ljava/lang/String;
    .end local v13    # "newIntent":Landroid/content/Intent;
    .end local v22    # "action":Ljava/lang/String;
    :catch_193
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_291

    .line 106
    .local v0, "action":Ljava/lang/String;
    .restart local v20    # "userHandleId":I
    :cond_198
    move-object/from16 v22, v0

    move-object v0, v1

    move-object/from16 v4, v19

    move-object/from16 v1, v21

    .line 108
    .end local v0    # "action":Ljava/lang/String;
    .restart local v22    # "action":Ljava/lang/String;
    :goto_19f
    move-object/from16 v19, v4

    const/16 v4, 0x8

    :try_start_1a3
    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 109
    .restart local v4    # "status":I
    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 110
    .restart local v11    # "email":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .restart local v5    # "service":Ljava/lang/String;
    move-object/from16 v23, v0

    move-object/from16 v21, v1

    const-wide/16 v0, -0x1

    invoke-virtual {v2, v9, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    move-wide/from16 v0, v24

    .line 112
    .local v0, "id":J
    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move v4, v8

    .line 113
    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-wide v0, v8

    .line 114
    if-nez v11, :cond_1cc

    .line 115
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    .line 117
    :cond_1cc
    if-nez v5, :cond_1d3

    .line 118
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 121
    :cond_1d3
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_248

    .line 122
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .restart local v6    # "serveraddress":Ljava/lang/String;
    if-nez v6, :cond_1e4

    .line 124
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 127
    :cond_1e4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v7, "newIntent":Landroid/content/Intent;
    move-object/from16 v8, v23

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    move-object/from16 v3, v21

    invoke-virtual {v7, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    const-string v3, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    invoke-virtual {v7, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    move-object/from16 v10, v19

    move/from16 v9, v20

    .end local v20    # "userHandleId":I
    .local v9, "userHandleId":I
    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_204} :catch_193

    .line 134
    move-object/from16 v12, p0

    :try_start_206
    iget-object v3, v12, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$200(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v3

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v3

    .line 136
    .local v3, "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    if-eqz v3, :cond_247

    if-nez v4, :cond_247

    const-wide/16 v13, -0x1

    cmp-long v8, v0, v13

    if-eqz v8, :cond_247

    .line 137
    new-instance v8, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    invoke-direct {v8, v3, v0, v1}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;-><init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V

    invoke-virtual {v8}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->start()V

    .line 138
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "onRecieve() : SMIMECertificate install called."

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v3    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v6    # "serveraddress":Ljava/lang/String;
    .end local v7    # "newIntent":Landroid/content/Intent;
    :cond_247
    goto :goto_28b

    .line 141
    .end local v9    # "userHandleId":I
    .restart local v20    # "userHandleId":I
    :cond_248
    move-object/from16 v12, p0

    move-object/from16 v10, v19

    move/from16 v9, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v23

    .end local v20    # "userHandleId":I
    .restart local v9    # "userHandleId":I
    move-object/from16 v7, v18

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "receive_host":Ljava/lang/String;
    if-nez v7, :cond_261

    .line 143
    move-object/from16 v13, v17

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 146
    :cond_261
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v13    # "newIntent":Landroid/content/Intent;
    invoke-virtual {v13, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {v13, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    move-object/from16 v3, v16

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v3, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    invoke-virtual {v13, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v13, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v3, v12, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$200(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v3, v13, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_28b} :catch_28d

    .line 155
    .end local v0    # "id":J
    .end local v4    # "status":I
    .end local v5    # "service":Ljava/lang/String;
    .end local v7    # "receive_host":Ljava/lang/String;
    .end local v11    # "email":Ljava/lang/String;
    .end local v13    # "newIntent":Landroid/content/Intent;
    :goto_28b
    nop

    .line 202
    .end local v9    # "userHandleId":I
    .end local v22    # "action":Ljava/lang/String;
    :goto_28c
    goto :goto_29b

    .line 200
    :catch_28d
    move-exception v0

    goto :goto_291

    :catch_28f
    move-exception v0

    move-object v12, v1

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    :goto_291
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onRecieve() failed. "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29b
    return-void
.end method
