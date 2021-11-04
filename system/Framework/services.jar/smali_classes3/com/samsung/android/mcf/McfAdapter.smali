.class public Lcom/samsung/android/mcf/McfAdapter;
.super Ljava/lang/Object;
.source "McfAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    }
.end annotation


# static fields
.field public static final HANDOVER_RESPONSE_ACCEPT:I = 0x1

.field public static final HANDOVER_RESPONSE_REJECT:I = 0x0

.field public static final INTERNAL_CMD_BLE_START_ADVERTISE:I = 0x190

.field public static final INTERNAL_CMD_BLE_START_SCAN:I = 0x192

.field public static final INTERNAL_CMD_BLE_STOP_ADVERTISE:I = 0x191

.field public static final INTERNAL_CMD_BLE_STOP_SCAN:I = 0x193

.field public static final INTERNAL_CMD_ID_CST_CLOSE_MSG_SERVER:I = 0xda

.field public static final INTERNAL_CMD_ID_CST_CONFIRM_UWB_RANGING:I = 0xd7

.field public static final INTERNAL_CMD_ID_CST_OPEN_MSG_SERVER:I = 0xd9

.field public static final INTERNAL_CMD_ID_CST_REGISTER_PILOT_SCAN:I = 0xcb

.field public static final INTERNAL_CMD_ID_CST_SEND_HANDOVER_RESPONSE:I = 0xcd

.field public static final INTERNAL_CMD_ID_CST_SEND_HANDOVER_RESPONSE_WITHOUT_CONTENTS:I = 0xd0

.field public static final INTERNAL_CMD_ID_CST_SEND_MSG_RESPONSE:I = 0xdb

.field public static final INTERNAL_CMD_ID_CST_SET_ACCESS_PERMISSION:I = 0xcf

.field public static final INTERNAL_CMD_ID_CST_SET_ANTENNA_PAIR_SELECTION:I = 0xd8

.field public static final INTERNAL_CMD_ID_CST_SET_THRESHOLD:I = 0xd1

.field public static final INTERNAL_CMD_ID_CST_START_ADVERTISE:I = 0xc8

.field public static final INTERNAL_CMD_ID_CST_START_SCAN:I = 0xd3

.field public static final INTERNAL_CMD_ID_CST_START_UWB_RANGING:I = 0xd5

.field public static final INTERNAL_CMD_ID_CST_STOP_ADVERTISE:I = 0xc9

.field public static final INTERNAL_CMD_ID_CST_STOP_HANDOVER:I = 0xce

.field public static final INTERNAL_CMD_ID_CST_STOP_SCAN:I = 0xd4

.field public static final INTERNAL_CMD_ID_CST_STOP_UWB_RANGING:I = 0xd6

.field public static final INTERNAL_CMD_ID_CST_UNREGISTER_PILOT_SCAN:I = 0xcc

.field public static final INTERNAL_CMD_ID_CST_UPDATE_PILOT_SCAN_CONTENTS:I = 0xd2

.field public static final INTERNAL_CMD_ID_IS_NETWORK_ENABLED:I = 0x5

.field public static final INTERNAL_CMD_ID_LAST:I = 0x1f4

.field public static final INTERNAL_CMD_ID_REGISTER_BLEADAPTER_CALLBACK:I = 0x6

.field public static final INTERNAL_CMD_ID_REGISTER_CASTER_CALLBACK:I = 0x1

.field public static final INTERNAL_CMD_ID_REGISTER_SUBSCRIBE_CALLBACK:I = 0x3

.field public static final INTERNAL_CMD_ID_SUB_CLOSE_MSG_CLIENT:I = 0x7e

.field public static final INTERNAL_CMD_ID_SUB_FLUSH_BACKGROUND_DISCOVERY:I = 0x6e

.field public static final INTERNAL_CMD_ID_SUB_GET_MSG_RSSI:I = 0x7f

.field public static final INTERNAL_CMD_ID_SUB_KEEP_DISCOVERED_DEVICE:I = 0x70

