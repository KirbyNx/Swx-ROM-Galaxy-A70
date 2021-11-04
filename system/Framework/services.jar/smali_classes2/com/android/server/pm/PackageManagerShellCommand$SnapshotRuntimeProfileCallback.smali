.class Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
.super Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotRuntimeProfileCallback"
.end annotation


# instance fields
.field private mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mErrCode:I

.field private mProfileReadFd:Landroid/os/ParcelFileDescriptor;

.field private mSuccess:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1939
    invoke-direct {p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;-><init>()V

    .line 1941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 1942
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    .line 1944
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$1;

    .line 1939
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    .line 1939
    iget v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    .line 1939
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public onError(I)V
    .registers 3
    .param p1, "errCode"    # I

    .line 1962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 1963
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 1964
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1965
    return-void
.end method

.method public onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "profileReadFd"    # Landroid/os/ParcelFileDescriptor;

    .line 1948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 1953
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_a

    .line 1956
    goto :goto_e

    .line 1954
    :catch_a
    move-exception v0

    .line 1955
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1957
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1958
    return-void
.end method

.method waitTillDone()Z
    .registers 6

    .line 1968
    const/4 v0, 0x0

    .line 1972
    .local v0, "done":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0x989680

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 1974
    goto :goto_f

    .line 1973
    :catch_e
    move-exception v1

    .line 1975
    :goto_f
    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method
