.class Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
.super Ljava/lang/Object;
.source "KeyCustomizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyCustomizeDataManager"
.end annotation


# instance fields
.field private mBackupKeyCustomizeDataDownUp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupKeyCustomizeDataLong:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPriority:I

.field private mHasBackupData:Z

.field private final mHotKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyCustomizeDataDouble:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyCustomizeDataDownUp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyCustomizeDataLong:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyCustomizeDataTriple:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataDownUp:Landroid/util/SparseArray;

    .line 480
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataLong:Landroid/util/SparseArray;

    .line 482
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataDouble:Landroid/util/SparseArray;

    .line 484
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataTriple:Landroid/util/SparseArray;

    .line 488
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mBackupKeyCustomizeDataDownUp:Landroid/util/SparseArray;

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mBackupKeyCustomizeDataLong:Landroid/util/SparseArray;

    .line 495
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHasBackupData:Z

    .line 502
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    .line 505
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    .line 506
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 477
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasBackupData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackupDataAllLocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackUpDataLocked(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    .line 477
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # Z

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setHasBackupData(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;ILandroid/content/ComponentName;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/ComponentName;

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->putHotKeyLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->removeHotKeyLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackupDataLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    .param p1, "x1"    # I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    .registers 4
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation

    .line 724
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    .line 725
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mBackupKeyCustomizeDataDownUp:Landroid/util/SparseArray;

    return-object v0

    .line 726
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e

    .line 727
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mBackupKeyCustomizeDataLong:Landroid/util/SparseArray;

    return-object v0

    .line 730
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not find dataMap. which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHotKeyMapLocked()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHotKeyMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    .registers 5
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation

    .line 632
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    .line 633
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataDownUp:Landroid/util/SparseArray;

    return-object v0

    .line 634
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e

    .line 635
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataLong:Landroid/util/SparseArray;

    return-object v0

    .line 636
    :cond_e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_15

    .line 637
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataDouble:Landroid/util/SparseArray;

    return-object v0

    .line 638
    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1c

    .line 639
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mKeyCustomizeDataTriple:Landroid/util/SparseArray;

    return-object v0

    .line 642
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find dataMap. which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasBackupData()Z
    .registers 2

    .line 707
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHasBackupData:Z

    return v0
.end method

.method private hasDataExceptDefaultPriority(Landroid/util/SparseArray;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 674
    .local p1, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 675
    .local v0, "size":I
    if-eqz v0, :cond_20

    .line 676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 677
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 678
    .local v2, "key":I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 679
    .local v3, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v3, :cond_1d

    iget v4, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1d

    .line 680
    const/4 v4, 0x1

    return v4

    .line 676
    .end local v2    # "key":I
    .end local v3    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 684
    .end local v1    # "i":I
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private putHotKeyLocked(ILandroid/content/ComponentName;)V
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 773
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 774
    return-void
.end method

.method private removeHotKeyLocked(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 777
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 778
    return-void
.end method

.method private restoreBackUpDataLocked(II)V
    .registers 6
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 758
    .local v0, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 759
    .local v1, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v1, :cond_19

    .line 760
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 761
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 762
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->updateBackupDataLocked()V

    .line 764
    :cond_19
    return-void
.end method

.method private restoreBackupDataAllLocked(I)V
    .registers 7
    .param p1, "press"    # I

    .line 735
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->BACKUP_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$300()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget v3, v0, v2

    .line 736
    .local v3, "type":I
    and-int v4, p1, v3

    if-eqz v4, :cond_11

    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->restoreBackupDataLocked(I)V

    .line 735
    .end local v3    # "type":I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 740
    :cond_14
    return-void
.end method

.method private restoreBackupDataLocked(I)V
    .registers 7
    .param p1, "press"    # I

    .line 743
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 744
    .local v0, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 745
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 746
    .local v2, "key":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 747
    .local v3, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v3, :cond_1e

    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    .end local v2    # "key":I
    .end local v3    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 752
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 753
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->updateBackupDataLocked()V

    .line 754
    return-void
.end method

.method private setHasBackupData(Z)V
    .registers 4
    .param p1, "backupData"    # Z

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHasBackUpData, old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHasBackupData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-boolean p1, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mHasBackupData:Z

    .line 714
    return-void
.end method

.method private updateBackupDataLocked()V
    .registers 2

    .line 717
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    .line 718
    invoke-direct {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setHasBackupData(Z)V

    .line 721
    :cond_1a
    return-void
.end method


# virtual methods
.method clear(I)V
    .registers 8
    .param p1, "press"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$400()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1b

    aget v4, v1, v3

    .line 587
    .local v4, "type":I
    and-int v5, p1, v4

    if-eqz v5, :cond_18

    .line 588
    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 586
    .end local v4    # "type":I
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 591
    :cond_1b
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method clearExceptDefaultPriorityPolicy(I)V
    .registers 14
    .param p1, "press"    # I

    .line 595
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_3
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$400()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_57

    aget v4, v1, v3

    .line 597
    .local v4, "type":I
    and-int v5, p1, v4

    if-eqz v5, :cond_54

    .line 598
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v5, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    .line 600
    .local v6, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1b
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3d

    .line 601
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 602
    .local v8, "key":I
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 603
    .local v9, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v9, :cond_3a

    iget v10, v9, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v11, 0x3e8

    if-ge v10, v11, :cond_3a

    .line 604
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    .end local v8    # "key":I
    .end local v9    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 607
    .end local v7    # "i":I
    :cond_3d
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_54

    .line 608
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 607
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 596
    .end local v4    # "type":I
    .end local v5    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/WindowManager$KeyCustomizeInfo;>;"
    .end local v7    # "i":I
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 612
    :cond_57
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method get(II)Landroid/view/WindowManager$KeyCustomizeInfo;
    .registers 5
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 555
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    monitor-exit v0

    return-object v1

    .line 557
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getAll(I)Landroid/util/SparseArray;
    .registers 4
    .param p1, "press"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 618
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getPriority()I
    .registers 2

    .line 658
    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    return v0
.end method

.method public isEmptyAllData()Z
    .registers 8

    .line 662
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_3
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$400()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1d

    aget v5, v1, v4

    .line 664
    .local v5, "type":I
    invoke-direct {p0, v5}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->hasDataExceptDefaultPriority(Landroid/util/SparseArray;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 665
    monitor-exit v0

    return v3

    .line 663
    .end local v5    # "type":I
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 668
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_27

    .line 669
    const-string v0, "KeyCustomizeManager"

    const-string v1, "EmptyAllData is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x1

    return v0

    .line 668
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public isEmptyData(II)Z
    .registers 5
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 688
    const/4 v0, 0x1

    .line 689
    .local v0, "isEmptyDataByRequestedPressType":Z
    and-int/lit8 v1, p1, 0x3

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 690
    const/4 v0, 0x0

    .line 692
    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_19

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 693
    const/4 v0, 0x0

    .line 695
    :cond_19
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_26

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 696
    const/4 v0, 0x0

    .line 698
    :cond_26
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_33

    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->get(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 699
    const/4 v0, 0x0

    .line 702
    :cond_33
    return v0
.end method

.method public isRequestedHigherPriority(I)Z
    .registers 4
    .param p1, "priority"    # I

    .line 622
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_26

    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    if-gt p1, v0, :cond_9

    goto :goto_26

    .line 626
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested priority is lower than current one. Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 627
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    const-string v1, "KeyCustomizeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x0

    return v0

    .line 623
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0
.end method

.method put(ILandroid/view/WindowManager$KeyCustomizeInfo;)V
    .registers 14
    .param p1, "press"    # I
    .param p2, "info"    # Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 511
    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    iget v1, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v2, 0x3e8

    if-le v0, v1, :cond_1c

    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    if-lt v0, v2, :cond_10

    iget v0, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-ge v0, v2, :cond_1c

    .line 513
    :cond_10
    const-string v0, "KeyCustomizeManager"

    const-string v1, "all data clear by mismatch priority."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->clearExceptDefaultPriorityPolicy(I)V

    .line 517
    :cond_1c
    iget v0, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setPriority(IZ)V

    .line 519
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_25
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_7f

    .line 522
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->BACKUP_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$300()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2f
    if-ge v5, v4, :cond_7f

    aget v6, v3, v5

    .line 523
    .local v6, "type":I
    and-int v7, p1, v6

    if-eqz v7, :cond_7c

    .line 524
    iget v7, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v8, 0x44e

    if-ne v7, v8, :cond_58

    .line 525
    nop

    .line 526
    invoke-direct {p0, v6}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    iget v9, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 527
    .local v7, "backupInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v7, :cond_58

    .line 528
    invoke-direct {p0, v6}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v9

    iget v10, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 529
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->updateBackupDataLocked()V

    .line 533
    .end local v7    # "backupInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_58
    nop

    .line 534
    invoke-direct {p0, v6}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    iget v9, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 535
    .local v7, "currentInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v7, :cond_7c

    iget v9, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-ge v9, v2, :cond_7c

    iget v9, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-ne v9, v8, :cond_7c

    .line 537
    invoke-direct {p0, v6}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v8

    iget v9, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    .line 538
    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->setHasBackupData(Z)V

    .line 522
    .end local v6    # "type":I
    .end local v7    # "currentInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 546
    :cond_7f
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$400()[I

    move-result-object v2

    array-length v3, v2

    :goto_84
    if-ge v1, v3, :cond_98

    aget v4, v2, v1

    .line 547
    .local v4, "type":I
    and-int v5, p1, v4

    if-eqz v5, :cond_95

    .line 548
    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p2, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {v5, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    .end local v4    # "type":I
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 551
    :cond_98
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_25 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method remove(II)V
    .registers 11
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->ALL_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$400()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1c

    aget v5, v1, v4

    .line 563
    .local v5, "type":I
    and-int v6, p1, v5

    if-eqz v6, :cond_19

    .line 564
    invoke-direct {p0, v5}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    .end local v5    # "type":I
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 568
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v1, :cond_4d

    .line 569
    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->BACKUP_PRESS_TYPE:[I
    invoke-static {}, Lcom/android/server/policy/KeyCustomizeManager;->access$300()[I

    move-result-object v1

    array-length v2, v1

    :goto_25
    if-ge v3, v2, :cond_4a

    aget v4, v1, v3

    .line 570
    .local v4, "type":I
    and-int v5, p1, v4

    if-eqz v5, :cond_47

    .line 571
    nop

    .line 572
    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 573
    .local v5, "backupInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v5, :cond_47

    iget v6, v5, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v7, 0x44e

    if-ne v6, v7, :cond_47

    .line 575
    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getBackupKeyCustomizeDataLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 569
    .end local v4    # "type":I
    .end local v5    # "backupInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 579
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->updateBackupDataLocked()V

    .line 581
    :cond_4d
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public setPriority(IZ)V
    .registers 8
    .param p1, "priority"    # I
    .param p2, "forced"    # Z

    .line 646
    iget v0, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    .line 647
    .local v0, "oldPriority":I
    if-eq v0, p1, :cond_16

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_12

    if-le p1, v4, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    or-int/2addr v1, v3

    if-nez v1, :cond_18

    :cond_16
    if-eqz p2, :cond_40

    .line 651
    :cond_18
    iput p1, p0, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->mCurrentPriority:I

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated priority. old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " forced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_40
    return-void
.end method
