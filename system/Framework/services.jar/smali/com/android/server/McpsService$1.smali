.class Lcom/android/server/McpsService$1;
.super Landroid/os/Binder;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/McpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/McpsService;


# direct methods
.method constructor <init>(Lcom/android/server/McpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/McpsService;

    .line 112
    iput-object p1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # getter for: Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/McpsService;->access$100(Lcom/android/server/McpsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 116
    :try_start_7
    iget-object v1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # getter for: Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;
    invoke-static {v1}, Lcom/android/server/McpsService;->access$200(Lcom/android/server/McpsService;)Lcom/android/server/McpsDumpManager;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->isMCPSServiceInitializedLocked()Z
    invoke-static {v1}, Lcom/android/server/McpsService;->access$300(Lcom/android/server/McpsService;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_3e

    .line 120
    :cond_18
    iget-object v1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # getter for: Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;
    invoke-static {v1}, Lcom/android/server/McpsService;->access$200(Lcom/android/server/McpsService;)Lcom/android/server/McpsDumpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/McpsDumpManager;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 121
    iget-object v1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/McpsService;->access$400(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 122
    monitor-exit v0

    return-void

    .line 125
    :cond_2b
    if-eqz p3, :cond_37

    array-length v1, p3

    if-nez v1, :cond_31

    goto :goto_37

    .line 128
    :cond_31
    iget-object v1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->doCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/McpsService;->access$500(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I

    goto :goto_3c

    .line 126
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/McpsService;->access$400(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 130
    :goto_3c
    monitor-exit v0

    .line 131
    return-void

    .line 117
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    .line 130
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method
