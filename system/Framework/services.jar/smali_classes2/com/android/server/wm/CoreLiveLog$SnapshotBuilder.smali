.class public Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
.super Ljava/lang/Object;
.source "CoreLiveLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CoreLiveLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;
    }
.end annotation


# instance fields
.field private good:Z

.field private mCommand:Lcom/android/server/wm/CoreLiveLog;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    .line 284
    new-instance v1, Lcom/android/server/wm/CoreLiveLog;

    invoke-direct {v1}, Lcom/android/server/wm/CoreLiveLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    .line 286
    :try_start_d
    const-string v2, ""

    invoke-static {v2}, Lcom/android/server/wm/CoreLiveLogUtil;->getLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    # setter for: Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/server/wm/CoreLiveLog;->access$302(Lcom/android/server/wm/CoreLiveLog;Ljava/io/File;)Ljava/io/File;

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/wm/CoreLiveLog;->access$300(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    # setter for: Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;
    invoke-static {v1, v2}, Lcom/android/server/wm/CoreLiveLog;->access$402(Lcom/android/server/wm/CoreLiveLog;Ljava/io/FileInputStream;)Ljava/io/FileInputStream;

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    iget-object v2, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/wm/CoreLiveLog;->access$400(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    # setter for: Lcom/android/server/wm/CoreLiveLog;->mDescriptor:Ljava/io/FileDescriptor;
    invoke-static {v1, v2}, Lcom/android/server/wm/CoreLiveLog;->access$502(Lcom/android/server/wm/CoreLiveLog;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 289
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/wm/CoreLiveLog;->access$300(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    # setter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v1, v2}, Lcom/android/server/wm/CoreLiveLog;->access$602(Lcom/android/server/wm/CoreLiveLog;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_45} :catch_4a

    .line 294
    nop

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    .line 296
    return-void

    .line 290
    :catch_4a
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create file. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoreLiveLog"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    .line 293
    return-void
.end method


# virtual methods
.method public addCaller(I)Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
    .registers 4
    .param p1, "depth"    # I

    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    if-nez v0, :cond_5

    .line 331
    return-object p0

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "=== Caller ="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "log":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v1}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return-object p0
.end method

.method public addStaticMessage(Ljava/lang/String;)Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 340
    iget-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    if-nez v0, :cond_5

    .line 341
    return-object p0

    .line 343
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "=== Message ="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    return-object p0
.end method

.method public addWindowStateDump(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
    .registers 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    if-nez v0, :cond_5

    .line 320
    return-object p0

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "=== windowState dump ="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    if-eqz p1, :cond_1e

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 326
    :cond_1e
    return-object p0
.end method

.method public addWindowTokenDump(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
    .registers 5
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 308
    iget-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    if-nez v0, :cond_5

    .line 309
    return-object p0

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "=== winToken dump ="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    if-eqz p1, :cond_1e

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 315
    :cond_1e
    return-object p0
.end method

.method public addWmLog(Lcom/android/server/wm/WindowManagerService;[Ljava/lang/String;)Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "args"    # [Ljava/lang/String;

    .line 299
    iget-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    if-nez v0, :cond_5

    .line 300
    return-object p0

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "=== WmDump ="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mDescriptor:Ljava/io/FileDescriptor;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$500(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v1}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 304
    return-object p0
.end method

.method public build()Lcom/android/server/wm/CoreLiveLog;
    .registers 2

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->build(Landroid/content/Context;)Lcom/android/server/wm/CoreLiveLog;

    move-result-object v0

    return-object v0
.end method

.method public build(Landroid/content/Context;)Lcom/android/server/wm/CoreLiveLog;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 353
    if-eqz p1, :cond_5

    .line 354
    # setter for: Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/CoreLiveLog;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 356
    :cond_5
    # getter for: Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/wm/CoreLiveLog;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->good:Z

    if-nez v0, :cond_10

    goto :goto_1c

    .line 360
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    # getter for: Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLog;->access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->mCommand:Lcom/android/server/wm/CoreLiveLog;

    return-object v0

    .line 357
    :cond_1c
    :goto_1c
    const-string v0, "CoreLiveLog"

    const-string v1, "Cannot build LiveLog item"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder$EmptyLiveLog;-><init>(Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;)V

    return-object v0
.end method
