.class final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .line 955
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/PinnerService;
    .param p2, "x1"    # Lcom/android/server/PinnerService$1;

    .line 955
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 958
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "PinnerService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 959
    :cond_13
    iget-object v3, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    monitor-enter v3

    .line 960
    const-wide/16 v4, 0x0

    .line 961
    .local v4, "totalSize":J
    :try_start_18
    iget-object v0, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PinnerService$PinnedFile;

    .line 962
    .local v6, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-string v10, "%s %s\n"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, v6, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v11, v7, v9

    iget v9, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v10, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 963
    iget v7, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 964
    .end local v6    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_22

    .line 965
    :cond_49
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 966
    iget-object v0, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 967
    .local v6, "key":I
    iget-object v10, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;
    invoke-static {v10}, Lcom/android/server/PinnerService;->access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PinnerService$PinnedApp;

    .line 968
    .local v10, "app":Lcom/android/server/PinnerService$PinnedApp;
    iget-object v11, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # invokes: Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;
    invoke-static {v11, v6}, Lcom/android/server/PinnerService;->access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 969
    const-string v11, " uid="

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v10, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 970
    const-string v11, " active="

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v10, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 972
    iget-object v11, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;
    invoke-static {v11}, Lcom/android/server/PinnerService;->access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PinnerService$PinnedApp;

    iget-object v11, v11, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PinnerService$PinnedFile;

    .line 973
    .local v12, "pf":Lcom/android/server/PinnerService$PinnedFile;
    const-string v13, "  "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "%s %s\n"

    new-array v14, v7, [Ljava/lang/Object;

    iget-object v15, v12, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v15, v14, v9

    iget v15, v12, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    invoke-virtual {v2, v13, v14}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 974
    iget v13, v12, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v13, v13

    add-long/2addr v4, v13

    .line 975
    .end local v12    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_b0

    .line 976
    .end local v6    # "key":I
    .end local v10    # "app":Lcom/android/server/PinnerService$PinnedApp;
    :cond_d9
    goto :goto_5a

    .line 977
    :cond_da
    const-string v0, "Total size: %s\n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v0, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 978
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 979
    iget-object v0, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 980
    const-string v0, "Pending repin: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    iget-object v0, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # getter for: Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_128

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 982
    .restart local v6    # "key":I
    iget-object v7, v1, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    # invokes: Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/server/PinnerService;->access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 983
    .end local v6    # "key":I
    goto :goto_109

    .line 984
    :cond_128
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 986
    .end local v4    # "totalSize":J
    :cond_12b
    monitor-exit v3

    .line 987
    return-void

    .line 986
    :catchall_12d
    move-exception v0

    monitor-exit v3
    :try_end_12f
    .catchall {:try_start_18 .. :try_end_12f} :catchall_12d

    throw v0
.end method
