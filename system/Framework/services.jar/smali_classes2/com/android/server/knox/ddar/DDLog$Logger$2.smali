.class Lcom/android/server/knox/ddar/DDLog$Logger$2;
.super Ljava/lang/Thread;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/DDLog$Logger;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/knox/ddar/DDLog$Logger;
    .param p2, "name"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 334
    const-string v0, "DualDAR:DDLog:Logger"

    const-string v1, "DDAR Logger started running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_7
    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    # getter for: Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z
    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$100(Lcom/android/server/knox/ddar/DDLog$Logger;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 339
    :try_start_f
    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    # getter for: Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$200(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    # getter for: Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;
    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$300(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    # getter for: Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;
    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$300(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 341
    :cond_2c
    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    # getter for: Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$200(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    .local v1, "entry":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    # invokes: Lcom/android/server/knox/ddar/DDLog$Logger;->realStore(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$400(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3d} :catch_3e

    .line 349
    goto :goto_7

    .line 346
    .end local v1    # "entry":Ljava/lang/String;
    :catch_3e
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception in log worker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 351
    :cond_57
    return-void
.end method
