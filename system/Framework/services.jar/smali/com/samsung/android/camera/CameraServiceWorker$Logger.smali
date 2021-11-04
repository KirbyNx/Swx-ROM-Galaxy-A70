.class public Lcom/samsung/android/camera/CameraServiceWorker$Logger;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Logger"

.field private static mInstance:[Lcom/samsung/android/camera/CameraServiceWorker$Logger;


# instance fields
.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1460
    invoke-static {}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->values()[Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mInstance:[Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mQueue:Ljava/util/Queue;

    .line 1466
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mQueue:Ljava/util/Queue;

    .line 1467
    const-string v0, "Logger"

    const-string v1, "New Logger Instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void
.end method

.method private declared-synchronized addLogInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 1486
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_11

    .line 1487
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 1490
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$Logger;
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1491
    monitor-exit p0

    return-void

    .line 1485
    .end local p1    # "text":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static dumpLog(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "id"    # Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tDump of CameraServiceWorker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->getInstance(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;)Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->dumpLogInternal(Ljava/io/PrintWriter;)V

    .line 1496
    return-void
.end method

.method private declared-synchronized dumpLogInternal(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1499
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1501
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2a

    goto :goto_7

    .line 1504
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$Logger;
    :cond_28
    monitor-exit p0

    return-void

    .line 1498
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;)Lcom/samsung/android/camera/CameraServiceWorker$Logger;
    .registers 5
    .param p0, "id"    # Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-class v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    monitor-enter v0

    .line 1471
    :try_start_3
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mInstance:[Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1a

    .line 1472
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mInstance:[Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->ordinal()I

    move-result v2

    new-instance v3, Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    invoke-direct {v3}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;-><init>()V

    aput-object v3, v1, v2

    .line 1473
    :cond_1a
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->mInstance:[Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->ordinal()I

    move-result v2

    aget-object v1, v1, v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object v1

    .line 1470
    .end local p0    # "id":Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V
    .registers 8
    .param p0, "id"    # Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;
    .param p1, "text"    # Ljava/lang/String;

    .line 1478
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1479
    .local v0, "dataFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->getInstance(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;)Lcom/samsung/android/camera/CameraServiceWorker$Logger;

    move-result-object v1

    const-string v2, "%s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->addLogInternal(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 1482
    .end local v0    # "dataFormat":Ljava/text/SimpleDateFormat;
    goto :goto_2d

    .line 1480
    :catch_2c
    move-exception v0

    .line 1483
    :goto_2d
    return-void
.end method
