.class Lcom/android/server/aod/AODManagerService$2;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;

    .line 194
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry updateAODTspState, mAODTspStateRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$300(Lcom/android/server/aod/AODManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$500(Lcom/android/server/aod/AODManagerService;)Z

    move-result v1

    const-string v2, "/sys/class/sec/tsp/cmd"

    # invokes: Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/server/aod/AODManagerService;->access$600(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Z)V

    .line 199
    return-void
.end method
