.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$reasonNum:I

.field final synthetic val$reasonStr:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;IILjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 3299
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$4;->val$uid:I

    iput p3, p0, Lcom/android/server/power/PowerManagerService$4;->val$reasonNum:I

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$4;->val$reasonStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 3302
    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeUpHistory:Lcom/android/internal/util/RingBuffer;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2900()Lcom/android/internal/util/RingBuffer;

    move-result-object v0

    new-instance v10, Lcom/android/server/power/PowerManagerService$WakeUpHistory;

    iget v3, p0, Lcom/android/server/power/PowerManagerService$4;->val$uid:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService$4;->val$reasonNum:I

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$4;->val$reasonStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3303
    # invokes: Lcom/android/server/power/PowerManagerService;->getTopActivity()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->getTopPackage()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const-string v6, ""

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService$WakeUpHistory;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/PowerManagerService$1;)V

    .line 3302
    invoke-virtual {v0, v10}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 3304
    return-void
.end method
