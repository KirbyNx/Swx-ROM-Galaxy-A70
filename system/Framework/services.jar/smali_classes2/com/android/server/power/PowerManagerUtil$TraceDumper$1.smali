.class Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    .line 473
    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;->this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 476
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_2e

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Excessive delay : dumping trace after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;->this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    # getter for: Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->access$000(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 480
    :cond_2e
    return-void
.end method
