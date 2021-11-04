.class Lcom/android/server/ipm/DexPreloader$MainHandler;
.super Landroid/os/Handler;
.source "DexPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/DexPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/DexPreloader;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 182
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    .line 183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 188
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_49

    .line 189
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 190
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_47

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v4, :cond_47

    iget-object v4, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/ipm/DexPreloader;->isShowIconPackage(Ljava/lang/String;I)Z
    invoke-static {v4, v5, v3}, Lcom/android/server/ipm/DexPreloader;->access$100(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 191
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_47

    const-string v4, "/data/app/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 193
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;

    iget-object v6, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v3}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;-><init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 196
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "path":Ljava/lang/String;
    :cond_47
    goto/16 :goto_1bc

    :cond_49
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v0, v4, :cond_d2

    .line 197
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, "pkg":Ljava/lang/String;
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 199
    .local v3, "pid":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 200
    .local v4, "uid":I
    iget-object v8, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-virtual {v8, v0}, Lcom/android/server/ipm/DexPreloader;->checkAppNeed2Dex(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 201
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " dex profile begin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-wide/16 v8, 0x1770

    const-string/jumbo v10, "persist.persist.sys.stophot"

    invoke-static {v10, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 203
    .local v8, "delay":J
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 204
    .local v10, "msg_c":Landroid/os/Message;
    iput v6, v10, Landroid/os/Message;->what:I

    .line 205
    iput v3, v10, Landroid/os/Message;->arg1:I

    .line 206
    # getter for: Lcom/android/server/ipm/DexPreloader;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$300()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 207
    iget-object v6, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 208
    iget-object v6, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget v11, v6, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    add-int/2addr v11, v7

    iput v11, v6, Lcom/android/server/ipm/DexPreloader$CacheAPP;->mLaunched:I

    .line 210
    :cond_b7
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 211
    .local v6, "msg2":Landroid/os/Message;
    iput v5, v6, Landroid/os/Message;->what:I

    .line 212
    iput v3, v6, Landroid/os/Message;->arg1:I

    .line 213
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    # getter for: Lcom/android/server/ipm/DexPreloader;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$300()Landroid/os/Handler;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->DELAY_ACTOR_S:J
    invoke-static {v7}, Lcom/android/server/ipm/DexPreloader;->access$500(Lcom/android/server/ipm/DexPreloader;)J

    move-result-wide v11

    add-long/2addr v11, v8

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    .end local v6    # "msg2":Landroid/os/Message;
    .end local v8    # "delay":J
    .end local v10    # "msg_c":Landroid/os/Message;
    :cond_d0
    goto/16 :goto_1bc

    :cond_d2
    iget v0, v2, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_147

    .line 217
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 218
    .local v14, "pkg":Ljava/lang/String;
    iget v15, v2, Landroid/os/Message;->arg1:I

    .line 219
    .local v15, "uid":I
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v16

    monitor-enter v16

    .line 220
    :try_start_e4
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # invokes: Lcom/android/server/ipm/DexPreloader;->isShowIconPackage(Ljava/lang/String;I)Z
    invoke-static {v0, v14, v3}, Lcom/android/server/ipm/DexPreloader;->access$100(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 221
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 222
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-object v5, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-wide v11, v4, Lcom/android/server/ipm/DexPreloader$CacheAPP;->removeTime:J

    const/4 v13, 0x0

    move-object v4, v3

    move-object v6, v14

    invoke-direct/range {v4 .. v13}, Lcom/android/server/ipm/DexPreloader$CacheAPP;-><init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;IZJJI)V

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_141

    .line 224
    :cond_126
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-object v5, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v4, v3

    move-object v6, v14

    invoke-direct/range {v4 .. v13}, Lcom/android/server/ipm/DexPreloader$CacheAPP;-><init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;IZJJI)V

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_141
    :goto_141
    monitor-exit v16

    .line 228
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "uid":I
    goto/16 :goto_1bc

    .line 227
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v15    # "uid":I
    :catchall_144
    move-exception v0

    monitor-exit v16
    :try_end_146
    .catchall {:try_start_e4 .. :try_end_146} :catchall_144

    throw v0

    .line 228
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "uid":I
    :cond_147
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_181

    .line 229
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 230
    .local v3, "pkg":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 231
    .restart local v4    # "uid":I
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 232
    :try_start_15a
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 233
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    .line 234
    .local v0, "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->removeTime:J

    .line 235
    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    .line 237
    .end local v0    # "app":Lcom/android/server/ipm/DexPreloader$CacheAPP;
    :cond_17c
    monitor-exit v7

    .line 238
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    goto :goto_1bc

    .line 237
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catchall_17e
    move-exception v0

    monitor-exit v7
    :try_end_180
    .catchall {:try_start_15a .. :try_end_180} :catchall_17e

    throw v0

    .line 238
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_181
    iget v0, v2, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_1a7

    .line 239
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 240
    .local v0, "pid":I
    if-lez v0, :cond_1bb

    .line 241
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " send sig to pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v3, 0x1c

    invoke-static {v0, v3}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_1bb

    .line 244
    .end local v0    # "pid":I
    :cond_1a7
    iget v0, v2, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_1bb

    .line 245
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 246
    .restart local v0    # "pid":I
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 247
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/ipm/DexPreloader$MainHandler;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mAMS:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/ipm/DexPreloader;->access$600(Lcom/android/server/ipm/DexPreloader;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/server/am/ActivityManagerService;->checkProfileForADCP(ILjava/lang/String;)V

    goto :goto_1bc

    .line 244
    .end local v0    # "pid":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1bb
    :goto_1bb
    nop

    .line 249
    :goto_1bc
    return-void
.end method
