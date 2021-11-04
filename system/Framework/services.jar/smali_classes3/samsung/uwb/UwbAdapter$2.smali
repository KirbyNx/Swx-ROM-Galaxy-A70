.class Lsamsung/uwb/UwbAdapter$2;
.super Lsamsung/uwb/IRangingCallback$Stub;
.source "UwbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsamsung/uwb/UwbAdapter;->registerRangingCallback(ILsamsung/uwb/RangingCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsamsung/uwb/UwbAdapter;

.field final synthetic val$callback:Lsamsung/uwb/RangingCallback;


# direct methods
.method constructor <init>(Lsamsung/uwb/UwbAdapter;Lsamsung/uwb/RangingCallback;)V
    .registers 3
    .param p1, "this$0"    # Lsamsung/uwb/UwbAdapter;

    .line 722
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter$2;->this$0:Lsamsung/uwb/UwbAdapter;

    iput-object p2, p0, Lsamsung/uwb/UwbAdapter$2;->val$callback:Lsamsung/uwb/RangingCallback;

    invoke-direct {p0}, Lsamsung/uwb/IRangingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangingDataReceived(Lsamsung/uwb/RangingMeasure;)V
    .registers 4
    .param p1, "rangingMeasure"    # Lsamsung/uwb/RangingMeasure;

    .line 725
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$2;->this$0:Lsamsung/uwb/UwbAdapter;

    # getter for: Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lsamsung/uwb/UwbAdapter;->access$000(Lsamsung/uwb/UwbAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsamsung/uwb/UwbAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lsamsung/uwb/UwbAdapter$2$1;-><init>(Lsamsung/uwb/UwbAdapter$2;Lsamsung/uwb/RangingMeasure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public onRangingStatusReceived(I)V
    .registers 4
    .param p1, "status"    # I

    .line 736
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter$2;->this$0:Lsamsung/uwb/UwbAdapter;

    # getter for: Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lsamsung/uwb/UwbAdapter;->access$000(Lsamsung/uwb/UwbAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsamsung/uwb/UwbAdapter$2$2;

    invoke-direct {v1, p0, p1}, Lsamsung/uwb/UwbAdapter$2$2;-><init>(Lsamsung/uwb/UwbAdapter$2;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method
