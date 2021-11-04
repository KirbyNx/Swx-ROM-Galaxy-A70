.class Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "UsbUserPermissionManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessoryPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private mIsCopyPermissionsScheduled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionsFile:Landroid/util/AtomicFile;

.field private final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbUserSettingsManager"    # Lcom/android/server/usb/UsbUserSettingsManager;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 128
    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    .line 132
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 133
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "usb_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "usb-permissions"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 136
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_5c
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_61

    throw v1
.end method

.method private isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 803
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 804
    return v2

    .line 807
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 808
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 809
    .local v3, "iface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v1, :cond_1c

    .line 810
    return v2

    .line 807
    .end local v3    # "iface":Landroid/hardware/usb/UsbInterface;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 814
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;II)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 667
    const/16 v0, 0x1c

    .line 669
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 671
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p3, :cond_30

    .line 672
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v1

    .line 675
    :cond_30
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_32} :catch_4d

    move v0, v3

    .line 679
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 681
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_4b

    .line 682
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 683
    .local v2, "allowed":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_4b

    .line 684
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Camera permission required for USB video class devices"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v1

    .line 689
    .end local v2    # "allowed":I
    :cond_4b
    const/4 v1, 0x1

    return v1

    .line 676
    :catch_4d
    move-exception v2

    .line 677
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Package not found, likely due to invalid package name!"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return v1
.end method

.method private isUsbDevicePermittedForPackageByMdm(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 821
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 823
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v0, :cond_32

    :try_start_a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 824
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "Allowed by MDM policy"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_19

    .line 825
    const/4 v1, 0x1

    return v1

    .line 827
    :catch_19
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUsbDevicePermittedForPackageByMdm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 829
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    nop

    .line 831
    .end local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method private readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    :try_start_0
    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_ac

    .line 354
    .local v0, "uid":I
    nop

    .line 357
    const/4 v1, 0x0

    const-string/jumbo v2, "granted"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "isGrantedString":Ljava/lang/String;
    if-eqz v1, :cond_a1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_a1

    .line 364
    :cond_2c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 365
    .local v2, "isGranted":Z
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 366
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb-device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 367
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 368
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 369
    .local v4, "idx":I
    if-ltz v4, :cond_5e

    .line 370
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 371
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 372
    .local v5, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 373
    .end local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    goto :goto_9f

    .line 374
    :cond_5e
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 375
    .restart local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9f

    .line 378
    .end local v3    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v4    # "idx":I
    .end local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    :cond_6c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb-accessory"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 379
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 380
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 381
    .restart local v4    # "idx":I
    if-ltz v4, :cond_91

    .line 382
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 383
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 384
    .local v5, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 385
    .end local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    goto :goto_a0

    .line 386
    :cond_91
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 387
    .restart local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a0

    .line 378
    .end local v3    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v4    # "idx":I
    .end local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    :cond_9f
    :goto_9f
    nop

    .line 391
    :goto_a0
    return-void

    .line 360
    .end local v2    # "isGranted":Z
    :cond_a1
    :goto_a1
    sget-object v2, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading usb permission granted state"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 362
    return-void

    .line 350
    .end local v0    # "uid":I
    .end local v1    # "isGrantedString":Ljava/lang/String;
    :catch_ac
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permission uid"

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 353
    return-void
.end method

.method private readPermissionsLocked()V
    .registers 5

    .line 395
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 396
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 398
    :try_start_a
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_4e

    .line 399
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 400
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 402
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 403
    :goto_20
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    .line 404
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 406
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3b

    .line 408
    :cond_38
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_42

    .line 410
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_3b
    goto :goto_20

    .line 411
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3c
    if-eqz v0, :cond_5d

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_41} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_4e

    goto :goto_5d

    .line 398
    :catchall_42
    move-exception v1

    if-eqz v0, :cond_4d

    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v2

    :try_start_4a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    :cond_4d
    :goto_4d
    throw v1
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4e} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_4e

    .line 413
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    :catch_4e
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_5e

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5c
    move-exception v0

    .line 416
    :cond_5d
    :goto_5d
    nop

    .line 417
    :goto_5e
    return-void
.end method

