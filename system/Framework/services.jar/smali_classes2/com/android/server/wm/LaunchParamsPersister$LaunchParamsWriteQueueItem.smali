.class Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchParamsWriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V
    .registers 5
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "launchParams"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 459
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    .line 461
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 462
    iput-object p4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 463
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/android/server/wm/LaunchParamsPersister;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/ComponentName;
    .param p4, "x3"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .param p5, "x4"    # Lcom/android/server/wm/LaunchParamsPersister$1;

    .line 451
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method private saveParamsToXml()Ljava/io/StringWriter;
    .registers 6

    .line 466
    const-string/jumbo v0, "launch_params"

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 467
    .local v1, "writer":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 470
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v3, 0x0

    :try_start_e
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 471
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 472
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 476
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 478
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_2b

    .line 480
    return-object v1

    .line 481
    :catch_2b
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    return-object v3
.end method


# virtual methods
.method public matches(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 515
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public bridge synthetic matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .registers 2

    .line 451
    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->matches(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z

    move-result p1

    return p1
.end method

.method public process()V
    .registers 10

    .line 488
    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->saveParamsToXml()Ljava/io/StringWriter;

    move-result-object v0

    .line 490
    .local v0, "writer":Ljava/io/StringWriter;
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    # invokes: Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/server/wm/LaunchParamsPersister;->access$400(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;

    move-result-object v1

    .line 491
    .local v1, "launchParamFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "LaunchParamsPersister"

    if-nez v2, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_31

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create folder for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 496
    :cond_31
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    # invokes: Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    invoke-static {v2, v1, v4}, Lcom/android/server/wm/LaunchParamsPersister;->access$500(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v2

    .line 497
    .local v2, "launchParamFile":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 499
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    const/4 v5, 0x0

    .line 501
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_3f
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v5, v6

    .line 502
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4f} :catch_54

    .line 509
    nop

    .line 510
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 511
    return-void

    .line 503
    :catch_54
    move-exception v6

    .line 504
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write param file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    if-eqz v5, :cond_70

    .line 506
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 508
    :cond_70
    return-void
.end method

.method public updateFrom(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)V
    .registers 3
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 520
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 521
    return-void
.end method

.method public bridge synthetic updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    .line 451
    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->updateFrom(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)V

    return-void
.end method