.field public static final INTERNAL_CMD_ID_SUB_OPEN_MSG_CLIENT:I = 0x7d

.field public static final INTERNAL_CMD_ID_SUB_RANGING_UWB_PARAM:I = 0x7b

.field public static final INTERNAL_CMD_ID_SUB_SEND_MSG:I = 0x7c

.field public static final INTERNAL_CMD_ID_SUB_SET_ANTENNA_PAIR_SELECTION:I = 0x7a

.field public static final INTERNAL_CMD_ID_SUB_START_ADVERTISE:I = 0x6c

.field public static final INTERNAL_CMD_ID_SUB_START_BACKGROUND_DISCOVERY:I = 0x64

.field public static final INTERNAL_CMD_ID_SUB_START_DISCOVERY:I = 0x66

.field public static final INTERNAL_CMD_ID_SUB_START_HANDOVER:I = 0x6a

.field public static final INTERNAL_CMD_ID_SUB_START_PILOT_ADVERTISE:I = 0x6c

.field public static final INTERNAL_CMD_ID_SUB_START_UWB_RANGING:I = 0x78

.field public static final INTERNAL_CMD_ID_SUB_STOP_ADVERTISE:I = 0x6d

.field public static final INTERNAL_CMD_ID_SUB_STOP_BACKGROUND_DISCOVERY:I = 0x65

.field public static final INTERNAL_CMD_ID_SUB_STOP_DISCOVERY:I = 0x67

.field public static final INTERNAL_CMD_ID_SUB_STOP_DISCOVERY_WITH_FLUSH:I = 0x68

.field public static final INTERNAL_CMD_ID_SUB_STOP_HANDOVER:I = 0x6b

.field public static final INTERNAL_CMD_ID_SUB_STOP_PILOT_ADVERTISE:I = 0x6d

.field public static final INTERNAL_CMD_ID_SUB_STOP_UWB_RANGING:I = 0x79

.field public static final INTERNAL_CMD_ID_SUB_SWITCH_HANDOVER:I = 0x6f

.field public static final INTERNAL_CMD_ID_UNREGISTER_BLEADAPTER_CALLBACK:I = 0x7

.field public static final INTERNAL_CMD_ID_UNREGISTER_CASTER_CALLBACK:I = 0x2

.field public static final INTERNAL_CMD_ID_UNREGISTER_SUBSCRIBE_CALLBACK:I = 0x4

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "McfAdapter"


# instance fields
.field public final mContext:Lcom/samsung/android/mcf/McfContext;

.field public final mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

