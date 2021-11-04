.class Lcom/android/server/Watchdog$2;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

.field final synthetic val$report:Ljava/lang/StringBuilder;

.field final synthetic val$stack:Ljava/io/File;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "name"    # Ljava/lang/String;

    .line 1209
    iput-object p1, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$2;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/Watchdog$2;->val$report:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/Watchdog$2;->val$stack:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/Watchdog$2;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1213
    iget-object v0, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    # getter for: Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/Watchdog;->access$300(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1214
    iget-object v0, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    # getter for: Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/Watchdog;->access$300(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/Watchdog$2;->val$subject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/Watchdog$2;->val$report:Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/Watchdog$2;->val$stack:Ljava/io/File;

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/server/Watchdog$2;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    move-object v12, v0

    .line 1214
    const-string/jumbo v2, "watchdog"

    const-string/jumbo v4, "system_server"

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V

    .line 1218
    :cond_2f
    const/16 v0, 0xb9

    iget-object v1, p0, Lcom/android/server/Watchdog$2;->val$subject:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 1220
    return-void
.end method
