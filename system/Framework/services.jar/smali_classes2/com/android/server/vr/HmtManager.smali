.class public Lcom/android/server/vr/HmtManager;
.super Ljava/lang/Object;
.source "HmtManager.java"


# static fields
.field public static final ACTION_HMT_THIRDPARTY_DEVICE_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE.HmtThridPartyDevicePolicy"

.field public static final DEFAULT_HMT_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

.field public static final DEFAULT_POWER_LIMITING_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

.field public static final DEFAULT_THIRDPARTY_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

.field private static final HMT_THIRDPARTY_DEVICE_POLICY_NAME:Ljava/lang/String; = "HmtThridPartyDevicePolicy"

.field public static final METADATA_HMT_DEMO_DEVICES:Ljava/lang/String; = "com.samsung.android.hmt.devices.demo"

.field public static final METADATA_HMT_DEVICES:Ljava/lang/String; = "com.samsung.android.hmt.devices"

.field private static final TAG:Ljava/lang/String; = "HmtManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceRevision:Ljava/lang/String;

.field private mPowerLimitingDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHmtDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdPartyDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 34
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/vr/HmtDevice;

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 35
    const/16 v3, 0x4e8

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const v3, 0xa500

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const-string v3, "Gear VR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setCategory(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceNameFilter(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_HMT_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    .line 38
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/samsung/android/vr/HmtDevice;

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 39
    const/16 v4, 0x1f29

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const-string v4, "PicoVR"

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 40
    const/16 v5, 0x2d40

    invoke-virtual {v2, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 41
    const/16 v4, 0x4b4

    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const/16 v5, 0x3120

    invoke-virtual {v2, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const-string/jumbo v6, "nreal light"

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 42
    const/16 v8, 0x486

    invoke-virtual {v2, v8}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    const/16 v9, 0x604

    invoke-virtual {v2, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v10, 0x3

    aput-object v2, v1, v10

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 43
    const/16 v11, 0x3318

    invoke-virtual {v2, v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    const/4 v12, 0x4

    aput-object v2, v1, v12

    sput-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_THIRDPARTY_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    .line 46
    new-array v1, v10, [Lcom/samsung/android/vr/HmtDevice;

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 47
    invoke-virtual {v2, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 48
    invoke-virtual {v2, v8}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 49
    invoke-virtual {v0, v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_POWER_LIMITING_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v0, "ro.revision"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/HmtManager;->mDeviceRevision:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_HMT_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_THIRDPARTY_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/vr/HmtManager;->DEFAULT_POWER_LIMITING_DEVICES:[Lcom/samsung/android/vr/HmtDevice;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-void
.end method

.method private getSupportDevices(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "metaDataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/vr/HmtDevice;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 245
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.hmt.vrsvc"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_13} :catch_6a

    .line 246
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_13
    invoke-virtual {v2, v1, p1}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_6a

    .line 247
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_4c

    .line 248
    :try_start_19
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 249
    :goto_1c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4c

    .line 250
    const-string v4, "device"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 251
    invoke-static {v3}, Lcom/samsung/android/vr/HmtDevice;->readDevices(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object v4

    .line 252
    .local v4, "filter":Lcom/samsung/android/vr/HmtDevice;
    invoke-virtual {v4}, Lcom/samsung/android/vr/HmtDevice;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 253
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v4    # "filter":Lcom/samsung/android/vr/HmtDevice;
    :cond_3c
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_40

    goto :goto_1c

    .line 246
    :catchall_40
    move-exception v4

    if-eqz v3, :cond_4b

    :try_start_43
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v5

    :try_start_48
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/vr/HmtDevice;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Lcom/android/server/vr/HmtManager;
    .end local p1    # "metaDataName":Ljava/lang/String;
    :cond_4b
    :goto_4b
    throw v4

    .line 259
    .restart local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/vr/HmtDevice;>;"
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/vr/HmtManager;
    .restart local p1    # "metaDataName":Ljava/lang/String;
    :cond_4c
    if-eqz v3, :cond_51

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_51} :catch_6a

    .line 261
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_51
    goto :goto_69

    .line 259
    :catch_52
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v4, "HmtManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load device info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_69} :catch_6a

    .line 264
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_69
    goto :goto_6b

    .line 262
    :catch_6a
    move-exception v1

    .line 265
    :goto_6b
    return-object v0
.end method

.method public static isHmtDeviceDockState(I)Z
    .registers 2
    .param p0, "dockState"    # I

    .line 205
    const/16 v0, 0x69

    if-eq p0, v0, :cond_17

    const/16 v0, 0x70

    if-eq p0, v0, :cond_17

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_17

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_17

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 270
    const-string v0, "HmtManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    const-string v0, "    mSupportHmtDevices:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "]"

    const-string v3, " flags=["

    const-string v4, "        "

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 273
    .local v1, "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->toFlagsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .end local v1    # "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    goto :goto_10

    .line 275
    :cond_42
    const-string v0, "    mThirdPartyDevices:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 277
    .restart local v1    # "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->toFlagsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .end local v1    # "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    goto :goto_4d

    .line 279
    :cond_79
    const-string v0, "    mPowerLimitingDevices:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 281
    .restart local v1    # "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->toFlagsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .end local v1    # "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    goto :goto_84

    .line 283
    :cond_b0
    return-void
.end method

.method public findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;
    .registers 5
    .param p1, "idsOrName"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 228
    .local v1, "device":Lcom/samsung/android/vr/HmtDevice;
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isCurrentDevice()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 229
    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_24
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mDeviceRevision:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/vr/HmtDevice;->matchesRevisionFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 230
    return-object v1

    .line 233
    :cond_2d
    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_3b

    .line 237
    .end local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_3a
    goto :goto_6

    .line 234
    .restart local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_3b
    :goto_3b
    return-object v1

    .line 238
    .end local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method public is3rdPartyDeviceMatched(Ljava/lang/String;)Z
    .registers 5
    .param p1, "idsOrDisplayName"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 188
    .local v1, "device":Lcom/samsung/android/vr/HmtDevice;
    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_20

    .line 191
    .end local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_1f
    goto :goto_6

    .line 189
    .restart local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0

    .line 192
    .end local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceMatched(Landroid/view/InputDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 213
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 214
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    .line 215
    .local v1, "productId":I
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    .line 216
    .local v2, "vendorId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0

    .line 218
    .end local v1    # "productId":I
    .end local v2    # "vendorId":I
    :cond_2f
    return v0
.end method

.method public isDeviceMatched(Ljava/lang/String;)Z
    .registers 3
    .param p1, "idsOrName"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 5
    .param p1, "idsOrDisplayName"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 197
    .local v1, "device":Lcom/samsung/android/vr/HmtDevice;
    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1, p1}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_20

    .line 200
    .end local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_1f
    goto :goto_6

    .line 198
    .restart local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0

    .line 201
    .end local v1    # "device":Lcom/samsung/android/vr/HmtDevice;
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public loadSupportedHmtDevices()V
    .registers 5

    .line 175
    const-string v0, "com.samsung.android.hmt.devices"

    invoke-direct {p0, v0}, Lcom/android/server/vr/HmtManager;->getSupportDevices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "hmtDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/vr/HmtDevice;>;"
    const-string v1, "com.samsung.android.hmt.devices.demo"

    invoke-direct {p0, v1}, Lcom/android/server/vr/HmtManager;->getSupportDevices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    .local v1, "demoDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/vr/HmtDevice;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_27

    .line 178
    :cond_18
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_27
    iget-object v2, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;

    invoke-direct {v3}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadSupportedHmtDevices size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/HmtManager;->mSupportHmtDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HmtManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public toDisplayPortWhitelistString()Ljava/lang/String;
    .registers 9

    .line 138
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "HMD,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/HmtDevice;

    .line 145
    .local v2, "device":Lcom/samsung/android/vr/HmtDevice;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice;->getVendorId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice;->getProductId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v2    # "device":Lcom/samsung/android/vr/HmtDevice;
    goto :goto_23

    .line 152
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toPowerLimitingWhitelistString()Ljava/lang/String;
    .registers 9

    .line 156
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "HMD,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/HmtDevice;

    .line 163
    .local v2, "device":Lcom/samsung/android/vr/HmtDevice;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice;->getVendorId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/vr/HmtDevice;->getProductId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v2    # "device":Lcom/samsung/android/vr/HmtDevice;
    goto :goto_23

    .line 170
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateSupportDevicePolicy()V
    .registers 16

    .line 74
    const-string v0, ", "

    const-string v1, "HmtManager"

    const-string v2, "com.samsung.android.sm.policy"

    .line 75
    .local v2, "AUTHORITY":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 76
    .local v3, "AUTHORITY_URI":Landroid/net/Uri;
    const-string/jumbo v4, "policy_item"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 78
    .local v4, "CONTENT_URI":Landroid/net/Uri;
    const-string v5, "HmtThridPartyDevicePolicy"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 80
    .local v5, "POLICY_ITEM_URI":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 82
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_29
    iget-object v6, p0, Lcom/android/server/vr/HmtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v12, v6

    .line 83
    if-nez v12, :cond_46

    .line 84
    const-string v0, "It can\'t query the HmtThridPartyDevicePolicy policy URI"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_10a
    .catchall {:try_start_29 .. :try_end_40} :catchall_108

    .line 127
    if-eqz v12, :cond_45

    .line 128
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_45
    return-void

    .line 88
    :cond_46
    :try_start_46
    iget-object v6, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v6, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 94
    :cond_50
    :goto_50
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_54} :catch_10a
    .catchall {:try_start_46 .. :try_end_54} :catchall_108

    if-eqz v6, :cond_102

    .line 97
    const/4 v6, 0x1

    :try_start_57
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "vendorId":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "productId":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6a} :catch_6b
    .catchall {:try_start_57 .. :try_end_6a} :catchall_108

    .line 106
    .local v9, "filter":Ljava/lang/String;
    goto :goto_74

    .line 101
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "vendorId":Ljava/lang/String;
    .end local v8    # "productId":Ljava/lang/String;
    .end local v9    # "filter":Ljava/lang/String;
    :catch_6b
    move-exception v6

    .line 102
    .local v6, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 103
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 104
    .local v8, "vendorId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 105
    .local v9, "productId":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    .line 107
    .local v6, "name":Ljava/lang/String;
    .local v7, "vendorId":Ljava/lang/String;
    .local v8, "productId":Ljava/lang/String;
    .local v9, "filter":Ljava/lang/String;
    :goto_74
    if-eqz v6, :cond_50

    if-eqz v7, :cond_50

    if-eqz v8, :cond_50

    if-nez v9, :cond_7d

    .line 108
    goto :goto_50

    .line 111
    :cond_7d
    :try_start_7d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSupportDevicePolicy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v10, "device-whitelist"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_aa} :catch_10a
    .catchall {:try_start_7d .. :try_end_aa} :catchall_108

    const-string/jumbo v11, "productId"

    const-string/jumbo v13, "vendorId"

    if-eqz v10, :cond_d5

    .line 113
    :try_start_b2
    iget-object v10, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    new-instance v14, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v14}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 114
    invoke-static {v13, v7}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v13

    .line 115
    invoke-static {v11, v8}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v11

    .line 116
    invoke-virtual {v11, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v11

    .line 113
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 117
    :cond_d5
    const-string/jumbo v10, "power-limiting-device"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_100

    .line 118
    iget-object v10, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    new-instance v14, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v14}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 119
    invoke-static {v13, v7}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v13

    .line 120
    invoke-static {v11, v8}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v11

    .line 121
    invoke-virtual {v11, v6}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v11

    .line 118
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_100} :catch_10a
    .catchall {:try_start_b2 .. :try_end_100} :catchall_108

    .line 123
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "vendorId":Ljava/lang/String;
    .end local v8    # "productId":Ljava/lang/String;
    .end local v9    # "filter":Ljava/lang/String;
    :cond_100
    :goto_100
    goto/16 :goto_50

    .line 127
    :cond_102
    if-eqz v12, :cond_115

    .line 128
    :goto_104
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_115

    .line 127
    :catchall_108
    move-exception v0

    goto :goto_160

    .line 124
    :catch_10a
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10b
    const-string/jumbo v6, "updateSupportDevicePolicy for HmtDevice"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catchall {:try_start_10b .. :try_end_111} :catchall_108

    .line 127
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_115

    .line 128
    goto :goto_104

    .line 131
    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;

    invoke-direct {v6}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;-><init>()V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;

    invoke-direct {v6}, Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;-><init>()V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadThirdPartyDevices size="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vr/HmtManager;->mThirdPartyDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadPowerLimitingDevices size="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vr/HmtManager;->mPowerLimitingDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 127
    :goto_160
    if-eqz v12, :cond_165

    .line 128
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_165
    throw v0
.end method
