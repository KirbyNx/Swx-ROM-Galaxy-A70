.class Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyFileManagerHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;,
        Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;
    }
.end annotation


# instance fields
.field private final mH:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

.field private final mLazyThread:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

.field private final mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;-><init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Landroid/os/Looper;Lcom/android/server/wm/PackageSettingsManager$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mH:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    .line 337
    new-instance v0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;-><init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mLazyThread:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    .line 338
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 339
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mLazyThread:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
    .param p1, "x1"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->registerFileHandler(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->requestToSave(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private registerFileHandler(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V
    .registers 3
    .param p1, "fileHandler"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mLazyThread:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    # getter for: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->mFileHandlerSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->access$800(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method private requestToSave(II)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "requestPackageSetting"    # I

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 348
    .local v0, "oldRequest":I
    or-int/2addr p2, v0

    .line 350
    .end local v0    # "oldRequest":I
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mH:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mH:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mH:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    .end local v0    # "msg":Landroid/os/Message;
    :cond_40
    return-void
.end method
