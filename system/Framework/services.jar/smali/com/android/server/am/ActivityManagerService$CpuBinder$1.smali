.class Lcom/android/server/am/ActivityManagerService$CpuBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$CpuBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$CpuBinder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService$CpuBinder;

    .line 2729
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 2733
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cpuinfo"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2734
    return-void

    .line 2735
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2736
    if-eqz p4, :cond_23

    .line 2737
    :try_start_18
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 2738
    monitor-exit v0

    return-void

    .line 2740
    :cond_23
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2741
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2742
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2741
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2743
    monitor-exit v0

    .line 2744
    return-void

    .line 2743
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_43

    throw v1
.end method
