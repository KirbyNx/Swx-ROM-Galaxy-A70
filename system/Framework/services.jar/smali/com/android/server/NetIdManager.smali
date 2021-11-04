.class public Lcom/android/server/NetIdManager;
.super Ljava/lang/Object;
.source "NetIdManager.java"


# static fields
.field private static final MAX_IMS_NET_ID:I = 0x258

.field public static final MAX_NET_ID:I = 0xfbff

.field private static final MIN_IMS_NET_ID:I = 0x1f5

.field private static final MIN_NET_ID:I = 0x259


# instance fields
.field private mLastImsNetId:I

.field private mLastNetId:I

.field private final mMaxNetId:I

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    const v0, 0xfbff

    invoke-direct {p0, v0}, Lcom/android/server/NetIdManager;-><init>(I)V

    .line 57
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "maxNetId"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/NetIdManager;->mLastImsNetId:I

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 50
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    .line 61
    iput p1, p0, Lcom/android/server/NetIdManager;->mMaxNetId:I

    .line 62
    return-void
.end method

.method private getNextAvailableImsNetIdLocked(ILandroid/util/SparseBooleanArray;)I
    .registers 6
    .param p1, "lastId"    # I
    .param p2, "netIdInUse"    # Landroid/util/SparseBooleanArray;

    .line 82
    move v0, p1

    .line 83
    .local v0, "netId":I
    const/16 v1, 0x1f5

    .local v1, "i":I
    :goto_3
    const/16 v2, 0x258

    if-gt v1, v2, :cond_19

    .line 84
    if-ge v0, v2, :cond_c

    add-int/lit8 v2, v0, 0x1

    goto :goto_e

    :cond_c
    const/16 v2, 0x1f5

    :goto_e
    move v0, v2

    .line 85
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 86
    return v0

    .line 83
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 89
    .end local v1    # "i":I
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No free netIds"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getNextAvailableNetIdLocked(ILandroid/util/SparseBooleanArray;)I
    .registers 6
    .param p1, "lastId"    # I
    .param p2, "netIdInUse"    # Landroid/util/SparseBooleanArray;

    .line 69
    move v0, p1

    .line 70
    .local v0, "netId":I
    const/16 v1, 0x259

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/android/server/NetIdManager;->mMaxNetId:I

    if-gt v1, v2, :cond_19

    .line 71
    if-ge v0, v2, :cond_c

    add-int/lit8 v2, v0, 0x1

    goto :goto_e

    :cond_c
    const/16 v2, 0x259

    :goto_e
    move v0, v2

    .line 72
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 73
    return v0

    .line 70
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 76
    .end local v1    # "i":I
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No free netIds"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public releaseNetId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 118
    iget-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reserveImsNetId()I
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 94
    :try_start_3
    iget v1, p0, Lcom/android/server/NetIdManager;->mLastImsNetId:I

    iget-object v2, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, v2}, Lcom/android/server/NetIdManager;->getNextAvailableImsNetIdLocked(ILandroid/util/SparseBooleanArray;)I

    move-result v1

    iput v1, p0, Lcom/android/server/NetIdManager;->mLastImsNetId:I

    .line 96
    iget-object v2, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 97
    iget v1, p0, Lcom/android/server/NetIdManager;->mLastImsNetId:I

    monitor-exit v0

    return v1

    .line 98
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public reserveNetId()I
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 107
    :try_start_3
    iget v1, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    iget-object v2, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, v2}, Lcom/android/server/NetIdManager;->getNextAvailableNetIdLocked(ILandroid/util/SparseBooleanArray;)I

    move-result v1

    iput v1, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    .line 109
    iget-object v2, p0, Lcom/android/server/NetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    iget v1, p0, Lcom/android/server/NetIdManager;->mLastNetId:I

    monitor-exit v0

    return v1

    .line 111
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
