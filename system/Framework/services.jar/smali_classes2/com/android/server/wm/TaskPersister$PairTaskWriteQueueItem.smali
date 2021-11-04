.class Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairTaskWriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;",
        ">;"
    }
.end annotation


# instance fields
.field mPairTask:Lcom/android/server/wm/PairTask;

.field mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PairTask;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    .line 900
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 901
    return-void
.end method

.method private saveToXml(Lcom/android/server/wm/PairTask;)Ljava/io/StringWriter;
    .registers 6
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 905
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 906
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 907
    .local v1, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 915
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 917
    const-string/jumbo v2, "task"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    invoke-virtual {p1, v0}, Lcom/android/server/wm/PairTask;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 919
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 922
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 924
    return-object v1
.end method


# virtual methods
.method public bridge synthetic matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .registers 2

    .line 893
    check-cast p1, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->matches(Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;)Z
    .registers 4
    .param p1, "pairItem"    # Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;

    .line 969
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    iget v0, v0, Lcom/android/server/wm/PairTask;->mTaskId:I

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    iget v1, v1, Lcom/android/server/wm/PairTask;->mTaskId:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public process()V
    .registers 10

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "stringWriter":Ljava/io/StringWriter;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    .line 933
    .local v1, "pairTask":Lcom/android/server/wm/PairTask;
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 936
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->saveToXml(Lcom/android/server/wm/PairTask;)Ljava/io/StringWriter;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_14
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    move-object v0, v3

    .line 938
    goto :goto_15

    .line 939
    :catchall_11
    move-exception v3

    goto/16 :goto_b8

    .line 937
    :catch_14
    move-exception v3

    .line 939
    :goto_15
    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 940
    if-eqz v0, :cond_b7

    .line 942
    const/4 v2, 0x0

    .line 943
    .local v2, "file":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 945
    .local v3, "atomicFile":Landroid/util/AtomicFile;
    :try_start_1d
    iget v4, v1, Lcom/android/server/wm/PairTask;->mUserId:I

    # invokes: Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/wm/TaskPersister;->access$000(I)Ljava/io/File;

    move-result-object v4

    .line 946
    .local v4, "userPairTasksDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_58

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_58

    .line 947
    const-string v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure creating tasks directory for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/PairTask;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Dropping persistence for task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 951
    :cond_58
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/android/server/wm/PairTask;->mTaskId:I

    .line 952
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_pair.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 953
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v2, v5

    .line 954
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 955
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 956
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_92} :catch_93

    .line 963
    .end local v4    # "userPairTasksDir":Ljava/io/File;
    goto :goto_b7

    .line 957
    :catch_93
    move-exception v4

    .line 958
    .local v4, "e":Ljava/io/IOException;
    if-eqz v2, :cond_99

    .line 959
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 961
    :cond_99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for persisting. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TaskPersister"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v2    # "file":Ljava/io/FileOutputStream;
    .end local v3    # "atomicFile":Landroid/util/AtomicFile;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b7
    :goto_b7
    return-void

    .line 939
    :goto_b8
    :try_start_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskWriteQueueItem{pair task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    .line 893
    check-cast p1, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->updateFrom(Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;)V

    return-void
.end method

.method public updateFrom(Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;)V
    .registers 3
    .param p1, "pairItem"    # Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;

    .line 974
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;->mPairTask:Lcom/android/server/wm/PairTask;

    .line 975
    return-void
.end method