.field public final mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field public final mMcfBleAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mMcfCasters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mMcfSubscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfContext;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;Landroid/os/UserHandle;)V
    .registers 5

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance p3, Lcom/samsung/android/mcf/McfAdapter$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/mcf/McfAdapter$1;-><init>(Lcom/samsung/android/mcf/McfAdapter;)V

    iput-object p3, p0, Lcom/samsung/android/mcf/McfAdapter;->mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 348
    const-string p3, "McfAdapter"

    const-string v0, "-"

    invoke-static {p3, p3, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    .line 350
    iput-object p2, p0, Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 351
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/Set;

    .line 352
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/Set;

    .line 353
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    return-object p0
.end method

.method private bindService()Z
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfAdapter;->mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/McfContext;->bindService(Lcom/samsung/android/mcf/McfContext$EventListener;)Z

    move-result v0

    return v0
.end method

.method public static bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z
    .registers 10

    .line 87
    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isMcfFeatureEnabled()Z

    move-result v0

    const-string v1, "bindService "

    const/4 v2, 0x0

    const-string v3, "McfAdapter"

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isBluetoothSupported()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_50

    .line 93
    :cond_12
    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->getMcfVersionCode(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/32 v6, 0x5f767e0

    cmp-long v0, v4, v6

    if-gez v0, :cond_23

    .line 94
    const-string p0, " **FAIL ** need new MCF server..."

    invoke-static {v3, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    nop

    .line 98
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 99
    const-string p0, "bindService"

    const-string p1, "You must request Manifest.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, p0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 103
    :cond_34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/DLog;->setAppName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/McfContext;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mcf/McfContext;

    move-result-object p0

    .line 105
    new-instance v0, Lcom/samsung/android/mcf/McfAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/mcf/McfAdapter;-><init>(Lcom/samsung/android/mcf/McfContext;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;Landroid/os/UserHandle;)V

    .line 106
    invoke-direct {v0}, Lcom/samsung/android/mcf/McfAdapter;->bindService()Z

    move-result p0

    return p0

    :cond_50
    :goto_50
    nop

    .line 88
    const-string p0, "this model does not support MCF. can\'t bind service"

    invoke-static {v3, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getSDKVersionCode()I
    .registers 1

    const v0, 0xf4e15

    return v0
.end method

.method public static getServiceVersionCode(Landroid/content/Context;)J
    .registers 6

    .line 305
    const-string v0, "McfAdapter"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_6
    const-string v1, "com.samsung.android.mcfserver"

    const/16 v2, 0x80

    .line 308
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 309
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2f

    .line 310
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_18} :catch_33

    const-string p0, "getServiceVersionCode "

    .line 311
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 313
    :cond_2f
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_31} :catch_33

    int-to-long v1, p0

    :goto_32
    return-wide v1

    :catch_33
    move-exception p0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getServiceVersionCode"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static hasUWB(Landroid/content/Context;)Z
    .registers 1

    .line 72
    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->hasUWB(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupported()Z
    .registers 1

    .line 62
    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isMcfFeatureEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeBleAdapter(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapter"

    const-string v2, "closeBleAdapter"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/McfContext;->closeBleAdapter(I)V

    return-void
.end method

.method public closeCaster(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapter"

    const-string v2, "closeCaster"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/McfContext;->closeCaster(I)V

    return-void
.end method

.method public closeSubscriber(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(#0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapter"

    const-string v2, "closeSubscriber"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/McfContext;->closeSubscriber(I)V

    return-void
.end method

.method public getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "getBleAdapter"

    const-string v2, "(#0x"

    const-string v3, "McfAdapter"

    if-nez p2, :cond_25

    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") :invalid callback"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 179
    :cond_25
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object p2

    if-nez p2, :cond_49

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 184
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBleAdapter "

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "getCaster"

    const-string v2, "(#0x"

    const-string v3, "McfAdapter"

    if-nez p2, :cond_25

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") invalid callback"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 264
    :cond_25
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;

    move-result-object p2

    if-nez p2, :cond_49

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 269
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCaster "

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getService()Lcom/samsung/android/mcf/IMcfService;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfContext;->getMcfService()Lcom/samsung/android/mcf/IMcfService;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "getSubscriber"

    const-string v2, "(#0x"

    const-string v3, "McfAdapter"

    if-nez p2, :cond_25

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") : invalid callback"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 223
    :cond_25
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;

    move-result-object p2

    if-nez p2, :cond_49

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") : failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 228
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriber "

    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public unbindService()Z
    .registers 6

    .line 116
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "-"

    const-string v3, "McfAdapter"

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 118
    :try_start_16
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/mcf/McfContext;->closeBleAdapter(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_6

    .line 120
    :catch_20
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 123
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfBleAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 127
    :try_start_40
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/mcf/McfContext;->closeSubscriber(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 129
    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 132
    :cond_53
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 136
    :try_start_6a
    iget-object v4, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/mcf/McfContext;->closeCaster(I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_5e

    .line 138
    :catch_74
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 141
    :cond_7d
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mMcfCasters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter;->mContext:Lcom/samsung/android/mcf/McfContext;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfAdapter;->mEventListener:Lcom/samsung/android/mcf/McfContext$EventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/McfContext;->unbindService(Lcom/samsung/android/mcf/McfContext$EventListener;)V

    const/4 v0, 0x1

    return v0
.end method
