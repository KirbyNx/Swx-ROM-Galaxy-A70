.class public Lcom/android/server/am/mars/util/UidStateMgr;
.super Ljava/lang/Object;
.source "UidStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsOLAFEnabled:Z

.field private mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/mars/util/ConcurrentList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/mars/util/ConcurrentList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mIsOLAFEnabled:Z

    .line 20
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 21
    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 95
    new-instance v0, Lcom/android/server/am/mars/util/UidStateMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/UidStateMgr$1;-><init>(Lcom/android/server/am/mars/util/UidStateMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/util/UidStateMgr$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/util/UidStateMgr$1;

    .line 14
    invoke-direct {p0}, Lcom/android/server/am/mars/util/UidStateMgr;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/mars/util/UidStateMgr;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/util/UidStateMgr;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToUidIdleList(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/mars/util/UidStateMgr;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/util/UidStateMgr;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/mars/util/UidStateMgr;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/util/UidStateMgr;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->removeFromUidIdleList(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/mars/util/UidStateMgr;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/util/UidStateMgr;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->removeFromRunningList(I)V

    return-void
.end method

.method private addToRunningList(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 80
    iget-boolean v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mIsOLAFEnabled:Z

    if-eqz v0, :cond_15

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 83
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v0    # "uidInteger":Ljava/lang/Integer;
    :cond_15
    return-void
.end method

.method private addToUidIdleList(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 70
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_11
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/util/UidStateMgr;
    .registers 1

    .line 30
    # getter for: Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->access$100()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    return-object v0
.end method

.method private removeFromRunningList(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 89
    iget-boolean v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mIsOLAFEnabled:Z

    if-eqz v0, :cond_d

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 93
    .end local v0    # "uidInteger":Ljava/lang/Integer;
    :cond_d
    return-void
.end method

.method private removeFromUidIdleList(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public deInit(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 52
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 53
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p2}, Lcom/android/server/am/mars/util/UidStateMgr;->setContext(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mIsOLAFEnabled:Z

    .line 46
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v1, 0xe

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public isUidActive(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isUidIdle(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 56
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUidRunning(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 60
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
