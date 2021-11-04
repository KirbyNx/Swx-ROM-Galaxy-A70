.class Lcom/samsung/ucm/ucmservice/SEServiceChecker$SynchronousExecutor;
.super Ljava/lang/Object;
.source "SEServiceChecker.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/SEServiceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronousExecutor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 81
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 82
    return-void
.end method
