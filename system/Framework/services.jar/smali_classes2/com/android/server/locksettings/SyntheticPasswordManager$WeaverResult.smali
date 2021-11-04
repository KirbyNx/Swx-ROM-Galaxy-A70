.class Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeaverResult"
.end annotation


# static fields
.field private static final OP_READ:I = 0x1

.field private static final OP_WRITE:I = 0x0

.field private static final ST_NONE:I = -0x3e7

.field private static final mWeaverResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOp:I

.field private mSlot:I

.field private mStatus:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(III)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "slot"    # I
    .param p3, "userId"    # I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 264
    iput p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 265
    iput p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    .line 266
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    .line 267
    return-void
.end method

.method public static begin(III)V
    .registers 6
    .param p0, "op"    # I
    .param p1, "slot"    # I
    .param p2, "userId"    # I

    .line 209
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;-><init>(III)V

    .line 210
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    monitor-enter v1

    .line 211
    :try_start_8
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public static finish(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 225
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    monitor-enter v0

    .line 226
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 227
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    if-eqz v1, :cond_19

    .line 228
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 231
    .end local v1    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    :cond_19
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static finishOff(ILjava/lang/String;)V
    .registers 9
    .param p0, "slot"    # I
    .param p1, "result"    # Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    move-result-object v1

    .line 237
    .local v1, "res":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    if-eqz v1, :cond_3c

    .line 238
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s [ op : %d, sl : %d, u : %d ]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget v6, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 240
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 238
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 241
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 243
    .end local v1    # "res":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    :cond_3c
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private static getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    .registers 5
    .param p0, "slot"    # I

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 248
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 249
    .local v1, "key":I
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 250
    .local v2, "res":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    if-eqz v2, :cond_1e

    iget v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    if-ne v3, p0, :cond_1e

    .line 251
    return-object v2

    .line 247
    .end local v1    # "key":I
    .end local v2    # "res":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public static update(II)V
    .registers 4
    .param p0, "slot"    # I
    .param p1, "status"    # I

    .line 216
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    monitor-enter v0

    .line 217
    :try_start_3
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    move-result-object v1

    .line 218
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    if-eqz v1, :cond_c

    .line 219
    invoke-direct {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->updateInternal(I)V

    .line 221
    .end local v1    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    :cond_c
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private updateInternal(I)V
    .registers 2
    .param p1, "status"    # I

    .line 270
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    .line 271
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    .line 275
    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ltz v0, :cond_6f

    if-le v0, v4, :cond_b

    goto :goto_6f

    .line 279
    :cond_b
    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    const/16 v5, -0x3e7

    if-ne v0, v5, :cond_34

    .line 280
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 280
    const-string v1, "No update for weaver [ op : %d, sl : %d, u : %d ]"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_91

    .line 284
    .end local v0    # "result":Ljava/lang/String;
    :cond_34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 286
    iget v6, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    if-nez v6, :cond_40

    const-string v6, "enrollment"

    goto :goto_43

    :cond_40
    const-string/jumbo v6, "verification"

    :goto_43
    aput-object v6, v5, v2

    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 289
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    if-nez v1, :cond_60

    .line 290
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    invoke-static {v1}, Landroid/hardware/weaver/V1_0/WeaverStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_66

    :cond_60
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    invoke-static {v1}, Landroid/hardware/weaver/V1_0/WeaverReadStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_66
    aput-object v1, v5, v3

    .line 284
    const-string v1, "Result of weaver %s for user %d [ sl : %d, st : %s ]"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_91

    .line 276
    .end local v0    # "result":Ljava/lang/String;
    :cond_6f
    :goto_6f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 278
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 276
    const-string v1, "Invalid operation for weaver [ op : %d, sl : %d, u : %d ]"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "result":Ljava/lang/String;
    :goto_91
    return-object v0
.end method
