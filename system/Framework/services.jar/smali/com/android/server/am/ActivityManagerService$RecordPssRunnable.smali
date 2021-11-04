.class final Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordPssRunnable"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDumpUri:Landroid/net/Uri;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 5
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "dumpUri"    # Landroid/net/Uri;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;

    .line 20588
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20589
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 20590
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 20591
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    .line 20592
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 20596
    const-string v0, "ActivityManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    const-string/jumbo v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_5f

    .line 20597
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_53

    move-object v9, v2

    .line 20598
    .local v9, "thread":Landroid/app/IApplicationThread;
    if-eqz v9, :cond_4d

    .line 20600
    :try_start_14
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_3c

    .line 20601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting dump heap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 20602
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20601
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20604
    :cond_3c
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 20606
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 20604
    move-object v2, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4b} :catch_4c
    .catchall {:try_start_14 .. :try_end_4b} :catchall_53

    .line 20609
    goto :goto_4d

    .line 20608
    :catch_4c
    move-exception v2

    .line 20611
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_52

    :try_start_4f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5f

    .line 20616
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_52
    goto :goto_6e

    .line 20596
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_53
    move-exception v2

    if-eqz v1, :cond_5e

    :try_start_56
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
    :cond_5e
    :goto_5e
    throw v2
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    .line 20611
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
    :catch_5f
    move-exception v1

    .line 20612
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20615
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->abortHeapDump(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerService;->access$2100(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 20617
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6e
    return-void
.end method
