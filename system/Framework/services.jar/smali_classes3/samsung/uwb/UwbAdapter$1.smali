.class Lsamsung/uwb/UwbAdapter$1;
.super Lsamsung/uwb/IUwbCallback$Stub;
.source "UwbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsamsung/uwb/UwbAdapter;

.field final synthetic val$callback:Lsamsung/uwb/UwbCallback;


# direct methods
.method constructor <init>(Lsamsung/uwb/UwbAdapter;Lsamsung/uwb/UwbCallback;)V
    .registers 3
    .param p1, "this$0"    # Lsamsung/uwb/UwbAdapter;

    .line 235
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter$1;->this$0:Lsamsung/uwb/UwbAdapter;

    iput-object p2, p0, Lsamsung/uwb/UwbAdapter$1;->val$callback:Lsamsung/uwb/UwbCallback;

    invoke-direct {p0}, Lsamsung/uwb/IUwbCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangingDataReceived(Lsamsung/uwb/RangingData;)V
    .registers 4
    .param p1, "rangingData"    # Lsamsung/uwb/RangingData;

    .line 238
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$1;->this$0:Lsamsung/uwb/UwbAdapter;

    # getter for: Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lsamsung/uwb/UwbAdapter;->access$000(Lsamsung/uwb/UwbAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsamsung/uwb/UwbAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lsamsung/uwb/UwbAdapter$1$1;-><init>(Lsamsung/uwb/UwbAdapter$1;Lsamsung/uwb/RangingData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public onRframeDataReceived(Lsamsung/uwb/RframeData;)V
    .registers 2
    .param p1, "rframeData"    # Lsamsung/uwb/RframeData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    return-void
.end method

.method public onSessionStatusChanged(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "reasonCode"    # I

    .line 249
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$1;->this$0:Lsamsung/uwb/UwbAdapter;

    # getter for: Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lsamsung/uwb/UwbAdapter;->access$000(Lsamsung/uwb/UwbAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsamsung/uwb/UwbAdapter$1$2;

    invoke-direct {v1, p0, p1, p2}, Lsamsung/uwb/UwbAdapter$1$2;-><init>(Lsamsung/uwb/UwbAdapter$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method
