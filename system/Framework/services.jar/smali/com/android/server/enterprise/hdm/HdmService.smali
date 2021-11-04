.class public Lcom/android/server/enterprise/hdm/HdmService;
.super Lcom/samsung/android/knox/hdm/IHdmManager$Stub;
.source "HdmService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final HDM_DRK_KEY_DIR:Ljava/lang/String; = "/data/misc/tz_hdm/"

.field private static final HDM_DRK_KEY_FILENAME:Ljava/lang/String; = "key.dat"

.field private static final HDM_DRK_KEY_FILENAME_BKP:Ljava/lang/String; = "key.dat.bkp"

.field private static final HDM_DRK_SERVICE_NAME:Ljava/lang/String; = "HDM"

.field private static final HDM_ERROR:I = -0x1

.field private static final HDM_GET_DEVICE_STATUS_RETRY_COUNT:I = 0x1

.field private static final HDM_JWS_MAX_LEN:I = 0x2000

.field private static final HDM_NWD_INFO_ERROR:I = 0x0

.field private static final HDM_REQUEST_ID_MAX_LEN:I = 0x5f

.field private static final HDM_SERVICE_NAME_MAX_LEN:I = 0x28

.field private static final HDM_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final mCidPath:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final mEmmcSerialPath:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field private static final mUfsSerialPath:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHashImei:[B

.field private mImei0:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mSerialNumber:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDM - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/enterprise/hdm/HdmService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/knox/hdm/IHdmManager$Stub;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 87
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 89
    iput-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v1, "HdmService.java instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private checkFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private deleteHdmKey()Z
    .registers 2

    .line 234
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_delete_keys()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_HDM"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 293
    return-object p1
.end method

.method private enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_HDM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 279
    return-object p1
.end method

.method private generateHdmKey()[B
    .registers 8

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "encapsulatedKey":[B
    sget-object v1, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v2, "Generate HDM key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 210
    .local v1, "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 212
    .local v2, "token":J
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/hdm/HdmService;->isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    .line 213
    const/4 v4, 0x1

    const-string v6, "HDM"

    invoke-virtual {v1, v6, v4, v5}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v0

    goto :goto_2a

    .line 217
    :cond_22
    sget-object v4, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "generateHdmKey(): DRK is not valid"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    if-eqz v0, :cond_34

    array-length v4, v0

    if-nez v4, :cond_33

    goto :goto_34

    .line 226
    :cond_33
    return-object v0

    .line 223
    :cond_34
    :goto_34
    return-object v5
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 259
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 262
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method static native hdm_apply_policy([B[B[B[B[BZ)[B
.end method

.method static native hdm_delete_keys()I
.end method

.method static native hdm_get_id([B[BZ)[B
.end method

.method static native hdm_get_key()I
.end method

.method static native hdm_get_policy(Z[B[B)[B
.end method

.method static native hdm_kg_cmd(I)I
.end method

.method static native hdm_load()I
.end method

.method static native hdm_set_key([B)I
.end method

.method static native hdm_unload()I
.end method

.method private isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z
    .registers 5
    .param p1, "drkService"    # Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 98
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v2, "DRK failed in isAliveDeviceRootKeyService()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v1

    .line 102
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 103
    sget-object v0, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v2, "DRK failed in isExistDeviceRootKey()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1

    .line 107
    :cond_1e
    return v0
.end method

.method private releaseDrk()V
    .registers 8

    .line 243
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 245
    .local v1, "token":J
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v3

    .line 246
    .local v3, "drkResult":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    if-eqz v3, :cond_2a

    .line 249
    sget-object v4, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failure releasing drk service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2a
    return-void
.end method

.method private setHashImeiAndSerial()V
    .registers 9

    .line 129
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    const/4 v1, 0x0

    .line 132
    .local v1, "di":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 134
    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/hdm/HdmService;->isDeviceRootKeyValid(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 135
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v1

    goto :goto_21

    .line 137
    :cond_19
    sget-object v4, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setHashImeiAndSerial(): DRK is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    if-eqz v1, :cond_54

    .line 143
    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getImei()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    .line 144
    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->getSerial()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    .line 145
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 146
    .local v4, "s":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSerialNumber is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v4    # "s":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method private setImeis()V
    .registers 6

    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 115
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 117
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_24

    .line 118
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lez v3, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 119
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 122
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    return-void
.end method

.method private setMacAddress()V
    .registers 6

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/hdm/HdmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sem_wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 158
    .local v2, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    if-eqz v2, :cond_18

    .line 159
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    goto :goto_20

    .line 161
    :cond_18
    sget-object v3, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setMacAddress is failed on SemWifiManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    return-void
.end method

.method private setNwdInfo()Z
    .registers 4

    .line 171
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 172
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setHashImeiAndSerial()V

    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 175
    return v1

    .line 178
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 179
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 182
    return v1

    .line 186
    :cond_22
    iget-object v0, p0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    if-nez v0, :cond_27

    .line 187
    return v1

    .line 190
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private validateParameter(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "maxSize"    # I

    .line 305
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 658
    if-eqz p1, :cond_b

    .line 659
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_b

    .line 662
    :catch_6
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 664
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_b
    nop

    .line 665
    :goto_c
    return-void
.end method

.method public getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 417
    .local v1, "pureId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 418
    .local v2, "wrappedKey":[B
    const/4 v3, 0x0

    .line 419
    .local v3, "response":[B
    const/4 v4, 0x0

    .line 420
    .local v4, "hasKey":Z
    const/4 v5, 0x0

    .line 422
    .local v5, "isWrapped":Z
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getHdmId() on HdmService.java"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 426
    const/16 v6, 0x5f

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_24

    .line 427
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "parameter check failed"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-object v7

    .line 432
    :cond_24
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setImeis()V

    .line 433
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->setMacAddress()V

    .line 435
    iget-object v6, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    .line 436
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    goto :goto_43

    .line 438
    :cond_37
    iget-object v6, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    if-eqz v6, :cond_43

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_43

    .line 439
    iget-object v1, p0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 442
    :cond_43
    :goto_43
    if-eqz v1, :cond_112

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4d

    goto/16 :goto_112

    .line 447
    :cond_4d
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 448
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "hdm_load failure"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v7

    .line 452
    :cond_5c
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v8, "checking whether key is saved"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_key()I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_6c

    move v6, v8

    goto :goto_6d

    :cond_6c
    const/4 v6, 0x0

    :goto_6d
    move v4, v6

    .line 455
    if-nez v4, :cond_95

    .line 456
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "no key, generate"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object v2

    .line 459
    if-eqz v2, :cond_8c

    .line 460
    invoke-static {v2}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_set_key([B)I

    move-result v0

    .line 462
    if-eqz v0, :cond_9e

    .line 463
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v9, "Failed to write DRK"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 466
    :cond_8c
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateHdmKey returned null"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 470
    :cond_95
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "found key, no need to generate"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v5, 0x1

    .line 474
    :cond_9e
    :goto_9e
    const-string v6, "deleteHdmKey failure"

    if-nez v4, :cond_b8

    if-nez v2, :cond_b8

    .line 475
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "wrappedKey is null, delete HDM key for a new try"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result v9

    if-nez v9, :cond_da

    .line 478
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 482
    :cond_b8
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v10, "HDM TLC call!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 484
    .local v9, "token":J
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 485
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {p2, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    .line 484
    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_id([B[BZ)[B

    move-result-object v3

    .line 486
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    .end local v9    # "token":J
    :cond_da
    :goto_da
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result v9

    if-eqz v9, :cond_e8

    .line 490
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "hdm_unload failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_e8
    if-nez v5, :cond_ed

    .line 494
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    .line 497
    :cond_ed
    if-nez v3, :cond_102

    .line 498
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "hdm_get_id Fail"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result v9

    if-nez v9, :cond_102

    .line 501
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_102
    if-eqz v3, :cond_111

    array-length v6, v3

    if-le v6, v8, :cond_111

    .line 506
    new-instance v6, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v6

    .line 509
    :cond_111
    return-object v7

    .line 443
    :cond_112
    :goto_112
    sget-object v6, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getHdmId Fail to get device ID"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v7
.end method

.method public getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 524
    .local v1, "hasKey":Z
    const/4 v2, 0x0

    .line 525
    .local v2, "isWrapped":Z
    const/4 v3, 0x0

    .line 526
    .local v3, "wrappedKey":[B
    const/4 v4, 0x0

    .line 528
    .local v4, "response":[B
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getHdmPolicy() on HdmService.java"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 532
    const/16 v5, 0x5f

    invoke-direct {p0, p2, v5}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_23

    .line 533
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parameter check failed for requestId"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-object v6

    .line 537
    :cond_23
    const/16 v5, 0x28

    invoke-direct {p0, p3, v5}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 538
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parameter check failed for serviceName"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-object v6

    .line 542
    :cond_34
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result v5

    if-eqz v5, :cond_43

    .line 543
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "hdm_load failure"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v6

    .line 547
    :cond_43
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v7, "checking whether key is saved"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_key()I

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_53

    move v5, v7

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    move v1, v5

    .line 549
    if-nez v1, :cond_77

    .line 550
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "no key, generate"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object v3

    .line 552
    if-eqz v3, :cond_73

    .line 553
    invoke-static {v3}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_set_key([B)I

    move-result v0

    .line 554
    if-eqz v0, :cond_78

    .line 555
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v8, "Failed to write DRK"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 558
    :cond_73
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    .line 559
    return-object v6

    .line 562
    :cond_77
    const/4 v2, 0x1

    .line 565
    :cond_78
    :goto_78
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 566
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 565
    invoke-static {v2, v5, v8}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_policy(Z[B[B)[B

    move-result-object v4

    .line 568
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result v5

    if-eqz v5, :cond_9a

    .line 569
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "hdm_unload failure"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_9a
    if-nez v2, :cond_9f

    .line 573
    invoke-direct {p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    .line 576
    :cond_9f
    if-eqz v4, :cond_ae

    array-length v5, v4

    if-le v5, v7, :cond_ae

    .line 577
    new-instance v5, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v5

    .line 579
    :cond_ae
    sget-object v5, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "response == null or len <= 1"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-object v6
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 650
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 628
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 642
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 635
    return-void
.end method

.method public setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hdmPolicy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 319
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 320
    .local v3, "wrappedKey":[B
    const/4 v4, 0x0

    .line 321
    .local v4, "response":[B
    const/4 v5, 0x0

    .line 322
    .local v5, "hasKey":Z
    const/4 v6, 0x0

    .line 324
    .local v6, "isWrapped":Z
    sget-object v7, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setHdmPolicy() on HdmService.java"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceOwnerOnlyHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v7

    .line 328
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v7, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/16 v8, 0x2000

    invoke-direct {v0, v1, v8}, Lcom/android/server/enterprise/hdm/HdmService;->validateParameter(Ljava/lang/String;I)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_27

    .line 329
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "parameter check failed"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v9

    .line 334
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->setNwdInfo()Z

    move-result v8

    if-nez v8, :cond_36

    .line 335
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "setNwdInfo failed"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v4, 0x0

    .line 339
    :cond_36
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result v8

    if-eqz v8, :cond_45

    .line 340
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "hdm_load failure"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v9

    .line 344
    :cond_45
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v10, "checking whether key is saved"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_get_key()I

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_55

    move v8, v10

    goto :goto_56

    :cond_55
    const/4 v8, 0x0

    :goto_56
    move v5, v8

    .line 347
    if-nez v5, :cond_7e

    .line 348
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "no key, generate"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->generateHdmKey()[B

    move-result-object v3

    .line 351
    if-eqz v3, :cond_75

    .line 352
    invoke-static {v3}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_set_key([B)I

    move-result v2

    .line 354
    if-eqz v2, :cond_87

    .line 355
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v11, "Failed to write DRK"

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 358
    :cond_75
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "generateHdmKey returned null"

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 362
    :cond_7e
    sget-object v8, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "found key, no need to generate"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v6, 0x1

    .line 366
    :cond_87
    :goto_87
    const-string v8, "deleteHdmKey failure"

    if-nez v5, :cond_a1

    if-nez v3, :cond_a1

    .line 367
    sget-object v11, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "wrappedKey is null, delete HDM key for a new try"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result v11

    if-nez v11, :cond_d5

    .line 370
    sget-object v11, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 374
    :cond_a1
    sget-object v11, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v12, "HDM TLC call!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 376
    .local v17, "token":J
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/enterprise/hdm/HdmService;->mSerialNumber:[B

    iget-object v13, v0, Lcom/android/server/enterprise/hdm/HdmService;->mImei0:Ljava/lang/String;

    .line 377
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/enterprise/hdm/HdmService;->mHashImei:[B

    iget-object v15, v0, Lcom/android/server/enterprise/hdm/HdmService;->mMacAddress:Ljava/lang/String;

    .line 378
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    .line 376
    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_apply_policy([B[B[B[B[BZ)[B

    move-result-object v4

    .line 379
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    .end local v17    # "token":J
    :cond_d5
    :goto_d5
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result v9

    if-eqz v9, :cond_e3

    .line 383
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "hdm_unload failure"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_e3
    if-nez v6, :cond_e8

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->releaseDrk()V

    .line 390
    :cond_e8
    if-nez v4, :cond_fd

    .line 391
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "hdm_apply_policy Fail"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/hdm/HdmService;->deleteHdmKey()Z

    move-result v9

    if-nez v9, :cond_fd

    .line 394
    sget-object v9, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_fd
    if-eqz v4, :cond_10c

    array-length v8, v4

    if-le v8, v10, :cond_10c

    .line 399
    new-instance v8, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v8

    .line 402
    :cond_10c
    const/4 v8, 0x0

    return-object v8
.end method

.method public setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "nonce"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "ret":I
    sget-object v1, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setHdmTaCmd() on HdmService.java"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/hdm/HdmService;->enforceHDMPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 600
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_load()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 601
    sget-object v1, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hdm_load failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v1, -0x1

    return v1

    .line 605
    :cond_1d
    sget-object v1, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string v2, "HDM TLC call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 607
    .local v1, "token":J
    invoke-static {p2}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_kg_cmd(I)I

    move-result v0

    .line 608
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    invoke-static {}, Lcom/android/server/enterprise/hdm/HdmService;->hdm_unload()I

    move-result v3

    if-eqz v3, :cond_3d

    .line 611
    sget-object v3, Lcom/android/server/enterprise/hdm/HdmService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hdm_unload failure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_3d
    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 621
    return-void
.end method
