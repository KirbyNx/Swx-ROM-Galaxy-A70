.class public Lsamsung/uwb/AppConfigParameters;
.super Ljava/lang/Object;
.source "AppConfigParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/AppConfigParameters$Builder;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_HOPPING_THRESHOLD:Ljava/lang/String; = "37"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANTENNA_CONFIG_SELECTION:Ljava/lang/String; = "F0"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AOA_RESULT_REQ:Ljava/lang/String; = "0D"

.field public static final AUTHENTICITY_TAG:Ljava/lang/String; = "36"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLINK_RANDOM_INTERVAL:Ljava/lang/String; = "33"

.field public static final BLOCK_STRIDE_LENGTH:Ljava/lang/String; = "2D"

.field public static final BPRF_PHR_DATA_RATE:Ljava/lang/String; = "31"

.field public static final CHANNEL_NUMBER:Ljava/lang/String; = "04"

.field public static final CONTENTION_PHASE_UPDATE_LEN:Ljava/lang/String; = "21"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/AppConfigParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_MAC_ADDRESS:Ljava/lang/String; = "06"

.field public static final DEVICE_ROLE:Ljava/lang/String; = "11"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "00"

.field public static final DST_MAC_ADDRESS:Ljava/lang/String; = "07"

.field public static final HOPPING_MODE:Ljava/lang/String; = "2C"

.field public static final IN_BAND_TERMINATION_ATTEMPT_COUNT:Ljava/lang/String; = "2F"

.field public static final KEY_ROTATION:Ljava/lang/String; = "23"

.field public static final KEY_ROTATION_RATE:Ljava/lang/String; = "24"

.field public static final MAC_ADDRESS_MODE:Ljava/lang/String; = "26"

.field public static final MAC_CFG:Ljava/lang/String; = "19"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAC_FCS_TYPE:Ljava/lang/String; = "0B"

.field public static final MAX_CONTENTION_PHASE_LEN:Ljava/lang/String; = "20"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_NUMBER_OF_BLOCKS:Ljava/lang/String; = "32"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_NUMBER_OF_MEASUREMENTS:Ljava/lang/String; = "32"

.field public static final MAX_RR_RETRY:Ljava/lang/String; = "2A"

.field public static final MULTI_NODE_MODE:Ljava/lang/String; = "03"

.field public static final NO_OF_CONTROLEE:Ljava/lang/String; = "05"

.field public static final NUMBER_OF_STS_SEGMENTS:Ljava/lang/String; = "29"

.field public static final PREAMBLE_CODE_INDEX:Ljava/lang/String; = "14"

.field public static final PREAMBLE_DURATION:Ljava/lang/String; = "17"

.field public static final PRF_MODE:Ljava/lang/String; = "1F"

.field public static final PSDU_DATA_RATE:Ljava/lang/String; = "16"

.field public static final RANGING_INTERVAL:Ljava/lang/String; = "09"

.field public static final RANGING_METHOD:Ljava/lang/String; = "01"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RANGING_ROUND_CONTROL:Ljava/lang/String; = "0C"

.field public static final RANGING_ROUND_HOPPING:Ljava/lang/String; = "2C"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RANGING_ROUND_USAGE:Ljava/lang/String; = "01"

.field public static final RANGING_TIME_STRUCT:Ljava/lang/String; = "1A"

.field public static final RESPONDER_SLOT_INDEX:Ljava/lang/String; = "1E"

.field public static final RESULT_REPORT_CONFIG:Ljava/lang/String; = "2E"

.field public static final RFRAME_CONFIG:Ljava/lang/String; = "12"

.field public static final RNG_DATA_NTF:Ljava/lang/String; = "0E"

.field public static final RNG_DATA_NTF_PROXIMITY_FAR:Ljava/lang/String; = "10"

.field public static final RNG_DATA_NTF_PROXIMITY_NEAR:Ljava/lang/String; = "0F"

.field public static final RX_ANTENNA_SELECTION:Ljava/lang/String; = "18"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RX_MODE:Ljava/lang/String; = "13"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCHEDULED_MODE:Ljava/lang/String; = "22"

.field public static final SESSION_PRIORITY:Ljava/lang/String; = "25"

.field public static final SFD_ID:Ljava/lang/String; = "15"

.field public static final SLOTS_PER_RR:Ljava/lang/String; = "1B"

.field public static final SLOT_DURATION:Ljava/lang/String; = "08"

.field public static final STATIC_STS_IV:Ljava/lang/String; = "28"

.field public static final STS_CONFIG:Ljava/lang/String; = "02"

.field public static final STS_INDEX:Ljava/lang/String; = "0A"

.field public static final STS_LENGTH:Ljava/lang/String; = "35"

.field public static final SUB_SESSION_ID:Ljava/lang/String; = "30"

.field public static final TDOA_REPORT_FREQUENCY:Ljava/lang/String; = "34"

.field public static final TX_ADAPTIVE_PAYLOAD_POWER:Ljava/lang/String; = "1C"

.field public static final TX_ANTENNA_SELECTION:Ljava/lang/String; = "1D"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UWB_INITIATION_TIME:Ljava/lang/String; = "2B"

