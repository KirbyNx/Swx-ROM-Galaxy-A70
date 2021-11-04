.class Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;
.super Ljava/lang/Thread;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodCatchThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 339
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 344
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 346
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    monitor-enter v0

    .line 347
    :try_start_6
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$1;)V

    # setter for: Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    invoke-static {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$502(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    .line 349
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 350
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 352
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 353
    return-void

    .line 350
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
