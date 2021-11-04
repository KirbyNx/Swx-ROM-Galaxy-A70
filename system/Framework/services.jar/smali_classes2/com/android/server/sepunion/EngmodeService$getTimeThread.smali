.class Lcom/android/server/sepunion/EngmodeService$getTimeThread;
.super Ljava/lang/Object;
.source "EngmodeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/EngmodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getTimeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 272
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 276
    const-string v0, ""

    .line 278
    .local v0, "serverDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sepunion/EngmodeService;->access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "engmode_service"

    if-nez v1, :cond_8d

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "request":[B
    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const-wide/16 v5, -0x1

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerLongDate:J
    invoke-static {v4, v5, v6}, Lcom/android/server/sepunion/EngmodeService;->access$802(Lcom/android/server/sepunion/EngmodeService;J)J

    .line 282
    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # invokes: Lcom/android/server/sepunion/EngmodeService;->makeTimeReq()[B
    invoke-static {v4}, Lcom/android/server/sepunion/EngmodeService;->access$900(Lcom/android/server/sepunion/EngmodeService;)[B

    move-result-object v1

    .line 283
    if-nez v1, :cond_28

    .line 284
    const-string v4, "Failed to make request time message"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;
    invoke-static {v3, v2}, Lcom/android/server/sepunion/EngmodeService;->access$1002(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 286
    return-void

    .line 289
    :cond_28
    new-instance v4, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    iget-object v5, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {v4, v5, v1}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;-><init>(Lcom/android/server/sepunion/EngmodeService;[B)V

    .line 290
    .local v4, "emsTask":Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 295
    .local v5, "startTime":J
    :cond_39
    invoke-virtual {v4}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->getResponseBody()[B

    move-result-object v7

    .line 296
    .local v7, "responseBody":[B
    if-nez v7, :cond_53

    .line 298
    const-wide/16 v8, 0x64

    :try_start_41
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    .line 300
    :goto_44
    goto :goto_47

    .line 299
    :catch_45
    move-exception v8

    goto :goto_44

    .line 305
    :goto_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-ltz v8, :cond_39

    goto :goto_5a

    .line 302
    :cond_53
    const-string/jumbo v8, "responseBody isn\'t null"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    nop

    .line 307
    :goto_5a
    if-nez v7, :cond_67

    .line 308
    const-string v8, "No valid response from EMS server!)"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;
    invoke-static {v3, v2}, Lcom/android/server/sepunion/EngmodeService;->access$1002(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 310
    return-void

    .line 313
    :cond_67
    iget-object v8, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # invokes: Lcom/android/server/sepunion/EngmodeService;->updateTime([B)Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/android/server/sepunion/EngmodeService;->access$1100(Lcom/android/server/sepunion/EngmodeService;[B)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_7c

    goto :goto_82

    .line 320
    :cond_7c
    iget-object v8, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/server/sepunion/EngmodeService;->access$102(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8d

    .line 315
    :cond_82
    :goto_82
    const-string v8, "Failed to verify server time"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;
    invoke-static {v3, v2}, Lcom/android/server/sepunion/EngmodeService;->access$1002(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 317
    return-void

    .line 323
    .end local v1    # "request":[B
    .end local v4    # "emsTask":Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;
    .end local v5    # "startTime":J
    .end local v7    # "responseBody":[B
    :cond_8d
    :goto_8d
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sepunion/EngmodeService;->access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e7

    .line 325
    :try_start_95
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/sepunion/EngmodeService;->access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 327
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 328
    .local v5, "serverTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EM Server time ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/sepunion/EngmodeService;->access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v7, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerLongDate:J
    invoke-static {v7, v5, v6}, Lcom/android/server/sepunion/EngmodeService;->access$802(Lcom/android/server/sepunion/EngmodeService;J)J
    :try_end_d7
    .catch Ljava/text/ParseException; {:try_start_95 .. :try_end_d7} :catch_d9

    .line 334
    nop

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "serverTime":J
    goto :goto_e7

    .line 330
    :catch_d9
    move-exception v1

    .line 331
    .local v1, "pe":Ljava/text/ParseException;
    const-string v4, "Failed to parse server date"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/sepunion/EngmodeService;->access$102(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 337
    .end local v1    # "pe":Ljava/text/ParseException;
    :cond_e7
    :goto_e7
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService$getTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/server/sepunion/EngmodeService;->access$1002(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 338
    return-void
.end method
