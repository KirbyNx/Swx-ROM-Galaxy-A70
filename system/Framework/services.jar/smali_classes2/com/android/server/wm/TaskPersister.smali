.class public Lcom/android/server/wm/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEDICATED_PACKAGE_ATTR:Ljava/lang/String; = "package_name"

.field private static final DEDICATED_PROCESS_ATTR:Ljava/lang/String; = "process_name"

.field private static final DEDICATED_TAG:Ljava/lang/String; = "dedicated_process"

.field private static final DEDICATED_TASKS_DIRNAME:Ljava/lang/String; = "dedicated_tasks"

.field private static final DEDICATED_TASK_TAG:Ljava/lang/String; = "task"

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final PAIR_TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_pair.xml"

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "workingDir"    # Ljava/io/File;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 128
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 129
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 130
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 131
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 132
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .registers 11
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p4, "recentTasks"    # Lcom/android/server/wm/RecentTasks;
    .param p5, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 102
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_48

    .line 104
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_48

    .line 105
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_48
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "recent_tasks"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 111
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_76

    .line 112
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_76
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 118
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 119
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 120
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 121
    invoke-virtual {p5, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .line 64
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .line 64
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getDedicatedTasksDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 557
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .line 256
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "newline":Ljava/lang/String;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 259
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 261
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_34

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 264
    :cond_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3b} :catch_3c

    return-object v3

    .line 266
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3c
    move-exception v1

    .line 267
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getDedicatedTasksDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 718
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "dedicated_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 252
    .local v0, "item":Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 552
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 540
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating user directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2d
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUserTasksDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 548
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "queueItem"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 251
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeThumbnails$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "item"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 137
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$wakeup$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "queueItem"    # Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 205
    # getter for: Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->access$300(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static removeObsoleteFile([Ljava/io/File;)V
    .registers 3
    .param p0, "files"    # [Ljava/io/File;

    .line 696
    if-nez p0, :cond_a

    .line 697
    const-string v0, "TaskPersister"

    const-string v1, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 701
    :cond_a
    const/4 v0, 0x0

    .local v0, "fileNdx":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_16

    .line 702
    aget-object v1, p0, v0

    .line 703
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 701
    .end local v1    # "file":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 705
    .end local v0    # "fileNdx":I
    :cond_16
    return-void
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 523
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 526
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 527
    .local v1, "candidateUserIds":[I
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 528
    array-length v0, v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_31

    aget v3, v1, v2

    .line 529
    .local v3, "userId":I
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 530
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 528
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 532
    :cond_31
    return-void

    .line 527
    .end local v1    # "candidateUserIds":[I
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 10
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 474
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const-string v0, "TaskPersister"

    if-nez p1, :cond_a

    .line 475
    const-string v1, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 478
    :cond_a
    const/4 v1, 0x0

    .local v1, "fileNdx":I
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_54

    .line 479
    aget-object v2, p1, v1

    .line 480
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "filename":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 482
    .local v4, "taskIdEnd":I
    if-lez v4, :cond_51

    .line 485
    const/4 v5, 0x0

    :try_start_1d
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_34

    .line 491
    .local v5, "taskId":I
    nop

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 494
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_51

    .line 487
    .end local v5    # "taskId":I
    :catch_34
    move-exception v5

    .line 488
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 478
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "taskIdEnd":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 498
    .end local v1    # "fileNdx":I
    :cond_54
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$8MhgCrM41UuyRqTjWwKtfifKRLo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$8MhgCrM41UuyRqTjWwKtfifKRLo;-><init>(Lcom/android/server/wm/Task;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 141
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 536
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 273
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 274
    return-object v0

    .line 276
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 277
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 278
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_17

    .line 279
    return-object v2

    .line 276
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 282
    .end local v1    # "taskNdx":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore affiliation error looking for taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v0
.end method

.method private writeTaskIdsFiles()V
    .registers 11

    .line 501
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 502
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 503
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3f

    aget v5, v2, v4

    .line 504
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 505
    .local v6, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 506
    .local v7, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v7, :cond_30

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 507
    goto :goto_3c

    .line 509
    :cond_30
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 510
    .local v8, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    .end local v5    # "userId":I
    .end local v6    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v7    # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v8    # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 514
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 516
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 517
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 516
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 519
    .end local v1    # "i":I
    :cond_5a
    return-void

    .line 514
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method flush()V
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->flush()V

    .line 229
    return-void
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 244
    return-object v0

    .line 246
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 12
    .param p1, "userId"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0

    .line 148
    :cond_15
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 149
    .local v0, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    const/4 v2, 0x0

    .line 153
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 154
    :cond_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4b

    .line 155
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_2d

    aget-object v7, v3, v6

    .line 156
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 157
    .local v8, "id":I
    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_48} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_48} :catch_51
    .catchall {:try_start_1e .. :try_end_48} :catchall_4f

    .line 155
    .end local v7    # "taskIdString":Ljava/lang/String;
    .end local v8    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 165
    :cond_4b
    :try_start_4b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7e

    .line 166
    goto :goto_73

    .line 165
    .end local v4    # "line":Ljava/lang/String;
    :catchall_4f
    move-exception v3

    goto :goto_69

    .line 162
    :catch_51
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_4f

    goto :goto_6f

    .line 165
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_69
    :try_start_69
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 166
    nop

    .end local v0    # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "userId":I
    throw v3

    .line 160
    .restart local v0    # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "userId":I
    :catch_6e
    move-exception v3

    .line 165
    :goto_6f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 166
    nop

    .line 167
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_7e

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    return-object v1

    .line 167
    :catchall_7e
    move-exception v2

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v2
.end method