.field public static final VENDOR_ID:Ljava/lang/String; = "27"


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

    .line 1300
    new-instance v0, Lsamsung/uwb/AppConfigParameters$1;

    invoke-direct {v0}, Lsamsung/uwb/AppConfigParameters$1;-><init>()V

    sput-object v0, Lsamsung/uwb/AppConfigParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    .line 1206
    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1207
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1208
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30E"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_26
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "18"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1212
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1213
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30F"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_44
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "1D"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1217
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1218
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E310"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_62
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1222
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1223
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E311"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_80
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1227
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1228
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E312"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_9e
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1232
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1233
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E313"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_bc
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1237
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1238
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_d8
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "37"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1242
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1243
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30D"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f6
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "F0"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 1247
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1248
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v2, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_112
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1292
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2a

    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1294
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [B

    .line 1295
    .local v3, "buffer":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1296
    iget-object v4, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1298
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

    .line 1253
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    .line 1255
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1269
    const/4 v0, 0x0

    return v0
.end method

.method public getAdaptiveHoppingThreshold()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1170
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30D"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1171
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1172
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAntennaPairSelection()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 903
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "F0"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 904
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 906
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 905
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAoaResultReq()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "0D"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 822
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 824
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 823
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAuthenticityTag()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1126
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E313"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1127
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1129
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1128
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBlinkRandomInterval()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "33"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1116
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1119
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1121
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 1117
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBlockStrideLength()B
    .registers 3

    .line 1080
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2D"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getBprfPhrDataRate()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1099
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1100
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannelNumber()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 740
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 742
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 741
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

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

    .line 1194
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContentionPhaseUpdateLen()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 972
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E312"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 973
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 975
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 974
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDeviceMacAddress()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 754
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_11

    .line 756
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 755
    :cond_11
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDeviceRole()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 704
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 706
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 705
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDeviceType()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 853
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 855
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 854
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDstMacAddress()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 761
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_11

    .line 763
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 762
    :cond_11
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHoppingMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2C"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1074
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1076
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1075
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInBandTerminationAttemptCount()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2F"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1092
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1094
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1093
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyRotation()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 987
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 989
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 988
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyRotationRate()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 994
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 996
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 995
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMacAddressMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "26"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1008
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1010
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1009
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMacConfig()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public getMacFcsType()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "0B"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 808
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 810
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 809
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxContentionPhaseLen()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 964
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E311"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 965
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 967
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 966
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxNumberOfBlocks()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1134
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1135
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1138
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1140
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 1136
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxNumberOfMeasurements()S
    .registers 4

    .line 1144
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1145
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_17

    .line 1146
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1148
    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public getMaxRrRetry()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1039
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1041
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1042
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1044
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 1040
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMultiNodeMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 733
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 735
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 734
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNoOfControlee()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 747
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 749
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 748
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNoOfStsSegments()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "29"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1032
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1034
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1033
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPreambleCodeIndex()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "14"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 875
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 877
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 876
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPreambleDuration()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "17"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 896
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 898
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 897
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrfMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "1F"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 957
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 959
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 958
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPsduDataRate()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 889
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 891
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 890
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingDataNtf()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "0E"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 829
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 831
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 830
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingDataNtfProximityFar()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 846
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 848
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 847
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingDataNtfProximityNear()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "0F"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 836
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 838
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 839
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 841
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 837
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingInterval()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 788
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 790
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 791
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 793
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1

    .line 789
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingMethod()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 711
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 712
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 714
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 713
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingRoundControl()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "0C"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 815
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 817
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 816
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingRoundHopping()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1066
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2C"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1067
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1069
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1068
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingRoundUsage()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 719
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 721
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 720
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRangingTimeStruct()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "1A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 936
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 938
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 937
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResponderSlotIndex()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "1E"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 950
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 952
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 951
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResultReportConfig()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2E"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1085
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1087
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1086
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRframeConfig()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 860
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 862
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 861
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRxAntennaPairSelection()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 911
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30F"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 912
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 914
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 913
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRxMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 867
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E30E"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 868
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 870
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 869
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getScheduledMode()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 980
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 982
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 981
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSessionPriority()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1001
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1003
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1002
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSfdId()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 882
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 884
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 883
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSlotDuration()S
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 768
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2c

    .line 770
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 771
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 773
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-short v1, v1

    return v1

    .line 769
    :cond_2c
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSlotDurationRstu()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 778
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 780
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 781
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 783
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 779
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSlotsPerRangingRound()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "1B"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1049
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1051
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1050
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStaticStsIv()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "28"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1025
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_11

    .line 1027
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 1026
    :cond_11
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStsConfig()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 726
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 728
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 727
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStsIndex()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "0A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 798
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 800
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 801
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 803
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1

    .line 799
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStsLength()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "35"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1153
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 1155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 1154
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSubSessionId()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1106
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1109
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1111
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1

    .line 1107
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTdoaReportFreq()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1160
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1163
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1165
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 1161
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTxAdaptivePayloadPower()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "1C"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 943
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 945
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 944
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTxAntennaPairSelection()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 919
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "E310"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 920
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_14

    .line 922
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    return v1

    .line 921
    :cond_14
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUwbInitiationTime()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "2B"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1056
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1058
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1059
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1061
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1

    .line 1057
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVendorId()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "27"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1015
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1f

    .line 1017
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_19

    .line 1018
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1020
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 1016
    :cond_1f
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "NoSuchFieldException in AppConfigParameter"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "configName"    # Ljava/lang/String;

    .line 1187
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1180
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

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

    .line 1182
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1261
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

    .line 1262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1261
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    goto :goto_f

    .line 1264
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1275
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 1276
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

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

    .line 1279
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1280
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1281
    .local v2, "buffer":[B
    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1283
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    goto :goto_1b

    .line 1285
    .end local v2    # "buffer":[B
    :cond_42
    return-void
.end method
