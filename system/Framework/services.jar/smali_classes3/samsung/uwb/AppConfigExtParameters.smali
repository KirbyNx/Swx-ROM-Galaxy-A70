.class public Lsamsung/uwb/AppConfigExtParameters;
.super Ljava/lang/Object;
.source "AppConfigExtParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/AppConfigExtParameters$Builder;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_HOPPING_THRESHOLD:Ljava/lang/String; = "E30D"

.field public static final ANTENNA_CONFIG_SELECTION:Ljava/lang/String; = "F0"

.field public static final AUTHENTICITY_TAG:Ljava/lang/String; = "E313"

.field public static final CIR_CAPTURE_MODE:Ljava/lang/String; = "E301"

.field public static final CONTENTION_PHASE_UPDATE_LEN:Ljava/lang/String; = "E312"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/AppConfigExtParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUAL_AOA_PREAMBLE_STS:Ljava/lang/String; = "E30A"

.field public static final MAC_PAYLOAD_ENCRYPTION:Ljava/lang/String; = "E302"

.field public static final MAX_CONTENTION_PHASE_LEN:Ljava/lang/String; = "E311"

.field public static final RX_ANTENNA_POLARIZATION_OPTION:Ljava/lang/String; = "E303"

.field public static final RX_ANTENNA_SELECTION:Ljava/lang/String; = "E30F"

.field public static final RX_ANTENNA_SELECTION_RFM:Ljava/lang/String; = "E319"

.field public static final RX_MODE:Ljava/lang/String; = "E30E"

.field public static final SCHED_STATUS_NTF:Ljava/lang/String; = "E307"

.field public static final SESSION_INBAND_DATA_RX_BLOCKS:Ljava/lang/String; = "E317"

.field public static final SESSION_INBAND_DATA_TX_BLOCKS:Ljava/lang/String; = "E316"

.field public static final SESSION_SCHED_ATTEMPTS:Ljava/lang/String; = "E306"

.field public static final SESSION_SYNC_ATTEMPTS:Ljava/lang/String; = "E305"

.field public static final SUSPEND_RANGING:Ljava/lang/String; = "E318"

.field public static final TOA_MODE:Ljava/lang/String; = "E300"

.field public static final TX_ANTENNA_SELECTION:Ljava/lang/String; = "E310"

.field public static final TX_POWER_DELTA_FCC:Ljava/lang/String; = "E308"

.field public static final TX_POWER_TEMP_COMPENSATION:Ljava/lang/String; = "E30B"


# instance fields
.field mAppParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 470
    new-instance v0, Lsamsung/uwb/AppConfigExtParameters$1;

    invoke-direct {v0}, Lsamsung/uwb/AppConfigExtParameters$1;-><init>()V

    sput-object v0, Lsamsung/uwb/AppConfigExtParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    .line 401
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2a

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [B

    .line 465
    .local v3, "buffer":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 466
    iget-object v4, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 468
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "buffer":[B
    :cond_2a
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    .line 405
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public getAdaptiveHoppingThreshold()B
    .registers 3

    .line 365
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30D"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getAntennaPairSelection()B
    .registers 3

    .line 381
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "F0"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getAuthenticityTag()B
    .registers 3

    .line 393
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E313"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getCirCaptureMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E301"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 284
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 286
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 285
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConfigMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContentionPhaseUpdateLen()B
    .registers 3

    .line 373
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E312"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getDualAoaPreambleSts()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 326
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 328
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 327
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMacPayloadEncryption()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E302"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 291
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 292
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxContentionPhaseLen()B
    .registers 3

    .line 369
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E311"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getRxAntennaPairSelection()B
    .registers 3

    .line 385
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30F"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getRxAntennaPolarizationOption()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E303"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 340
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 341
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRxAntennaSelectionRfm()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E319"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 347
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 349
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 348
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRxMode()B
    .registers 3

    .line 377
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30E"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getScheduledStatusNtf()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E307"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 312
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 314
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 313
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSessionInbandDataRxBlocks()B
    .registers 3

    .line 357
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E317"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getSessionInbandDataTxBlocks()B
    .registers 3

    .line 353
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E316"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getSessionSchedAttempts()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E306"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 305
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 307
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 306
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSessionSyncAttempts()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E305"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 298
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 299
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSuspendRanging()B
    .registers 3

    .line 361
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E318"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getToaMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E300"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 277
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 279
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 278
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTxAntennaPairSelection()B
    .registers 3

    .line 389
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E310"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getTxPeakPowerDeltaFcc()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E308"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 319
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 321
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 320
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTxPowerTempCompensation()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30B"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 333
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 335
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 334
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppExtConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "configName"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 411
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public size()I
    .registers 2

    .line 414
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 431
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    goto :goto_f

    .line 434
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 444
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 445
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 448
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 450
    .local v2, "buffer":[B
    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 452
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    goto :goto_1b

    .line 454
    .end local v2    # "buffer":[B
    :cond_42
    return-void
.end method