.method public onPreProcessItem(Z)V
    .registers 7
    .param p1, "queueEmpty"    # Z

    .line 443
    if-eqz p1, :cond_64

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 448
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 450
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v3

    .line 449
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 451
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    .line 455
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_64

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 458
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 459
    .local v1, "userIds":[I
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 460
    array-length v0, v1

    const/4 v2, 0x0

    :goto_46
    if-ge v2, v0, :cond_64

    aget v3, v1, v2

    .line 461
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RecentTasks;->getDedicatedProcessCount(I)I

    move-result v4

    if-gtz v4, :cond_55

    .line 462
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskPersister;->removeObsoltedDedicatedProcessFiles(I)V

    .line 460
    .end local v3    # "userId":I
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 459
    .end local v1    # "userIds":[I
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 451
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 468
    :cond_64
    invoke-direct {p0}, Lcom/android/server/wm/TaskPersister;->writeTaskIdsFiles()V

    .line 469
    return-void
.end method

.method removeObsoltedDedicatedProcessFiles(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 691
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->getDedicatedTasksDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFile([Ljava/io/File;)V

    .line 692
    return-void
.end method

.method restoreDedicatedProcessForUserLocked(I)Ljava/util/HashMap;
    .registers 26
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 800
    const-string v1, "Deleting file="

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 801
    .local v2, "ppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getDedicatedTasksDir(I)Ljava/io/File;

    move-result-object v3

    .line 803
    .local v3, "userDedicatedTasksDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 804
    .local v4, "recentFiles":[Ljava/io/File;
    const-string v5, "TaskPersister"

    if-nez v4, :cond_2b

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreDedicatedProcess.: Unable to list files from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v0, 0x0

    return-object v0

    .line 810
    :cond_2b
    const/4 v0, 0x0

    move v6, v0

    .local v6, "taskNdx":I
    :goto_2d
    array-length v0, v4

    if-ge v6, v0, :cond_258

    .line 811
    aget-object v7, v4, v6

    .line 815
    .local v7, "taskFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "dedicated_process_task.xml"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 816
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v4, p0

    goto/16 :goto_22c

    .line 819
    :cond_48
    const/4 v8, 0x0

    .line 820
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 822
    .local v9, "deleteFile":Z
    :try_start_4a
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 823
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 824
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 827
    :goto_5c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "event":I
    const/4 v12, 0x1

    if-eq v10, v12, :cond_19f

    const/4 v10, 0x3

    if-eq v11, v10, :cond_19f

    .line 829
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 830
    .local v13, "name":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v11, v14, :cond_191

    .line 832
    const-string v15, "dedicated_process"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16b

    .line 834
    :goto_76
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v16, v15

    .local v16, "event2":I
    if-eq v15, v12, :cond_162

    move/from16 v15, v16

    .end local v16    # "event2":I
    .local v15, "event2":I
    if-eq v15, v10, :cond_15b

    .line 836
    if-ne v15, v14, :cond_150

    .line 837
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 839
    .local v17, "taskName":Ljava/lang/String;
    const-string/jumbo v10, "task"

    move-object/from16 v14, v17

    .end local v17    # "taskName":Ljava/lang/String;
    .local v14, "taskName":Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11f

    .line 840
    const/4 v10, 0x0

    .line 841
    .local v10, "pkgName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 842
    .local v17, "processName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v18
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_9c} :catch_1d3
    .catchall {:try_start_4a .. :try_end_9c} :catchall_1c9

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v12, v17

    move/from16 v23, v18

    move-object/from16 v18, v3

    move/from16 v3, v23

    .end local v17    # "processName":Ljava/lang/String;
    .local v3, "attrNdx":I
    .local v12, "processName":Ljava/lang/String;
    .local v18, "userDedicatedTasksDir":Ljava/io/File;
    :goto_a6
    if-ltz v3, :cond_f4

    .line 844
    :try_start_a8
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .line 845
    .local v20, "attrName":Ljava/lang/String;
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b2} :catch_ed
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_e4

    .line 846
    .local v19, "attrValue":Ljava/lang/String;
    move-object/from16 v21, v4

    .end local v4    # "recentFiles":[Ljava/io/File;
    .local v21, "recentFiles":[Ljava/io/File;
    :try_start_b4
    const-string/jumbo v4, "process_name"
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_df
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_d8

    move/from16 v22, v6

    move-object/from16 v6, v20

    .end local v20    # "attrName":Ljava/lang/String;
    .local v6, "attrName":Ljava/lang/String;
    .local v22, "taskNdx":I
    :try_start_bb
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 847
    move-object/from16 v4, v19

    move-object v12, v4

    .end local v12    # "processName":Ljava/lang/String;
    .local v4, "processName":Ljava/lang/String;
    goto :goto_d1

    .line 848
    .end local v4    # "processName":Ljava/lang/String;
    .restart local v12    # "processName":Ljava/lang/String;
    :cond_c5
    const-string/jumbo v4, "package_name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 849
    move-object/from16 v4, v19

    move-object v10, v4

    .line 843
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v19    # "attrValue":Ljava/lang/String;
    :cond_d1
    :goto_d1
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, v21

    move/from16 v6, v22

    goto :goto_a6

    .line 876
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "attrNdx":I
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "event":I
    .end local v12    # "processName":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "taskName":Ljava/lang/String;
    .end local v15    # "event2":I
    .end local v22    # "taskNdx":I
    .local v6, "taskNdx":I
    :catchall_d8
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v4, p0

    .end local v6    # "taskNdx":I
    .restart local v22    # "taskNdx":I
    goto/16 :goto_239

    .line 871
    .end local v22    # "taskNdx":I
    .restart local v6    # "taskNdx":I
    :catch_df
    move-exception v0

    move/from16 v22, v6

    .end local v6    # "taskNdx":I
    .restart local v22    # "taskNdx":I
    goto/16 :goto_1da

    .line 876
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .local v4, "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :catchall_e4
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v4, p0

    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    goto/16 :goto_239

    .line 871
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :catch_ed
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v6

    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    goto/16 :goto_1da

    .line 842
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "attrNdx":I
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v11    # "event":I
    .restart local v12    # "processName":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "taskName":Ljava/lang/String;
    .restart local v15    # "event2":I
    :cond_f4
    move-object/from16 v21, v4

    move/from16 v22, v6

    .line 852
    .end local v3    # "attrNdx":I
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    if-eqz v12, :cond_101

    if-nez v10, :cond_fd

    goto :goto_101

    .line 856
    :cond_fd
    invoke-virtual {v2, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 853
    :cond_101
    :goto_101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "task: proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    :goto_11e
    goto :goto_142

    .line 859
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .local v3, "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :cond_11f
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreDedicatedProcess.: Unknown xml event2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " taskName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_142
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 863
    .end local v14    # "taskName":Ljava/lang/String;
    move-object/from16 v3, v18

    move-object/from16 v4, v21

    move/from16 v6, v22

    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v14, 0x2

    goto/16 :goto_76

    .line 836
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :cond_150
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v14, 0x2

    goto/16 :goto_76

    .line 834
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :cond_15b
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    goto :goto_16a

    .end local v15    # "event2":I
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    .restart local v16    # "event2":I
    :cond_162
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    move/from16 v15, v16

    .line 865
    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .end local v16    # "event2":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    :goto_16a
    goto :goto_197

    .line 866
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :cond_16b
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreDedicatedProcess.: Unknown xml event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_18e} :catch_18f
    .catchall {:try_start_bb .. :try_end_18e} :catchall_236

    goto :goto_197

    .line 871
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "event":I
    .end local v13    # "name":Ljava/lang/String;
    :catch_18f
    move-exception v0

    goto :goto_1da

    .line 830
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    .restart local v11    # "event":I
    .restart local v13    # "name":Ljava/lang/String;
    :cond_191
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .line 870
    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .end local v13    # "name":Ljava/lang/String;
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    :goto_197
    move-object/from16 v3, v18

    move-object/from16 v4, v21

    move/from16 v6, v22

    goto/16 :goto_5c

    .line 827
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :cond_19f
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .line 876
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .end local v11    # "event":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 877
    if-eqz v9, :cond_1c6

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-object/from16 v4, p0

    goto :goto_22c

    .line 877
    :cond_1c6
    move-object/from16 v4, p0

    goto :goto_22c

    .line 876
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :catchall_1c9
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v4, p0

    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    goto :goto_239

    .line 871
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "taskNdx":I
    :catch_1d3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v22, v6

    .line 872
    .end local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v4    # "recentFiles":[Ljava/io/File;
    .end local v6    # "taskNdx":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v21    # "recentFiles":[Ljava/io/File;
    .restart local v22    # "taskNdx":I
    :goto_1da
    :try_start_1da
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1fd
    .catchall {:try_start_1da .. :try_end_1fd} :catchall_236

    move-object/from16 v4, p0

    :try_start_1ff
    invoke-direct {v4, v7}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20d
    .catchall {:try_start_1ff .. :try_end_20d} :catchall_234

    .line 874
    const/4 v0, 0x1

    .line 876
    .end local v9    # "deleteFile":Z
    .local v0, "deleteFile":Z
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 877
    if-eqz v0, :cond_22c

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 810
    .end local v0    # "deleteFile":Z
    .end local v7    # "taskFile":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :cond_22c
    :goto_22c
    add-int/lit8 v6, v22, 0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    .end local v22    # "taskNdx":I
    .restart local v6    # "taskNdx":I
    goto/16 :goto_2d

    .line 876
    .end local v6    # "taskNdx":I
    .restart local v7    # "taskFile":Ljava/io/File;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "deleteFile":Z
    .restart local v22    # "taskNdx":I
    :catchall_234
    move-exception v0

    goto :goto_239

    :catchall_236
    move-exception v0

    move-object/from16 v4, p0

    :goto_239
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 877
    if-eqz v9, :cond_257

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 881
    :cond_257
    throw v0

    .line 884
    .end local v7    # "taskFile":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "deleteFile":Z
    .end local v18    # "userDedicatedTasksDir":Ljava/io/File;
    .end local v21    # "recentFiles":[Ljava/io/File;
    .end local v22    # "taskNdx":I
    .restart local v3    # "userDedicatedTasksDir":Ljava/io/File;
    .restart local v4    # "recentFiles":[Ljava/io/File;
    :cond_258
    return-object v2
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;Ljava/util/List;)Ljava/util/List;
    .registers 23
    .param p1, "userId"    # I
    .param p2, "preaddedTasks"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/PairTask;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 290
    .local p3, "pairTaskList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/PairTask;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 291
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 293
    .local v4, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v5

    .line 295
    .local v5, "userTasksDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 296
    .local v6, "recentFiles":[Ljava/io/File;
    const-string v7, "TaskPersister"

    if-nez v6, :cond_32

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v3

    .line 301
    :cond_32
    const/4 v0, 0x0

    move v8, v0

    .local v8, "taskNdx":I
    :goto_34
    array-length v0, v6

    const/4 v9, 0x1

    if-ge v8, v0, :cond_282

    .line 302
    aget-object v10, v6, v8

    .line 304
    .local v10, "taskFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 311
    .local v0, "isPairTaskFile":Z
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_task.xml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5d

    .line 313
    nop

    .line 314
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "_pair.xml"

    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 315
    const/4 v0, 0x1

    move v11, v0

    goto :goto_5e

    .line 314
    :cond_57
    move-object/from16 v16, v6

    move/from16 v18, v8

    goto/16 :goto_27c

    .line 311
    :cond_5d
    move v11, v0

    .line 322
    .end local v0    # "isPairTaskFile":Z
    .local v11, "isPairTaskFile":Z
    :goto_5e
    :try_start_5e
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v13, v12

    .line 322
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "taskId":I
    move-object/from16 v13, p2

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_7e} :catch_26f

    if-eqz v12, :cond_a8

    .line 326
    :try_start_80
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task #"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has already been created so we don\'t restore again"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_99} :catch_9f

    .line 328
    move-object/from16 v16, v6

    move/from16 v18, v8

    goto/16 :goto_27c

    .line 330
    .end local v0    # "taskId":I
    :catch_9f
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v17, v11

    goto/16 :goto_276

    .line 333
    :cond_a8
    nop

    .line 335
    const/4 v12, 0x0

    .line 336
    .local v12, "reader":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 338
    .local v14, "deleteFile":Z
    :try_start_ab
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 339
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 340
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 343
    :goto_bd
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v16, v15

    .local v16, "event":I
    if-eq v15, v9, :cond_20a

    const/4 v15, 0x3

    move/from16 v9, v16

    .end local v16    # "event":I
    .local v9, "event":I
    if-eq v9, v15, :cond_203

    .line 345
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ce} :catch_223
    .catchall {:try_start_ab .. :try_end_ce} :catchall_21b

    .line 346
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v16, v6

    .end local v6    # "recentFiles":[Ljava/io/File;
    .local v16, "recentFiles":[Ljava/io/File;
    const/4 v6, 0x2

    if-ne v9, v6, :cond_1ef

    .line 348
    :try_start_d3
    const-string/jumbo v6, "task"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_da} :catch_1e9
    .catchall {:try_start_d3 .. :try_end_da} :catchall_1e2

    if-eqz v6, :cond_1c0

    .line 350
    if-eqz v11, :cond_123

    .line 351
    :try_start_de
    iget-object v6, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0, v6, v2}, Lcom/android/server/wm/PairTask;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;I)Lcom/android/server/wm/PairTask;

    move-result-object v6
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e4} :catch_11a
    .catchall {:try_start_de .. :try_end_e4} :catchall_111

    .line 352
    .local v6, "pairTask":Lcom/android/server/wm/PairTask;
    move/from16 v17, v11

    .end local v11    # "isPairTaskFile":Z
    .local v17, "isPairTaskFile":Z
    :try_start_e6
    iget-object v11, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v13, v6, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {v11, v13, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setNextTaskIdForUser(II)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ed} :catch_10a
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_103

    .line 353
    move-object/from16 v11, p3

    :try_start_ef
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget v13, v6, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fb} :catch_101
    .catchall {:try_start_ef .. :try_end_fb} :catchall_ff

    .line 355
    move/from16 v18, v8

    .end local v6    # "pairTask":Lcom/android/server/wm/PairTask;
    goto/16 :goto_1f3

    .line 402
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "event":I
    .end local v15    # "name":Ljava/lang/String;
    :catchall_ff
    move-exception v0

    goto :goto_106

    .line 397
    :catch_101
    move-exception v0

    goto :goto_10d

    .line 402
    :catchall_103
    move-exception v0

    move-object/from16 v11, p3

    :goto_106
    move/from16 v18, v8

    goto/16 :goto_266

    .line 397
    :catch_10a
    move-exception v0

    move-object/from16 v11, p3

    :goto_10d
    move/from16 v18, v8

    goto/16 :goto_22a

    .line 402
    .end local v17    # "isPairTaskFile":Z
    .restart local v11    # "isPairTaskFile":Z
    :catchall_111
    move-exception v0

    move/from16 v17, v11

    move-object/from16 v11, p3

    move/from16 v18, v8

    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    goto/16 :goto_266

    .line 397
    .end local v17    # "isPairTaskFile":Z
    .restart local v11    # "isPairTaskFile":Z
    :catch_11a
    move-exception v0

    move/from16 v17, v11

    move-object/from16 v11, p3

    move/from16 v18, v8

    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    goto/16 :goto_22a

    .line 357
    .end local v17    # "isPairTaskFile":Z
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "event":I
    .restart local v11    # "isPairTaskFile":Z
    .restart local v15    # "name":Ljava/lang/String;
    :cond_123
    move/from16 v17, v11

    move-object/from16 v11, p3

    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    :try_start_127
    iget-object v6, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0, v6}, Lcom/android/server/wm/Task;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 360
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_192

    .line 366
    iget v13, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 367
    .local v13, "taskId":I
    iget-object v11, v1, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_135} :catch_1bb
    .catchall {:try_start_127 .. :try_end_135} :catchall_1b6

    move/from16 v18, v8

    const/4 v8, 0x1

    .end local v8    # "taskNdx":I
    .local v18, "taskNdx":I
    :try_start_138
    invoke-virtual {v11, v13, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_158

    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Existing task with taskId "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "found"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    .line 372
    :cond_158
    iget v8, v6, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v2, v8, :cond_17f

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task with userId "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " found in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 374
    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    .line 379
    :cond_17f
    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v8, v13, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setNextTaskIdForUser(II)V

    .line 380
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 381
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v13    # "taskId":I
    :goto_191
    goto :goto_1b5

    .line 385
    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_192
    move/from16 v18, v8

    .end local v8    # "taskNdx":I
    .restart local v18    # "taskNdx":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-direct {v1, v10}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 385
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :goto_1b5
    goto :goto_1f3

    .line 402
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "event":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :catchall_1b6
    move-exception v0

    move/from16 v18, v8

    .end local v8    # "taskNdx":I
    .restart local v18    # "taskNdx":I
    goto/16 :goto_266

    .line 397
    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :catch_1bb
    move-exception v0

    move/from16 v18, v8

    .end local v8    # "taskNdx":I
    .restart local v18    # "taskNdx":I
    goto/16 :goto_22a

    .line 391
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "taskNdx":I
    .restart local v9    # "event":I
    .restart local v11    # "isPairTaskFile":Z
    .restart local v15    # "name":Ljava/lang/String;
    :cond_1c0
    move/from16 v18, v8

    move/from16 v17, v11

    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f3

    .line 402
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "event":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    .restart local v11    # "isPairTaskFile":Z
    :catchall_1e2
    move-exception v0

    move/from16 v18, v8

    move/from16 v17, v11

    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    goto/16 :goto_266

    .line 397
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    .restart local v11    # "isPairTaskFile":Z
    :catch_1e9
    move-exception v0

    move/from16 v18, v8

    move/from16 v17, v11

    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    goto :goto_22a

    .line 346
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "taskNdx":I
    .restart local v9    # "event":I
    .restart local v11    # "isPairTaskFile":Z
    .restart local v15    # "name":Ljava/lang/String;
    :cond_1ef
    move/from16 v18, v8

    move/from16 v17, v11

    .line 395
    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    :goto_1f3
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_1f6} :catch_201
    .catchall {:try_start_138 .. :try_end_1f6} :catchall_265

    .line 396
    .end local v15    # "name":Ljava/lang/String;
    move-object/from16 v13, p2

    move-object/from16 v6, v16

    move/from16 v11, v17

    move/from16 v8, v18

    const/4 v9, 0x1

    goto/16 :goto_bd

    .line 397
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "event":I
    :catch_201
    move-exception v0

    goto :goto_22a

    .line 343
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v6, "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v9    # "event":I
    .restart local v11    # "isPairTaskFile":Z
    :cond_203
    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v17, v11

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    goto :goto_212

    .end local v9    # "event":I
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "isPairTaskFile":Z
    .local v16, "event":I
    :cond_20a
    move/from16 v18, v8

    move/from16 v17, v11

    move/from16 v9, v16

    move-object/from16 v16, v6

    .line 402
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .local v16, "recentFiles":[Ljava/io/File;
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    :goto_212
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 403
    if-eqz v14, :cond_27c

    .line 405
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_27c

    .line 402
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "isPairTaskFile":Z
    :catchall_21b
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v17, v11

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    goto :goto_266

    .line 397
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "isPairTaskFile":Z
    :catch_223
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v17, v11

    .line 398
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    :goto_22a
    :try_start_22a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25b
    .catchall {:try_start_22a .. :try_end_25b} :catchall_265

    .line 400
    const/4 v0, 0x1

    .line 402
    .end local v14    # "deleteFile":Z
    .local v0, "deleteFile":Z
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 403
    if-eqz v0, :cond_27c

    .line 405
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_27c

    .line 402
    .end local v0    # "deleteFile":Z
    .restart local v14    # "deleteFile":Z
    :catchall_265
    move-exception v0

    :goto_266
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 403
    if-eqz v14, :cond_26e

    .line 405
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 407
    :cond_26e
    throw v0

    .line 330
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "deleteFile":Z
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "isPairTaskFile":Z
    .end local v18    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v11    # "isPairTaskFile":Z
    :catch_26f
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    move/from16 v17, v11

    .line 331
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v11    # "isPairTaskFile":Z
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "isPairTaskFile":Z
    .restart local v18    # "taskNdx":I
    :goto_276
    const-string v6, "Unexpected task file name"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    nop

    .line 301
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "taskFile":Ljava/io/File;
    .end local v17    # "isPairTaskFile":Z
    :cond_27c
    :goto_27c
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v6, v16

    .end local v18    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    goto/16 :goto_34

    .end local v16    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    :cond_282
    move-object/from16 v16, v6

    move/from16 v18, v8

    .line 411
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 415
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .local v0, "taskNdx":I
    :goto_293
    if-ltz v0, :cond_2b0

    .line 416
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 417
    .local v6, "task":Lcom/android/server/wm/Task;
    iget v7, v6, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 418
    iget v7, v6, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 415
    .end local v6    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_293

    .line 421
    .end local v0    # "taskNdx":I
    :cond_2b0
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskPersister$1;-><init>(Lcom/android/server/wm/TaskPersister;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 434
    return-object v3
.end method

.method saveDedicatedProcessName(Ljava/util/HashMap;ZI)V
    .registers 8
    .param p2, "flush"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 709
    .local p1, "ppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 710
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v2, p1, v3, p3}, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;-><init>(Ljava/util/HashMap;Lcom/android/server/wm/ActivityTaskManagerService;I)V

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 712
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 715
    return-void

    .line 712
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v1, p2, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 238
    return-void
.end method

.method savePairTask(Lcom/android/server/wm/PairTask;Z)V
    .registers 6
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;
    .param p2, "flush"    # Z

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/TaskPersister$PairTaskWriteQueueItem;-><init>(Lcom/android/server/wm/PairTask;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 891
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 199
    return-void
.end method

.method wakeup(Lcom/android/server/wm/Task;Z)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flush"    # Z

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 203
    if-eqz p1, :cond_30

    .line 204
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;-><init>(Lcom/android/server/wm/Task;)V

    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 206
    .local v1, "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    if-eqz v1, :cond_1d

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v2, :cond_1d

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeThumbnails(Lcom/android/server/wm/Task;)V

    .line 210
    :cond_1d
    if-nez v1, :cond_2f

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_2f

    .line 211
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v2, v3, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 213
    .end local v1    # "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    :cond_2f
    goto :goto_37

    .line 216
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    sget-object v2, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 222
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 225
    return-void

    .line 222
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 10
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    .line 175
    if-gez p2, :cond_3

    .line 176
    return-void

    .line 178
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 179
    .local v0, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 183
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 184
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 185
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_3a
    .catchall {:try_start_b .. :try_end_31} :catchall_38

    .line 183
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 192
    .end local v3    # "i":I
    :cond_34
    :try_start_34
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_5c

    .line 193
    :goto_37
    goto :goto_55

    .line 192
    :catchall_38
    move-exception v3

    goto :goto_57

    .line 189
    :catch_3a
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while writing taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 192
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_51
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_37

    .line 194
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_55
    monitor-exit v1

    .line 195
    return-void

    .line 192
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_57
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 193
    nop

    .end local v0    # "persistedTaskIdsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "taskIds":Landroid/util/SparseBooleanArray;
    .end local p2    # "userId":I
    throw v3

    .line 194
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "persistedTaskIdsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "taskIds":Landroid/util/SparseBooleanArray;
    .restart local p2    # "userId":I
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5c

    throw v2
.end method
