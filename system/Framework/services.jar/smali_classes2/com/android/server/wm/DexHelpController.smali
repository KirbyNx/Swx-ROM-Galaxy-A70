.class public Lcom/android/server/wm/DexHelpController;
.super Ljava/lang/Object;
.source "DexHelpController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexHelpController$HelpRecord;,
        Lcom/android/server/wm/DexHelpController$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DexHelpController"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mH:Lcom/android/server/wm/DexHelpController$H;

.field private final mHelps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/DexHelpController$HelpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    new-instance v1, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DexHelpController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DexHelpController;

    .line 34
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private getHelpRecord(I)Lcom/android/server/wm/DexHelpController$HelpRecord;
    .registers 3
    .param p1, "mode"    # I

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DexHelpController$HelpRecord;

    return-object v0
.end method

.method private retrieveSettings()V
    .registers 4

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DexHelpController$HelpRecord;

    .line 72
    .local v1, "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    iget-object v2, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/DexHelpController$HelpRecord;->retrieveSettings(I)V

    .line 70
    .end local v1    # "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method


# virtual methods
.method addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;I)Z
    .registers 7
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .param p3, "mode"    # I

    .line 93
    invoke-direct {p0, p3}, Lcom/android/server/wm/DexHelpController;->getHelpRecord(I)Lcom/android/server/wm/DexHelpController$HelpRecord;

    move-result-object v0

    .line 94
    .local v0, "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    if-nez v0, :cond_f

    .line 95
    const-string v1, "DexHelpController"

    const-string v2, "Wrong help mMode."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    return v1

    .line 98
    :cond_f
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/DexHelpController$HelpRecord;->addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)Z

    move-result v1

    return v1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DexHelpController$HelpRecord;

    .line 143
    .local v1, "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/DexHelpController$HelpRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 141
    .end local v1    # "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "i":I
    :cond_17
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 146
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 49
    new-instance v0, Lcom/android/server/wm/DexHelpController$H;

    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexHelpController$H;-><init>(Lcom/android/server/wm/DexHelpController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DexHelpController;->mH:Lcom/android/server/wm/DexHelpController$H;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DexHelpController$HelpRecord;

    .line 52
    .local v1, "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    iget-object v2, p0, Lcom/android/server/wm/DexHelpController;->mH:Lcom/android/server/wm/DexHelpController$H;

    invoke-interface {v1, v2}, Lcom/android/server/wm/DexHelpController$HelpRecord;->setHandler(Lcom/android/server/wm/DexHelpController$H;)V

    .line 50
    .end local v1    # "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 54
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method installSystemProvidersLocked()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mH:Lcom/android/server/wm/DexHelpController$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DexHelpController$nsBD5JWPmbJUz-xJlOh1sR9Wm1Q;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DexHelpController$nsBD5JWPmbJUz-xJlOh1sR9Wm1Q;-><init>(Lcom/android/server/wm/DexHelpController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexHelpController$H;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public synthetic lambda$installSystemProvidersLocked$0$DexHelpController()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 87
    invoke-direct {p0}, Lcom/android/server/wm/DexHelpController;->retrieveSettings()V

    .line 88
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    return-void

    .line 88
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportHelpShown(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController;->mHelps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DexHelpController$HelpRecord;

    .line 78
    .local v0, "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    if-eqz v0, :cond_24

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportHelpShown : mode#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexHelpController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v0, p1}, Lcom/android/server/wm/DexHelpController$HelpRecord;->reportShown(Landroid/os/IBinder;)V

    .line 82
    :cond_24
    return-void
.end method

.method startUserLocked(IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 64
    if-eqz p2, :cond_5

    .line 65
    invoke-direct {p0}, Lcom/android/server/wm/DexHelpController;->retrieveSettings()V

    .line 67
    :cond_5
    return-void
.end method

.method public timeout(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/wm/DexHelpController;->getHelpRecord(I)Lcom/android/server/wm/DexHelpController$HelpRecord;

    move-result-object v0

    .line 58
    .local v0, "help":Lcom/android/server/wm/DexHelpController$HelpRecord;
    if-eqz v0, :cond_9

    .line 59
    invoke-interface {v0}, Lcom/android/server/wm/DexHelpController$HelpRecord;->timeout()V

    .line 61
    :cond_9
    return-void
.end method