.method private requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 19
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "pi"    # Landroid/app/PendingIntent;
    .param p6, "uid"    # I

    .line 714
    move-object v9, p0

    move-object/from16 v10, p4

    move/from16 v11, p6

    const-string/jumbo v1, "package "

    :try_start_8
    iget-object v0, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 715
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_45

    if-ne v2, v11, :cond_28

    .line 721
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 723
    iget-object v7, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    .line 724
    return-void

    .line 716
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p3    # "canBeDefault":Z
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "pi":Landroid/app/PendingIntent;
    .end local p6    # "uid":I
    throw v2
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_45} :catch_45

    .line 719
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    .restart local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p3    # "canBeDefault":Z
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "pi":Landroid/app/PendingIntent;
    .restart local p6    # "uid":I
    :catch_45
    move-exception v0

    .line 720
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private scheduleWritePermissionsLocked()V
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz v0, :cond_5

    .line 422
    return-void

    .line 424
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 426
    new-instance v0, Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;

    invoke-direct {v0, p0}, Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 704
    return-void

    .line 701
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 693
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 697
    return-void

    .line 694
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission to access device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 27
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 574
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 575
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 576
    :try_start_b
    const-string/jumbo v0, "user_id"

    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v2, v0, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 577
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 578
    .local v0, "numMappings":I
    const/4 v6, 0x0

    .local v6, "mappingsIdx":I
    :goto_23
    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    if-ge v6, v0, :cond_74

    .line 579
    iget-object v15, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 580
    .local v15, "deviceName":Ljava/lang/String;
    const-string v7, "device_permissions"

    invoke-virtual {v2, v7, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 583
    .local v7, "devicePermissionToken":J
    const-string v13, "device_name"

    invoke-virtual {v2, v13, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 585
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    .line 586
    .local v11, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 587
    .local v12, "numUids":I
    const/4 v13, 0x0

    .local v13, "uidsIdx":I
    :goto_4f
    if-ge v13, v12, :cond_67

    .line 588
    const-string/jumbo v14, "uids"

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    move-object/from16 v16, v11

    const-wide v10, 0x20500000002L

    .end local v11    # "uidList":Landroid/util/SparseBooleanArray;
    .local v16, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, v14, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 587
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    goto :goto_4f

    .end local v16    # "uidList":Landroid/util/SparseBooleanArray;
    .restart local v11    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_67
    move-object/from16 v16, v11

    .line 591
    .end local v11    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidsIdx":I
    .restart local v16    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 578
    .end local v7    # "devicePermissionToken":J
    .end local v12    # "numUids":I
    .end local v15    # "deviceName":Ljava/lang/String;
    .end local v16    # "uidList":Landroid/util/SparseBooleanArray;
    add-int/lit8 v6, v6, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_23

    .line 594
    .end local v6    # "mappingsIdx":I
    :cond_74
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v0, v6

    .line 595
    const/4 v6, 0x0

    .restart local v6    # "mappingsIdx":I
    :goto_7c
    if-ge v6, v0, :cond_de

    .line 596
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    .line 597
    .local v7, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v8, "accessory_permissions"

    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 600
    .local v8, "accessoryPermissionToken":J
    const-string v10, "accessory_description"

    .line 602
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v15

    .line 600
    invoke-virtual {v2, v10, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 604
    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseBooleanArray;

    .line 605
    .local v10, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 606
    .local v15, "numUids":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "uidsIdx":I
    :goto_aa
    if-ge v11, v15, :cond_c7

    .line 607
    const-string/jumbo v12, "uids"

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    .end local v15    # "numUids":I
    .local v16, "numUids":I
    invoke-virtual {v2, v12, v14, v15, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 606
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v16

    const-wide v13, 0x20b00000002L

    goto :goto_aa

    .end local v16    # "numUids":I
    .restart local v15    # "numUids":I
    :cond_c7
    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    .line 610
    .end local v11    # "uidsIdx":I
    .end local v15    # "numUids":I
    .restart local v16    # "numUids":I
    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 595
    .end local v7    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v8    # "accessoryPermissionToken":J
    .end local v10    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v16    # "numUids":I
    add-int/lit8 v6, v6, 0x1

    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    goto :goto_7c

    .line 613
    .end local v6    # "mappingsIdx":I
    :cond_de
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_e4
    .catchall {:try_start_b .. :try_end_e4} :catchall_1f8

    move v0, v6

    .line 614
    const/4 v6, 0x0

    .restart local v6    # "mappingsIdx":I
    :goto_e6
    const-wide v9, 0x10b00000001L

    if-ge v6, v0, :cond_16c

    .line 615
    :try_start_ed
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    .line 616
    .local v11, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 618
    .local v12, "devicePermissionToken":J
    const-string v14, "device"

    invoke-virtual {v11, v2, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 620
    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 621
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 622
    .local v9, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .line 623
    .local v10, "numPermissions":I
    const/4 v14, 0x0

    .local v14, "permissionsIdx":I
    :goto_112
    if-ge v14, v10, :cond_156

    .line 624
    const-string/jumbo v15, "uid_permission"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v15, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 626
    .local v7, "uidPermissionToken":J
    const-string/jumbo v15, "uid"

    move/from16 v16, v0

    .end local v0    # "numMappings":I
    .local v16, "numMappings":I
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    move/from16 v18, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10500000001L

    .end local v10    # "numPermissions":I
    .end local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    .local v17, "filter":Landroid/hardware/usb/DeviceFilter;
    .local v18, "numPermissions":I
    invoke-virtual {v2, v15, v10, v11, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 627
    const-string/jumbo v0, "is_granted"

    .line 628
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10
    :try_end_13e
    .catchall {:try_start_ed .. :try_end_13e} :catchall_169

    .line 627
    move-wide/from16 v20, v3

    const-wide v3, 0x10800000002L

    .end local v3    # "token":J
    .local v20, "token":J
    :try_start_145
    invoke-virtual {v2, v0, v3, v4, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 629
    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 623
    .end local v7    # "uidPermissionToken":J
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    move-object/from16 v11, v17

    move/from16 v10, v18

    move-wide/from16 v3, v20

    goto :goto_112

    .end local v16    # "numMappings":I
    .end local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v18    # "numPermissions":I
    .end local v20    # "token":J
    .restart local v0    # "numMappings":I
    .restart local v3    # "token":J
    .restart local v10    # "numPermissions":I
    .restart local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_156
    move/from16 v16, v0

    move-wide/from16 v20, v3

    move/from16 v18, v10

    move-object/from16 v17, v11

    .line 631
    .end local v0    # "numMappings":I
    .end local v3    # "token":J
    .end local v10    # "numPermissions":I
    .end local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v14    # "permissionsIdx":I
    .restart local v16    # "numMappings":I
    .restart local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .restart local v18    # "numPermissions":I
    .restart local v20    # "token":J
    invoke-virtual {v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_161
    .catchall {:try_start_145 .. :try_end_161} :catchall_1e9

    .line 614
    .end local v9    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v12    # "devicePermissionToken":J
    .end local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v18    # "numPermissions":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move-wide/from16 v3, v20

    goto/16 :goto_e6

    .line 654
    .end local v6    # "mappingsIdx":I
    .end local v16    # "numMappings":I
    .end local v20    # "token":J
    .restart local v3    # "token":J
    :catchall_169
    move-exception v0

    .end local v3    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_1f9

    .line 614
    .end local v20    # "token":J
    .restart local v0    # "numMappings":I
    .restart local v3    # "token":J
    .restart local v6    # "mappingsIdx":I
    :cond_16c
    move/from16 v16, v0

    move-wide/from16 v20, v3

    .line 634
    .end local v0    # "numMappings":I
    .end local v3    # "token":J
    .end local v6    # "mappingsIdx":I
    .restart local v16    # "numMappings":I
    .restart local v20    # "token":J
    :try_start_170
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_176
    .catchall {:try_start_170 .. :try_end_176} :catchall_1f4

    .line 635
    .end local v16    # "numMappings":I
    .restart local v0    # "numMappings":I
    const/4 v3, 0x0

    .local v3, "mappingsIdx":I
    :goto_177
    if-ge v3, v0, :cond_1ed

    .line 636
    :try_start_179
    iget-object v4, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    .line 637
    .local v4, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string v6, "accessory_persistent_permissions"

    const-wide v7, 0x20b00000005L

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 639
    .local v6, "accessoryPermissionToken":J
    const-string v8, "accessory"

    invoke-virtual {v4, v2, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 641
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 642
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 643
    .local v8, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 644
    .local v11, "numPermissions":I
    const/4 v12, 0x0

    .local v12, "permissionsIdx":I
    :goto_19e
    if-ge v12, v11, :cond_1d9

    .line 645
    const-string/jumbo v13, "uid_permission"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 647
    .local v18, "uidPermissionToken":J
    const-string/jumbo v13, "uid"

    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    const-wide v14, 0x10500000001L

    invoke-virtual {v2, v13, v14, v15, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 648
    const-string/jumbo v9, "is_granted"

    .line 649
    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    .line 648
    const-wide v14, 0x10800000002L

    invoke-virtual {v2, v9, v14, v15, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 650
    move-wide/from16 v9, v18

    .end local v18    # "uidPermissionToken":J
    .local v9, "uidPermissionToken":J
    invoke-virtual {v2, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 644
    .end local v9    # "uidPermissionToken":J
    add-int/lit8 v12, v12, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_19e

    :cond_1d9
    const-wide v14, 0x10800000002L

    .line 652
    .end local v12    # "permissionsIdx":I
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_1e1
    .catchall {:try_start_179 .. :try_end_1e1} :catchall_1e9

    .line 635
    .end local v4    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v6    # "accessoryPermissionToken":J
    .end local v8    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v11    # "numPermissions":I
    add-int/lit8 v3, v3, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_177

    .line 654
    .end local v0    # "numMappings":I
    .end local v3    # "mappingsIdx":I
    :catchall_1e9
    move-exception v0

    move-wide/from16 v3, v20

    goto :goto_1f9

    :cond_1ed
    :try_start_1ed
    monitor-exit v5
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1f4

    .line 655
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 656
    return-void

    .line 654
    .end local v3    # "token":J
    .restart local v20    # "token":J
    :catchall_1f4
    move-exception v0

    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .restart local v3    # "token":J
    goto :goto_1f9

    :catchall_1f8
    move-exception v0

    :goto_1f9
    :try_start_1f9
    monitor-exit v5
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1f8

    throw v0
.end method

.method grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 199
    return-void

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_c
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 205
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 206
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v3

    .line 207
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_22
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 210
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_27

    throw v1
.end method

.method grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 170
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "grantDevicePermission: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " For uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 174
    return-void

    .line 178
    :cond_2c
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_2f
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 181
    .local v2, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    if-nez v2, :cond_49

    .line 182
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v2, v4

    .line 183
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_49
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 186
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .registers 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 266
    return v1

    .line 270
    :cond_a
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_43

    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v2, :cond_16

    goto :goto_43

    .line 274
    :cond_16
    new-instance v2, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v2, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 275
    .local v2, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 276
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 277
    .local v3, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    if-eqz v3, :cond_31

    .line 278
    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 279
    .local v4, "idx":I
    if-ltz v4, :cond_31

    .line 280
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 283
    .end local v4    # "idx":I
    :cond_31
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 284
    .local v4, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v4, :cond_3d

    .line 285
    monitor-exit v0

    return v1

    .line 287
    :cond_3d
    invoke-virtual {v4, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 272
    .end local v2    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v3    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    .end local v4    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_43
    :goto_43
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 288
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_11 .. :try_end_48} :catchall_46

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 226
    return v1

    .line 230
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 231
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_17

    .line 232
    return v1

    .line 235
    :cond_17
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    const/16 v2, 0x3e8

    if-eq p4, v2, :cond_54

    :try_start_1e
    iget-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v2, :cond_23

    goto :goto_54

    .line 239
    :cond_23
    new-instance v2, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v2, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 240
    .local v2, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 241
    .local v3, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    if-eqz v3, :cond_3e

    .line 242
    invoke-virtual {v3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 243
    .local v4, "idx":I
    if-ltz v4, :cond_3e

    .line 244
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 247
    .end local v4    # "idx":I
    :cond_3e
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 248
    .local v4, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v4, :cond_4e

    .line 249
    monitor-exit v0

    return v1

    .line 251
    :cond_4e
    invoke-virtual {v4, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 237
    .end local v2    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v3    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    .end local v4    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_54
    :goto_54
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 252
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1e .. :try_end_59} :catchall_57

    throw v1
.end method

.method public synthetic lambda$scheduleWritePermissionsLocked$0$UsbUserPermissionManager()V
    .registers 19

    .line 437
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_5
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, v0

    .line 440
    .local v3, "numDevices":I
    new-array v0, v3, [Landroid/hardware/usb/DeviceFilter;

    move-object v4, v0

    .line 441
    .local v4, "devices":[Landroid/hardware/usb/DeviceFilter;
    new-array v0, v3, [[I

    move-object v5, v0

    .line 442
    .local v5, "uidsForDevices":[[I
    new-array v0, v3, [[Z

    move-object v6, v0

    .line 443
    .local v6, "grantedValuesForDevices":[[Z
    const/4 v0, 0x0

    .local v0, "deviceIdx":I
    :goto_16
    if-ge v0, v3, :cond_54

    .line 444
    new-instance v7, Landroid/hardware/usb/DeviceFilter;

    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 445
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v7, v8}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v7, v4, v0

    .line 446
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 447
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 448
    .local v7, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    .line 449
    .local v8, "numPermissions":I
    new-array v9, v8, [I

    aput-object v9, v5, v0

    .line 450
    new-array v9, v8, [Z

    aput-object v9, v6, v0

    .line 451
    const/4 v9, 0x0

    .local v9, "permissionIdx":I
    :goto_3c
    if-ge v9, v8, :cond_51

    .line 452
    aget-object v10, v5, v0

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    aput v11, v10, v9

    .line 453
    aget-object v10, v6, v0

    .line 454
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    aput-boolean v11, v10, v9

    .line 451
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 443
    .end local v7    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v8    # "numPermissions":I
    .end local v9    # "permissionIdx":I
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 458
    .end local v0    # "deviceIdx":I
    :cond_54
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v7, v0

    .line 459
    .local v7, "numAccessories":I
    new-array v0, v7, [Landroid/hardware/usb/AccessoryFilter;

    move-object v8, v0

    .line 460
    .local v8, "accessories":[Landroid/hardware/usb/AccessoryFilter;
    new-array v0, v7, [[I

    move-object v9, v0

    .line 461
    .local v9, "uidsForAccessories":[[I
    new-array v0, v7, [[Z

    move-object v10, v0

    .line 462
    .local v10, "grantedValuesForAccessories":[[Z
    const/4 v0, 0x0

    .local v0, "accessoryIdx":I
    :goto_65
    if-ge v0, v7, :cond_a3

    .line 463
    new-instance v11, Landroid/hardware/usb/AccessoryFilter;

    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 464
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v11, v12}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v11, v8, v0

    .line 465
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 466
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    .line 467
    .local v11, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 468
    .local v12, "numPermissions":I
    new-array v13, v12, [I

    aput-object v13, v9, v0

    .line 469
    new-array v13, v12, [Z

    aput-object v13, v10, v0

    .line 470
    const/4 v13, 0x0

    .local v13, "permissionIdx":I
    :goto_8b
    if-ge v13, v12, :cond_a0

    .line 471
    aget-object v14, v9, v0

    .line 472
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v13

    .line 473
    aget-object v14, v10, v0

    .line 474
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    aput-boolean v15, v14, v13

    .line 470
    add-int/lit8 v13, v13, 0x1

    goto :goto_8b

    .line 462
    .end local v11    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v12    # "numPermissions":I
    .end local v13    # "permissionIdx":I
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 477
    .end local v0    # "accessoryIdx":I
    :cond_a3
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 478
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_5 .. :try_end_a7} :catchall_19a

    .line 480
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v11

    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_ab
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v2, v0

    .line 484
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 485
    .local v0, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 486
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v12}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 487
    const-string/jumbo v12, "permissions"

    invoke-virtual {v0, v13, v12}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d0
    if-ge v12, v3, :cond_126

    .line 490
    aget-object v14, v5, v12

    array-length v14, v14

    .line 491
    .local v14, "numPermissions":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_d6
    if-ge v15, v14, :cond_11e

    .line 492
    const-string/jumbo v13, "permission"
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_db} :catch_182
    .catchall {:try_start_ab .. :try_end_db} :catchall_17c

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "numDevices":I
    .local v16, "numDevices":I
    :try_start_de
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const-string/jumbo v3, "uid"

    aget-object v13, v5, v12

    aget v13, v13, v15

    .line 494
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_ec} :catch_11a
    .catchall {:try_start_de .. :try_end_ec} :catchall_115

    .line 493
    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "uidsForDevices":[[I
    .local v17, "uidsForDevices":[[I
    :try_start_ef
    invoke-virtual {v0, v5, v3, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    const-string/jumbo v3, "granted"

    aget-object v5, v6, v12

    aget-boolean v5, v5, v15

    .line 496
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 495
    const/4 v13, 0x0

    invoke-virtual {v0, v13, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    aget-object v3, v4, v12

    invoke-virtual {v3, v0}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 498
    const-string/jumbo v3, "permission"

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    const/4 v13, 0x0

    goto :goto_d6

    .line 525
    .end local v0    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v14    # "numPermissions":I
    .end local v15    # "j":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v5    # "uidsForDevices":[[I
    :catchall_115
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "uidsForDevices":[[I
    .restart local v17    # "uidsForDevices":[[I
    goto/16 :goto_198

    .line 519
    .end local v17    # "uidsForDevices":[[I
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "uidsForDevices":[[I
    :catch_11a
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "uidsForDevices":[[I
    .restart local v17    # "uidsForDevices":[[I
    goto :goto_187

    .line 491
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v0    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    .restart local v12    # "i":I
    .restart local v14    # "numPermissions":I
    .restart local v15    # "j":I
    :cond_11e
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 489
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .end local v14    # "numPermissions":I
    .end local v15    # "j":I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_d0

    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    :cond_126
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 502
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .end local v12    # "i":I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12b
    if-ge v3, v7, :cond_16a

    .line 503
    aget-object v5, v9, v3

    array-length v5, v5

    .line 504
    .local v5, "numPermissions":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_131
    if-ge v12, v5, :cond_167

    .line 505
    const-string/jumbo v13, "permission"

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    const-string/jumbo v13, "uid"

    aget-object v14, v9, v3

    aget v14, v14, v12

    .line 507
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 506
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    const-string/jumbo v13, "granted"

    aget-object v14, v6, v3

    aget-boolean v14, v14, v12

    .line 509
    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    .line 508
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    aget-object v13, v8, v3

    invoke-virtual {v13, v0}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 511
    const-string/jumbo v13, "permission"

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    add-int/lit8 v12, v12, 0x1

    goto :goto_131

    .line 502
    .end local v5    # "numPermissions":I
    .end local v12    # "j":I
    :cond_167
    add-int/lit8 v3, v3, 0x1

    goto :goto_12b

    .line 515
    .end local v3    # "i":I
    :cond_16a
    const-string/jumbo v3, "permissions"

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 518
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_179} :catch_17a
    .catchall {:try_start_ef .. :try_end_179} :catchall_197

    .line 524
    .end local v0    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    goto :goto_195

    .line 519
    :catch_17a
    move-exception v0

    goto :goto_187

    .line 525
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .local v3, "numDevices":I
    .local v5, "uidsForDevices":[[I
    :catchall_17c
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    goto :goto_198

    .line 519
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    :catch_182
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 520
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    :goto_187
    :try_start_187
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write permissions"

    invoke-static {v3, v5, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    if-eqz v2, :cond_195

    .line 522
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 525
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_195
    :goto_195
    monitor-exit v11

    .line 526
    return-void

    .line 525
    :catchall_197
    move-exception v0

    :goto_198
    monitor-exit v11
    :try_end_199
    .catchall {:try_start_187 .. :try_end_199} :catchall_197

    throw v0

    .line 478
    .end local v4    # "devices":[Landroid/hardware/usb/DeviceFilter;
    .end local v6    # "grantedValuesForDevices":[[Z
    .end local v7    # "numAccessories":I
    .end local v8    # "accessories":[Landroid/hardware/usb/AccessoryFilter;
    .end local v9    # "uidsForAccessories":[[I
    .end local v10    # "grantedValuesForAccessories":[[Z
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    :catchall_19a
    move-exception v0

    :try_start_19b
    monitor-exit v2
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    throw v0
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 147
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 158
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 14
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "uid"    # I

    .line 775
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPermission: accessory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0, p1, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 781
    const/4 v1, 0x1

    const-string/jumbo v2, "permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    :try_start_46
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_46 .. :try_end_4c} :catch_4d

    .line 786
    goto :goto_4e

    .line 784
    :catch_4d
    move-exception v1

    .line 787
    :goto_4e
    return-void

    .line 790
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4f
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 791
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v5

    .line 790
    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 792
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 15
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 729
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPermission: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-direct {p0, p5, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->isUsbDevicePermittedForPackageByMdm(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 732
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy forcely granted usb device permission for package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0, p1, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 738
    :cond_6d
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 739
    return-void

    .line 743
    :cond_76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v1

    const-string/jumbo v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_96

    .line 747
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 748
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    :try_start_8e
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_93
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8e .. :try_end_93} :catch_94

    .line 753
    goto :goto_95

    .line 751
    :catch_94
    move-exception v1

    .line 754
    :goto_95
    return-void

    .line 756
    :cond_96
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 757
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 758
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 759
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    :try_start_a8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_ad
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a8 .. :try_end_ad} :catch_ae

    .line 764
    goto :goto_af

    .line 762
    :catch_ae
    move-exception v1

    .line 765
    :goto_af
    return-void

    .line 769
    :cond_b0
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 770
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v5

    .line 769
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 771
    return-void
.end method

.method requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "userContext"    # Landroid/content/Context;
    .param p7, "pi"    # Landroid/app/PendingIntent;

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 550
    .local v0, "identity":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_11

    .line 552
    const-string v3, "device"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_16

    .line 554
    :cond_11
    const-string v3, "accessory"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    :goto_16
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string v3, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 559
    const-string v3, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040332

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 562
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 565
    :try_start_41
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_46} :catch_4d
    .catchall {:try_start_41 .. :try_end_46} :catchall_4b

    .line 569
    nop

    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    goto :goto_58

    .line 569
    :catchall_4b
    move-exception v3

    goto :goto_59

    .line 566
    :catch_4d
    move-exception v3

    .line 567
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4e
    sget-object v4, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to start UsbPermissionActivity"

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_4b

    .line 569
    nop

    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_47

    .line 571
    :goto_58
    return-void

    .line 569
    :goto_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    throw v3
.end method

.method setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I
    .param p3, "isGranted"    # Z

    .line 320
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 321
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_8
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 323
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 324
    .local v2, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_1d

    .line 325
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 326
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1d
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 329
    .local v3, "idx":I
    if-ltz v3, :cond_30

    .line 330
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 331
    .local v4, "isChanged":Z
    :goto_2c
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_34

    .line 333
    .end local v4    # "isChanged":Z
    :cond_30
    const/4 v4, 0x1

    .line 334
    .restart local v4    # "isChanged":Z
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 337
    :goto_34
    if-eqz v4, :cond_39

    .line 338
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 340
    .end local v2    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    .end local v3    # "idx":I
    :cond_39
    monitor-exit v1

    .line 341
    return-void

    .line 340
    .end local v4    # "isChanged":Z
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I
    .param p3, "isGranted"    # Z

    .line 294
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 295
    .local v0, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_8
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 297
    .local v2, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_1d

    .line 298
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 299
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1d
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 302
    .local v3, "idx":I
    if-ltz v3, :cond_30

    .line 303
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 304
    .local v4, "isChanged":Z
    :goto_2c
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_34

    .line 306
    .end local v4    # "isChanged":Z
    :cond_30
    const/4 v4, 0x1

    .line 307
    .restart local v4    # "isChanged":Z
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 310
    :goto_34
    if-eqz v4, :cond_39

    .line 311
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 313
    .end local v2    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    .end local v3    # "idx":I
    :cond_39
    monitor-exit v1

    .line 314
    return-void

    .line 313
    .end local v4    # "isChanged":Z
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method
