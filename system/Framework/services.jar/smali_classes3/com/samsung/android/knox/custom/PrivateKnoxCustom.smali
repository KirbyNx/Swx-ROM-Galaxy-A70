.class public Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field static final KNOX_CUSTOM_TRUE:I = 0x8

.field static final PARAM_BUF_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field static mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->DEBUG:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method private enforceSystemPermission()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 97
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 82
    :cond_e
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 78
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private readBooleanDataValue(I)Z
    .registers 9
    .param p1, "index"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 114
    .local v1, "token":J
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v3

    .line 115
    .local v3, "value":[B
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    if-nez v3, :cond_f

    .line 119
    return v0

    .line 123
    :cond_f
    const/16 v4, 0x1f

    aget-byte v4, v3, v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_36

    .line 125
    const/16 v4, 0x1e

    const/16 v5, 0x8

    if-ne p1, v5, :cond_27

    .line 126
    aget-byte v6, v3, v5

    if-ne v6, v5, :cond_27

    aget-byte v6, v3, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_27

    .line 127
    const/4 v0, 0x1

    .line 131
    :cond_27
    const/16 v6, 0x9

    if-ne p1, v6, :cond_36

    .line 132
    aget-byte v6, v3, v6

    if-ne v6, v5, :cond_36

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_36

    .line 133
    const/4 v0, 0x1

    .line 138
    :cond_36
    return v0
.end method

.method private native readParamData()[B
.end method

.method private writeBooleanDataValue(IZ)Z
    .registers 15
    .param p1, "index"    # I
    .param p2, "set_true"    # Z

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":Z
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 144
    .local v1, "value":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 145
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 147
    .local v3, "token":J
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v5

    .line 151
    .local v5, "previousValue":[B
    const/16 v6, 0x1f

    aget-byte v7, v5, v6

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/16 v10, 0x1e

    const/16 v11, 0x8

    if-ne v7, v8, :cond_2f

    .line 153
    aget-byte v7, v5, v11

    aput-byte v7, v1, v11

    .line 154
    aget-byte v7, v5, v9

    aput-byte v7, v1, v9

    .line 155
    aget-byte v7, v5, v10

    aput-byte v7, v1, v10

    goto :goto_38

    .line 158
    :cond_2f
    const/16 v7, 0x17

    aput-byte v7, v1, v11

    .line 159
    const/4 v7, 0x0

    aput-byte v7, v1, v9

    .line 160
    aput-byte v7, v1, v10

    .line 163
    :goto_38
    if-eqz p2, :cond_3d

    .line 164
    aput-byte v11, v1, p1

    goto :goto_40

    .line 166
    :cond_3d
    const/4 v7, 0x7

    aput-byte v7, v1, p1

    .line 169
    :goto_40
    aput-byte v8, v1, v6

    .line 170
    if-ne p1, v11, :cond_4b

    .line 171
    aget-byte v6, v1, v10

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v10

    .line 173
    :cond_4b
    if-ne p1, v9, :cond_54

    .line 174
    aget-byte v6, v1, v10

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v1, v10

    .line 177
    :cond_54
    invoke-direct {p0, v1}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeParamData([B)Z

    move-result v0

    .line 178
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    return v0
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public isKnoxCustomAutoStartUpEnabled()Z
    .registers 3

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "ret":Z
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    move-result v0

    .line 218
    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->enforceSystemPermission()I

    move-result v1

    .line 194
    .local v1, "callingUid":I
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z

    move-result v2

    .line 196
    .local v2, "currentState":Z
    const/16 v3, 0x8

    if-eqz p1, :cond_15

    .line 197
    if-nez v2, :cond_1c

    .line 198
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v0

    goto :goto_1c

    .line 201
    :cond_15
    if-eqz v2, :cond_1c

    .line 202
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v0

    .line 205
    :cond_1c
    :goto_1c
    return v0
.end method
