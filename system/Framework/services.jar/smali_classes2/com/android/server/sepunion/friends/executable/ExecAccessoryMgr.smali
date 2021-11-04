.class public Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;
.implements Lcom/android/server/sepunion/friends/common/Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecAccessoryMgr"

.field private static final USE_ACCESSORY_KEY_WITH_EXTRA_DATA:Z


# instance fields
.field private final mAccessories:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasMappedAccessory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mLastVerificationId:Ljava/lang/String;

.field private final mLogger:Lcom/android/server/sepunion/friends/common/Logger;

.field private final mSvcOperation:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/common/Logger;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V
    .registers 5
    .param p1, "logger"    # Lcom/android/server/sepunion/friends/common/Logger;
    .param p2, "svcOperation"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/sepunion/friends/common/Logger;",
            "Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p3, "hasMappedAccessory":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/os/Bundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    .line 36
    iput-object p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    .line 38
    iput-object p3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    .line 39
    return-void
.end method

.method private static getAccessoryKey([B[B)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "extraData"    # [B

    .line 68
    move-object v0, p0

    .line 73
    .local v0, "src":[B
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getHexString([BII)Ljava/lang/String;
    .registers 10
    .param p0, "srcData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 42
    add-int v0, p1, p2

    .line 43
    .local v0, "end":I
    const/4 v1, 0x0

    if-eqz p0, :cond_3f

    array-length v2, p0

    if-ge v2, v0, :cond_9

    goto :goto_3f

    .line 47
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v2, "builder":Ljava/lang/StringBuilder;
    move v3, p1

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_2b

    .line 49
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "hexStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 51
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    :cond_25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .end local v4    # "hexStr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 56
    .end local v3    # "i":I
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    mul-int/lit8 v4, p2, 0x2

    if-eq v3, v4, :cond_34

    .line 57
    return-object v1

    .line 60
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 44
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_3f
    :goto_3f
    return-object v1
.end method

.method private static getLength([B)I
    .registers 2
    .param p0, "object"    # [B

    .line 64
    if-eqz p0, :cond_4

    array-length v0, p0

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0
.end method

.method private getMappedAccessoryId(Ljava/lang/String;[[B)Ljava/lang/String;
    .registers 9
    .param p1, "accessoryId"    # Ljava/lang/String;
    .param p2, "outData"    # [[B

    .line 214
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 216
    .local v2, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;>;"
    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 217
    .local v3, "accessoryData":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    :cond_22
    if-eqz v3, :cond_5a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 218
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$300(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 219
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$000(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v1

    .line 220
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_52

    if-eqz p2, :cond_52

    array-length v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_52

    .line 221
    const/4 v4, 0x0

    const-string v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p2, v4

    .line 222
    const/4 v4, 0x1

    const-string v5, "extraData"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p2, v4

    .line 224
    :cond_52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 226
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;>;"
    .end local v3    # "accessoryData":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    :cond_5a
    goto :goto_d

    .line 227
    :cond_5b
    monitor-exit v0

    .line 229
    return-object v3

    .line 227
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 23
    .param p1, "actionNo"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 280
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "attached"

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 281
    .local v10, "isAttached":Z
    const-string v1, "data"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 282
    .local v2, "accessoryData":[B
    const-string v3, "extraData"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 284
    .local v4, "extraData":[B
    const-string v13, "ExecAccessoryMgr"

    if-eqz v2, :cond_184

    array-length v5, v2

    if-nez v5, :cond_24

    move-object/from16 v18, v2

    goto/16 :goto_186

    .line 289
    :cond_24
    const/4 v5, 0x0

    .line 290
    .local v5, "originalAccessoryId":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "accessoryId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 292
    .local v11, "timeStamp":J
    const/16 v16, 0x0

    .line 295
    .local v16, "verifyRequired":Z
    const v15, 0x110001

    if-eq v7, v15, :cond_4b

    const v1, 0x12000a

    if-eq v7, v1, :cond_42

    const v1, 0x140001

    if-eq v7, v1, :cond_42

    move-object/from16 v18, v2

    goto/16 :goto_f1

    .line 298
    :cond_42
    const/16 v16, 0x1

    .line 299
    move-object/from16 v18, v2

    move-object v9, v4

    move-object v14, v5

    move-object v15, v6

    goto/16 :goto_f4

    .line 302
    :cond_4b
    iget-object v15, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    if-eqz v15, :cond_ef

    .line 303
    if-eqz v10, :cond_af

    .line 304
    invoke-interface {v15, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .line 305
    .local v15, "ret":Landroid/os/Bundle;
    if-eqz v15, :cond_a9

    .line 306
    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 307
    .local v9, "retData":[B
    if-eqz v9, :cond_6e

    array-length v14, v9

    if-lez v14, :cond_6e

    invoke-static {v2, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_6e

    .line 308
    move-object v2, v9

    .line 309
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 310
    const/16 v16, 0x1

    .line 313
    :cond_6e
    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 314
    .end local v9    # "retData":[B
    .local v1, "retData":[B
    if-eqz v1, :cond_83

    array-length v9, v1

    if-lez v9, :cond_83

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_83

    .line 315
    move-object v4, v1

    .line 316
    invoke-virtual {v8, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 317
    const/16 v16, 0x1

    .line 320
    :cond_83
    if-eqz v16, :cond_a7

    .line 321
    move-object v3, v6

    .line 322
    .end local v5    # "originalAccessoryId":Ljava/lang/String;
    .local v3, "originalAccessoryId":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v5

    .line 323
    .end local v6    # "accessoryId":Ljava/lang/String;
    .local v5, "accessoryId":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    .line 324
    invoke-static {v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "retData":[B
    .local v18, "retData":[B
    aput-object v9, v14, v1

    const-string/jumbo v9, "mapped accessory %s true"

    invoke-static {v13, v9, v14}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v14, v1, [Ljava/lang/Object;

    .line 323
    invoke-interface {v6, v11, v12, v9, v14}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v3

    goto :goto_a9

    .line 320
    .end local v3    # "originalAccessoryId":Ljava/lang/String;
    .end local v18    # "retData":[B
    .restart local v1    # "retData":[B
    .local v5, "originalAccessoryId":Ljava/lang/String;
    .restart local v6    # "accessoryId":Ljava/lang/String;
    :cond_a7
    move-object/from16 v18, v1

    .line 327
    .end local v1    # "retData":[B
    .end local v15    # "ret":Landroid/os/Bundle;
    :cond_a9
    :goto_a9
    move-object/from16 v18, v2

    move-object v9, v4

    move-object v14, v5

    move-object v15, v6

    goto :goto_f4

    .line 328
    :cond_af
    const/4 v9, 0x2

    new-array v14, v9, [[B

    .line 329
    .local v14, "outData":[[B
    invoke-direct {v0, v6, v14}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getMappedAccessoryId(Ljava/lang/String;[[B)Ljava/lang/String;

    move-result-object v9

    .line 330
    .local v9, "mappedAccessoryId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_ec

    const/4 v15, 0x0

    aget-object v17, v14, v15

    if-eqz v17, :cond_ec

    .line 331
    move-object v6, v9

    .line 332
    move-object/from16 v18, v2

    .end local v2    # "accessoryData":[B
    .local v18, "accessoryData":[B
    aget-object v2, v14, v15

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 333
    const/4 v1, 0x1

    aget-object v2, v14, v1

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 334
    const/16 v16, 0x1

    .line 335
    iget-object v2, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v3, v1, [Ljava/lang/Object;

    .line 336
    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v3, v15

    const-string/jumbo v1, "mapped accessory %s false"

    invoke-static {v13, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v15, [Ljava/lang/Object;

    .line 335
    invoke-interface {v2, v11, v12, v1, v3}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v4

    move-object v14, v5

    move-object v15, v6

    goto :goto_f4

    .line 330
    .end local v18    # "accessoryData":[B
    .restart local v2    # "accessoryData":[B
    :cond_ec
    move-object/from16 v18, v2

    .end local v2    # "accessoryData":[B
    .restart local v18    # "accessoryData":[B
    goto :goto_f1

    .line 302
    .end local v9    # "mappedAccessoryId":Ljava/lang/String;
    .end local v14    # "outData":[[B
    .end local v18    # "accessoryData":[B
    .restart local v2    # "accessoryData":[B
    :cond_ef
    move-object/from16 v18, v2

    .line 342
    :goto_f1
    move-object v9, v4

    move-object v14, v5

    move-object v15, v6

    .end local v2    # "accessoryData":[B
    .end local v4    # "extraData":[B
    .end local v5    # "originalAccessoryId":Ljava/lang/String;
    .end local v6    # "accessoryId":Ljava/lang/String;
    .local v9, "extraData":[B
    .local v14, "originalAccessoryId":Ljava/lang/String;
    .local v15, "accessoryId":Ljava/lang/String;
    .restart local v18    # "accessoryData":[B
    :goto_f4
    if-eqz v16, :cond_108

    .line 343
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "paramStr0"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_108
    const-string/jumbo v1, "timeStamp"

    invoke-virtual {v8, v1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 347
    const-string/jumbo v1, "paramInt0"

    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    nop

    .line 350
    if-eqz v10, :cond_127

    new-instance v19, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    const/4 v6, 0x0

    move-object/from16 v1, v19

    move/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$1;)V

    goto :goto_128

    :cond_127
    const/4 v1, 0x0

    .line 349
    :goto_128
    invoke-direct {v0, v15, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->update(Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_156

    .line 351
    iget-object v1, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 352
    invoke-static {v15}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 351
    const-string/jumbo v3, "ignored due to failure of updating accessory state: %s %s 0x%x"

    invoke-static {v13, v3, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v11, v12, v2, v3}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 353
    const/4 v1, 0x0

    return-object v1

    .line 356
    :cond_156
    const/4 v4, 0x0

    iget-object v1, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 357
    invoke-static {v15}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 358
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 357
    const-string v3, "accessory state changed: %s %s 0x%x"

    invoke-static {v13, v3, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 356
    invoke-interface {v1, v11, v12, v2, v3}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v1, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    const v2, 0x210001

    invoke-interface {v1, v2, v8}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 284
    .end local v9    # "extraData":[B
    .end local v11    # "timeStamp":J
    .end local v14    # "originalAccessoryId":Ljava/lang/String;
    .end local v15    # "accessoryId":Ljava/lang/String;
    .end local v16    # "verifyRequired":Z
    .end local v18    # "accessoryData":[B
    .restart local v2    # "accessoryData":[B
    .restart local v4    # "extraData":[B
    :cond_184
    move-object/from16 v18, v2

    .line 285
    .end local v2    # "accessoryData":[B
    .restart local v18    # "accessoryData":[B
    :goto_186
    iget-object v1, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getLength([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const-string/jumbo v3, "wrong parameter %s %d"

    invoke-static {v13, v3, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/android/server/sepunion/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleGetAccessoryList()Landroid/os/Bundle;
    .registers 5

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 162
    :try_start_8
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/sepunion/friends/executable/-$$Lambda$HQs45KSaU8m18Ddb6tWrMaBc7r4;->INSTANCE:Lcom/android/server/sepunion/friends/executable/-$$Lambda$HQs45KSaU8m18Ddb6tWrMaBc7r4;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;->INSTANCE:Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 163
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 162
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string v3, "accessoryList"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 165
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private handleHasAccessory(Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .line 275
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 276
    .local v0, "data":[B
    if-eqz v0, :cond_1a

    const-string v1, "extraData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->hasAccessory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private handleVerifyFakeAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .line 153
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    .line 154
    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 153
    :goto_1c
    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private isAccessibleAction(I)Z
    .registers 7
    .param p1, "actionNo"    # I

    .line 196
    const/4 v0, 0x1

    .line 197
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 198
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 199
    .local v3, "cur":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    if-eqz v3, :cond_24

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I
    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v4

    if-eq v4, p1, :cond_24

    .line 200
    const/4 v0, 0x0

    .line 201
    goto :goto_25

    .line 203
    .end local v3    # "cur":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    :cond_24
    goto :goto_e

    .line 204
    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_33

    .line 206
    if-nez v0, :cond_32

    .line 207
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExecAccessoryMgr"

    const-string v3, "action[0x%x] is denied !!!"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    :cond_32
    return v0

    .line 204
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method static synthetic lambda$handleGetAccessoryList$0(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .registers 2
    .param p0, "cur"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 162
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$000(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "last"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    .line 271
    return-object p1
.end method

.method private update(Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .registers 7
    .param p1, "accessoryId"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 129
    if-nez p1, :cond_4

    .line 130
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_4
    const/4 v0, 0x0

    .line 134
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 135
    :try_start_8
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    .local v2, "has":Z
    if-eqz p2, :cond_19

    .line 137
    if-nez v2, :cond_21

    .line 138
    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    goto :goto_21

    .line 142
    :cond_19
    if-eqz v2, :cond_21

    .line 143
    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    .line 147
    .end local v2    # "has":Z
    :cond_21
    :goto_21
    monitor-exit v1

    .line 149
    return v0

    .line 147
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "actionNo"    # I

    .line 242
    const/4 v0, 0x0

    const-string v1, "ExecAccessoryMgr"

    sparse-switch p3, :sswitch_data_4c

    goto :goto_4a

    .line 252
    :sswitch_7
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ActionHasAccessory"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleHasAccessory(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 244
    :sswitch_17
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ActionVerifyFakeAccessory"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleVerifyFakeAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 248
    :sswitch_23
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ActionGetAccessory"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleGetAccessoryList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 258
    :sswitch_2f
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "ActionAccessoryStateChanged 0x%x"

    invoke-static {v1, v0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    if-eqz p1, :cond_4a

    invoke-direct {p0, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 260
    invoke-direct {p0, p3, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 265
    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_4c
    .sparse-switch
        0x110001 -> :sswitch_2f
        0x120001 -> :sswitch_23
        0x12000a -> :sswitch_2f
        0x120012 -> :sswitch_17
        0x140001 -> :sswitch_2f
        0x140002 -> :sswitch_7
    .end sparse-switch
.end method

.method public executeOnSameThread(I)Z
    .registers 3
    .param p1, "actionNo"    # I

    .line 234
    const v0, 0x140001

    if-eq p1, v0, :cond_11

    const v0, 0x110001

    if-eq p1, v0, :cond_11

    const v0, 0x12000a

    if-eq p1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getAccessoryCount()I
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 177
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 20
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 78
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\n---- active accessory info.\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v3, v1, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 82
    :try_start_c
    iget-object v0, v1, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 83
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;>;"
    if-nez v4, :cond_25

    .line 84
    goto :goto_16

    .line 87
    :cond_25
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 88
    .local v5, "data":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    if-eqz v5, :cond_32

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$000(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    .line 90
    .local v6, "bundle":Landroid/os/Bundle;
    :goto_33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 91
    .local v7, "accessoryKey":Ljava/lang/String;
    if-eqz v5, :cond_fb

    if-nez v7, :cond_3e

    .line 92
    goto :goto_16

    .line 95
    :cond_3e
    const-string/jumbo v8, "timeStamp"

    const-wide/16 v9, -0x1

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 96
    .local v11, "timeStamp":J
    cmp-long v8, v11, v9

    if-eqz v8, :cond_50

    invoke-static {v11, v12}, Lcom/android/server/sepunion/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_56

    :cond_50
    const/16 v8, 0x2d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    :goto_56
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I
    invoke-static {v5}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v8

    const v9, 0x110001

    const/4 v10, 0x0

    const/4 v13, 0x1

    if-eq v8, v9, :cond_85

    .line 100
    const-string v8, " [0x%x]"

    new-array v9, v13, [Ljava/lang/Object;

    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I
    invoke-static {v5}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v10

    invoke-static {v8, v9}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_85
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z
    invoke-static {v5}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$200(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 103
    # getter for: Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->access$300(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 104
    const-string v8, " M"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 106
    :cond_9b
    const-string v8, " *"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_a0
    :goto_a0
    const/4 v8, 0x2

    new-array v8, v8, [[B

    const-string v9, "data"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v8, v10

    const-string v9, "extraData"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v8, v13

    .line 111
    .local v8, "src":[[B
    const-string v9, "\n\tdata: "

    const-string v13, "\n\textra: "

    filled-new-array {v9, v13}, [Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "title":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 114
    .local v13, "index":I
    array-length v14, v8

    move v15, v10

    :goto_be
    if-ge v15, v14, :cond_ee

    aget-object v16, v8, v15

    move-object/from16 v17, v16

    .line 115
    .local v17, "cur":[B
    move-object/from16 v10, v17

    .end local v17    # "cur":[B
    .local v10, "cur":[B
    if-eqz v10, :cond_e0

    move-object/from16 v17, v0

    array-length v0, v10

    if-lez v0, :cond_e2

    .line 116
    aget-object v0, v9, v13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v10

    .line 117
    const/4 v1, 0x0

    invoke-static {v10, v1, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 115
    :cond_e0
    move-object/from16 v17, v0

    :cond_e2
    const/4 v1, 0x0

    .line 119
    :goto_e3
    nop

    .end local v10    # "cur":[B
    add-int/lit8 v13, v13, 0x1

    .line 114
    add-int/lit8 v15, v15, 0x1

    move v10, v1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    goto :goto_be

    .line 122
    :cond_ee
    move-object/from16 v17, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v0, v17

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;>;"
    .end local v5    # "data":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "accessoryKey":Ljava/lang/String;
    .end local v8    # "src":[[B
    .end local v9    # "title":[Ljava/lang/String;
    .end local v11    # "timeStamp":J
    .end local v13    # "index":I
    goto/16 :goto_16

    .line 91
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;>;"
    .restart local v5    # "data":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "accessoryKey":Ljava/lang/String;
    :cond_fb
    move-object/from16 v17, v0

    move-object/from16 v1, p0

    goto/16 :goto_16

    .line 124
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;>;"
    .end local v5    # "data":Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "accessoryKey":Ljava/lang/String;
    :cond_101
    monitor-exit v3

    .line 125
    return-void

    .line 124
    :catchall_103
    move-exception v0

    monitor-exit v3
    :try_end_105
    .catchall {:try_start_c .. :try_end_105} :catchall_103

    throw v0
.end method

.method public hasAccessory(Ljava/lang/String;)Z
    .registers 4
    .param p1, "accessoryKey"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 171
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public preExecute(Landroid/os/Bundle;II)Z
    .registers 6
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "actionNo"    # I

    .line 182
    const/4 v0, 0x1

    .line 183
    .local v0, "ret":Z
    const v1, 0x110001

    if-eq p3, v1, :cond_11

    const v1, 0x12000a

    if-eq p3, v1, :cond_11

    const v1, 0x140001

    if-eq p3, v1, :cond_11

    goto :goto_15

    .line 187
    :cond_11
    invoke-direct {p0, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result v0

    .line 192
    :goto_15
    return v0
.end method
