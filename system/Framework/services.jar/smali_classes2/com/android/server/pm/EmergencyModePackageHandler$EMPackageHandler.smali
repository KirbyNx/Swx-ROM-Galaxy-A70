.class Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
.super Landroid/os/Handler;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EmergencyModePackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMPackageHandler"
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field protected final TIMEOUT:J

.field protected emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected emCurrentPosition:I

.field protected emDontKillFlags:[Z

.field protected emID:I

.field protected emNewState:[I

.field protected emPackages:[Ljava/lang/String;

.field protected emPreviousID:I

.field protected emProgression:I

.field protected emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field protected emSize:I

.field protected emTotSize:I

.field protected emUids:[I

.field protected emUserId:I

.field final synthetic this$0:Lcom/android/server/pm/EmergencyModePackageHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/EmergencyModePackageHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 112
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    .line 93
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->TIMEOUT:J

    .line 95
    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    .line 114
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 26
    .param p1, "msg"    # Landroid/os/Message;

    .line 171
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_210

    const/4 v7, 0x3

    if-eq v0, v5, :cond_9d

    if-eq v0, v7, :cond_8d

    if-eq v0, v4, :cond_6e

    const/4 v3, 0x5

    if-eq v0, v3, :cond_18

    goto/16 :goto_299

    .line 289
    :cond_18
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 291
    const-string v0, "EMPkgHandler"

    const-string v3, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    goto/16 :goto_299

    .line 295
    :cond_2b
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 296
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    .line 298
    :cond_3c
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 299
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    .line 301
    :cond_4d
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 302
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    .line 306
    :cond_5e
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 316
    goto/16 :goto_299

    .line 280
    :cond_6e
    const-string v0, "EMPkgHandler"

    const-string v3, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "it":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v3, v3, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->resetTask()V

    .line 285
    goto/16 :goto_299

    .line 274
    .end local v0    # "it":Landroid/content/Intent;
    :cond_8d
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 276
    goto/16 :goto_299

    .line 211
    :cond_9d
    const-string v0, "EMPkgHandler"

    const-string v8, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v0, v8}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 213
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->removeMessages(I)V

    .line 216
    :cond_b5
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v8, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-lt v0, v8, :cond_f5

    .line 218
    iput v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 219
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v0, v3, :cond_cc

    .line 220
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_299

    .line 222
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] emID["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EMPkgHandler"

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    goto/16 :goto_299

    .line 227
    :cond_f5
    const/4 v0, 0x0

    .line 231
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v4, "i":I
    :goto_f9
    const/16 v0, 0xa

    if-ge v4, v0, :cond_207

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v8, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-ge v0, v8, :cond_207

    .line 232
    const/4 v8, 0x0

    .line 233
    .local v8, "isAddReceiver":Z
    const/4 v9, -0x1

    .line 234
    .local v9, "cSet":I
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 235
    :try_start_10a
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v11, v11, v12

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v3, v0

    .line 236
    if-eqz v3, :cond_126

    .line 237
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    move v9, v0

    .line 239
    :cond_126
    monitor-exit v10
    :try_end_127
    .catchall {:try_start_10a .. :try_end_127} :catchall_204

    .line 240
    const/16 v0, 0x9

    if-eq v4, v0, :cond_132

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v11, v6

    if-ne v10, v11, :cond_133

    .line 241
    :cond_132
    const/4 v8, 0x1

    .line 244
    :cond_133
    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v10, v10, v11

    if-ne v9, v10, :cond_195

    .line 246
    int-to-float v0, v11

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    int-to-float v10, v10

    div-float/2addr v0, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 247
    if-eqz v8, :cond_172

    .line 248
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const-wide/32 v10, 0xea60

    invoke-virtual {v0, v7, v10, v11}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    iget-object v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v13, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    aget-boolean v14, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    aget-object v15, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    aget v16, v0, v10

    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v17, v0

    move/from16 v18, v10

    # invokes: Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v12 .. v18}, Lcom/android/server/pm/EmergencyModePackageHandler;->access$100(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_18f

    .line 251
    :cond_172
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    aget-object v18, v10, v11

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    aget-boolean v19, v10, v11

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    aget-object v20, v10, v11

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    aget v21, v10, v11

    const/16 v22, 0x0

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v17, v0

    move/from16 v23, v10

    # invokes: Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v17 .. v23}, Lcom/android/server/pm/EmergencyModePackageHandler;->access$100(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    .line 253
    :goto_18f
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    goto :goto_200

    .line 258
    :cond_195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] / ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] name["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] curr["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]  now["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]  emUserId["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "EMPkgHandler"

    invoke-static {v11, v10}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eq v4, v0, :cond_1f4

    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v10, v6

    if-ne v0, v10, :cond_1fb

    .line 262
    :cond_1f4
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 264
    :cond_1fb
    iget v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    .line 231
    :goto_200
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f9

    .line 239
    :catchall_204
    move-exception v0

    :try_start_205
    monitor-exit v10
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_204

    throw v0

    .line 269
    .end local v4    # "i":I
    .end local v8    # "isAddReceiver":Z
    .end local v9    # "cSet":I
    :cond_207
    const-string v0, "EMPkgHandler"

    const-string v4, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v0, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    goto/16 :goto_299

    .line 173
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_210
    const-string v0, "EMPkgHandler"

    const-string v6, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v0, v6}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->initForPendingBroadcast(I)V

    .line 185
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v0, :cond_291

    .line 186
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v0

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    .line 187
    if-gtz v0, :cond_256

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending size ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "EMPkgHandler"

    invoke-static {v5, v0}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 191
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 192
    return-void

    .line 194
    :cond_256
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 195
    new-array v3, v0, [Ljava/util/ArrayList;

    iput-object v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 196
    new-array v3, v0, [I

    iput-object v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    .line 197
    new-array v3, v0, [Z

    iput-object v3, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    .line 198
    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    .line 199
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 200
    :try_start_26f
    iget-object v6, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v7, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iget-object v10, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iget-object v11, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v12, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    # invokes: Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    invoke-static/range {v6 .. v12}, Lcom/android/server/pm/EmergencyModePackageHandler;->access$000(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v0

    iput v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    .line 201
    monitor-exit v3
    :try_end_284
    .catchall {:try_start_26f .. :try_end_284} :catchall_28e

    .line 202
    if-lez v0, :cond_291

    .line 203
    iget-object v0, v1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    goto :goto_291

    .line 201
    :catchall_28e
    move-exception v0

    :try_start_28f
    monitor-exit v3
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_28e

    throw v0

    .line 206
    :cond_291
    :goto_291
    const-string v0, "EMPkgHandler"

    const-string v3, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    nop

    .line 322
    :goto_299
    return-void
.end method

.method public getProgressionOfPackageChanged()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 164
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 166
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_9
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    throw v1
.end method

.method public initForPendingBroadcast(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 117
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    .line 118
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 121
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    .line 122
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    .line 123
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    .line 125
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    .line 126
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    .line 127
    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    .line 128
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 129
    return-void
.end method

.method public isCanceled()Z
    .registers 3

    .line 152
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget v1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v0, v1, :cond_8

    .line 153
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public makeNewID()V
    .registers 3

    .line 147
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makeNewID ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPkgHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public resetTask()V
    .registers 3

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    .line 133
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 136
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    .line 137
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    .line 138
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    .line 140
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    .line 141
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    .line 142
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 143
    const-string v0, "EMPkgHandler"

    const-string v1, "EMPackageHandler memory references are released"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
