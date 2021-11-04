.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
.super Ljava/lang/Object;
.source "KnoxVpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$ProfileState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FW-KnoxVpnHelper"

.field private static mContext:Landroid/content/Context;

.field private static mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private static mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field private final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 110
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    .line 112
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 114
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 122
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 118
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 120
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 135
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 160
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 118
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 120
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 135
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 153
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 155
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 156
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 2144
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2145
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 2146
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_26

    .line 2147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_26
    goto :goto_d

    .line 2149
    :cond_27
    return-object v0
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 4

    .line 163
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2f

    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_2f

    .line 166
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 167
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConnectionService value is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW-KnoxVpnHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2f
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v1, :cond_e

    .line 140
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 142
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 137
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 1

    .line 146
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_c

    .line 147
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 149
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .line 174
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 175
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 176
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_13

    .line 177
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 180
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 184
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1189
    const/4 v0, 0x0

    .line 1191
    .local v0, "result":Z
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "profileName"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v2, "packageUid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v3, "vpnExemptInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_28

    move v0, v2

    .line 1198
    .end local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_43

    .line 1196
    :catch_28
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addExemptedListToDatabase : Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return v0
.end method

.method protected addOrRemoveAppsFromBatteryOptimization(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "update"    # Z

    .line 1995
    if-eqz p2, :cond_b

    const-string v0, "com.samsung.sVpn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1996
    return-void

    .line 1998
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2000
    .local v0, "token":J
    const-string v2, "deviceidle"

    const-string/jumbo v3, "power"

    if-eqz p3, :cond_39

    .line 2001
    :try_start_16
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 2002
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v4, :cond_38

    .line 2003
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 2004
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v3, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 2005
    nop

    .line 2006
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2005
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    .line 2007
    .local v2, "dic":Landroid/os/IDeviceIdleController;
    invoke-interface {v2, p2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 2010
    .end local v2    # "dic":Landroid/os/IDeviceIdleController;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_38
    goto :goto_5a

    .line 2011
    :cond_39
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 2012
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v3, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 2013
    nop

    .line 2014
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2013
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    .line 2015
    .restart local v2    # "dic":Landroid/os/IDeviceIdleController;
    invoke-interface {v2, p2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_53} :catch_59
    .catchall {:try_start_16 .. :try_end_53} :catchall_54

    goto :goto_5a

    .line 2021
    .end local v2    # "dic":Landroid/os/IDeviceIdleController;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :catchall_54
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    throw v2

    .line 2018
    :catch_59
    move-exception v2

    .line 2021
    :cond_5a
    :goto_5a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    nop

    .line 2023
    return-void
.end method

.method protected addOrRemoveSystemAppFromBatteryOptimization(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "update"    # Z

    .line 1960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1962
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1963
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const-string v3, "android"

    invoke-interface {v2, v3, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_6e
    .catchall {:try_start_4 .. :try_end_e} :catchall_69

    if-eqz v3, :cond_14

    .line 1989
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1964
    return-void

    .line 1966
    :cond_14
    const-string v3, "deviceidle"

    const-string/jumbo v4, "power"

    if-eqz p3, :cond_4e

    .line 1967
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 1968
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v5, :cond_4d

    .line 1969
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v6, v7, :cond_33

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v6, v7, :cond_4d

    .line 1970
    :cond_33
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1971
    .local v4, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v4, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 1972
    nop

    .line 1973
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1972
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v3

    .line 1974
    .local v3, "dic":Landroid/os/IDeviceIdleController;
    invoke-interface {v3, p2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 1978
    .end local v3    # "dic":Landroid/os/IDeviceIdleController;
    .end local v4    # "powerManager":Landroid/os/PowerManager;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_4d
    goto :goto_6f

    .line 1979
    :cond_4e
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1980
    .restart local v4    # "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v4, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1981
    nop

    .line 1982
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1981
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v3

    .line 1983
    .restart local v3    # "dic":Landroid/os/IDeviceIdleController;
    invoke-interface {v3, p2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_68} :catch_6e
    .catchall {:try_start_1b .. :try_end_68} :catchall_69

    goto :goto_6f

    .line 1989
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "dic":Landroid/os/IDeviceIdleController;
    .end local v4    # "powerManager":Landroid/os/PowerManager;
    :catchall_69
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1990
    throw v2

    .line 1986
    :catch_6e
    move-exception v2

    .line 1989
    :cond_6f
    :goto_6f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1990
    nop

    .line 1991
    return-void
.end method

.method protected addOrRemoveSystemAppFromDataSaverWhitelist(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .line 2027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2029
    .local v0, "token":J
    if-eqz p3, :cond_26

    .line 2030
    :try_start_6
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 2031
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_25

    .line 2032
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v3, v4, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, v4, :cond_25

    .line 2033
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, p3, p2}, Landroid/os/INetworkManagementService;->addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V

    .line 2036
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_25
    goto :goto_2d

    .line 2037
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p3, p2}, Landroid/os/INetworkManagementService;->addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_32

    .line 2042
    :goto_2d
    nop

    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    goto :goto_3c

    .line 2039
    :catchall_32
    move-exception v2

    .line 2040
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_33
    const-string v3, "FW-KnoxVpnHelper"

    const-string v4, "No permission to update the data-saver list"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3d

    .line 2042
    nop

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_2e

    .line 2044
    :goto_3c
    return-void

    .line 2042
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    throw v2
.end method

.method public addVpnProfileToDatabase(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Z
    .registers 31
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .param p3, "profileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 365
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const-string v4, "FW-KnoxVpnHelper"

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "jsonProfile value is <-->"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_21
    iget v5, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 367
    .local v5, "adminId":I
    iget-object v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 368
    .local v6, "vendorName":Ljava/lang/String;
    iget v7, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 369
    .local v7, "personaId":I
    invoke-virtual {v1, v7, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, "vendorNameWithCid":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "profileName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 371
    .local v10, "protocolType":Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, "routeType":I
    const/4 v12, 0x0

    .line 372
    .local v12, "activateState":I
    const/4 v0, -0x1

    .local v0, "chainingEnabled":I
    const/4 v13, 0x0

    .line 373
    .local v13, "uidPidSearchEnabled":I
    const/4 v14, -0x1

    .line 374
    .local v14, "vpnServiceType":I
    const/4 v15, -0x1

    .line 375
    .local v15, "vpnConnectionType":I
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 376
    .local v16, "proxyServer":Ljava/lang/String;
    const/16 v17, -0x1

    .line 377
    .local v17, "proxyPort":I
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    .line 378
    .local v18, "pacurl":Ljava/lang/String;
    const/16 v19, 0x0

    .line 379
    .local v19, "proxy_auth":I
    const/16 v20, 0x0

    .line 381
    .local v20, "usb_tethering":I
    move/from16 v21, v0

    .end local v0    # "chainingEnabled":I
    .local v21, "chainingEnabled":I
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v0

    .line 382
    .local v22, "profileObj":Lorg/json/JSONObject;
    const-string v0, "KNOX_VPN_PARAMETERS"

    move-object/from16 v2, v22

    .end local v22    # "profileObj":Lorg/json/JSONObject;
    .local v2, "profileObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 383
    .local v3, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "profile_attribute"

    .end local v2    # "profileObj":Lorg/json/JSONObject;
    .restart local v22    # "profileObj":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 384
    .local v2, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "knox"

    move-object/from16 v23, v6

    .end local v6    # "vendorName":Ljava/lang/String;
    .local v23, "vendorName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 385
    .local v6, "knoxAttrObj":Lorg/json/JSONObject;
    const-string v0, "Inside addVpnProfileToDatabase <-->"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v6, :cond_1d1

    .line 387
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_6e

    const-string v0, "Inside knox specific AttrObj != null <-->"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_6e
    const-string v0, "chaining_enabled"

    move-object/from16 v24, v3

    .end local v3    # "parentAttrObj":Lorg/json/JSONObject;
    .local v24, "parentAttrObj":Lorg/json/JSONObject;
    const/4 v3, -0x1

    move-object/from16 v25, v9

    .end local v9    # "profileName":Ljava/lang/String;
    .local v25, "profileName":Ljava/lang/String;
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 389
    .end local v21    # "chainingEnabled":I
    .local v9, "chainingEnabled":I
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value for chainingEnabled <-->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_91
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    const-string/jumbo v3, "proxy-server"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .end local v16    # "proxyServer":Ljava/lang/String;
    .local v3, "proxyServer":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v9

    .end local v9    # "chainingEnabled":I
    .restart local v21    # "chainingEnabled":I
    const-string v9, "Value for proxyServer <-->"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .end local v21    # "chainingEnabled":I
    .restart local v9    # "chainingEnabled":I
    :cond_b5
    move/from16 v21, v9

    .line 392
    .end local v9    # "chainingEnabled":I
    .restart local v21    # "chainingEnabled":I
    :goto_b7
    const-string/jumbo v0, "proxy-port"

    const/4 v9, -0x1

    invoke-virtual {v6, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 393
    .end local v17    # "proxyPort":I
    .local v9, "proxyPort":I
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_da

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "proxyServer":Ljava/lang/String;
    .restart local v16    # "proxyServer":Ljava/lang/String;
    const-string v3, "Value for proxyPort <-->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .end local v16    # "proxyServer":Ljava/lang/String;
    .restart local v3    # "proxyServer":Ljava/lang/String;
    :cond_da
    move-object/from16 v16, v3

    .line 394
    .end local v3    # "proxyServer":Ljava/lang/String;
    .restart local v16    # "proxyServer":Ljava/lang/String;
    :goto_dc
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    const-string/jumbo v3, "pac-url"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    .end local v18    # "pacurl":Ljava/lang/String;
    .local v3, "pacurl":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_100

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v9

    .end local v9    # "proxyPort":I
    .restart local v17    # "proxyPort":I
    const-string v9, "Value for pacurl <-->"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .end local v17    # "proxyPort":I
    .restart local v9    # "proxyPort":I
    :cond_100
    move/from16 v17, v9

    .line 396
    .end local v9    # "proxyPort":I
    .restart local v17    # "proxyPort":I
    :goto_102
    const-string/jumbo v0, "proxy-auth"

    const/4 v9, 0x0

    move-object/from16 v18, v3

    .end local v3    # "pacurl":Ljava/lang/String;
    .restart local v18    # "pacurl":Ljava/lang/String;
    invoke-virtual {v6, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 397
    .end local v19    # "proxy_auth":I
    .local v3, "proxy_auth":I
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_124

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value for proxy_auth <-->"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_124
    const-string/jumbo v0, "uidpid_search_enabled"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 399
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_144

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value for uidPidSearchEnabled <-->"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_144
    const-string v0, "allow_usb_over_vpn_tethering"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 401
    .end local v20    # "usb_tethering":I
    .local v9, "usb_tethering":I
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_166

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "proxy_auth":I
    .restart local v19    # "proxy_auth":I
    const-string v3, "Value for usb_tethering <-->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_168

    .end local v19    # "proxy_auth":I
    .restart local v3    # "proxy_auth":I
    :cond_166
    move/from16 v19, v3

    .line 404
    .end local v3    # "proxy_auth":I
    .restart local v19    # "proxy_auth":I
    :goto_168
    :try_start_168
    const-string v0, "connectionType"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "connectionType":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_189

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_177} :catch_1ab

    move-object/from16 v26, v6

    .end local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v26, "knoxAttrObj":Lorg/json/JSONObject;
    :try_start_179
    const-string v6, "connection type value = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18b

    .end local v26    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    :cond_189
    move-object/from16 v26, v6

    .line 406
    .end local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v26    # "knoxAttrObj":Lorg/json/JSONObject;
    :goto_18b
    const-string/jumbo v3, "keepon"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 407
    const/4 v15, 0x0

    goto :goto_1a8

    .line 408
    :cond_19a
    const-string/jumbo v3, "ondemand"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1a5} :catch_1a9

    if-eqz v3, :cond_1a8

    .line 409
    const/4 v15, 0x1

    .line 414
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_1a8
    :goto_1a8
    goto :goto_1b0

    .line 412
    :catch_1a9
    move-exception v0

    goto :goto_1ae

    .end local v26    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    :catch_1ab
    move-exception v0

    move-object/from16 v26, v6

    .line 413
    .end local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v26    # "knoxAttrObj":Lorg/json/JSONObject;
    :goto_1ae
    const/4 v3, 0x0

    move v15, v3

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b0
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_1c8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value for vpnConnectionType <-->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1c8
    move/from16 v20, v9

    move-object/from16 v3, v16

    move-object/from16 v6, v18

    move/from16 v0, v21

    goto :goto_1dd

    .line 386
    .end local v24    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v25    # "profileName":Ljava/lang/String;
    .end local v26    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v3, "parentAttrObj":Lorg/json/JSONObject;
    .restart local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v9, "profileName":Ljava/lang/String;
    .restart local v20    # "usb_tethering":I
    :cond_1d1
    move-object/from16 v24, v3

    move-object/from16 v26, v6

    move-object/from16 v25, v9

    .end local v3    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v6    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v9    # "profileName":Ljava/lang/String;
    .restart local v24    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v25    # "profileName":Ljava/lang/String;
    .restart local v26    # "knoxAttrObj":Lorg/json/JSONObject;
    move-object/from16 v3, v16

    move-object/from16 v6, v18

    move/from16 v0, v21

    .line 418
    .end local v16    # "proxyServer":Ljava/lang/String;
    .end local v18    # "pacurl":Ljava/lang/String;
    .end local v21    # "chainingEnabled":I
    .local v0, "chainingEnabled":I
    .local v3, "proxyServer":Ljava/lang/String;
    .local v6, "pacurl":Ljava/lang/String;
    :goto_1dd
    const-string/jumbo v9, "profileName"

    move-object/from16 v16, v10

    .end local v10    # "protocolType":Ljava/lang/String;
    .local v16, "protocolType":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 419
    .end local v25    # "profileName":Ljava/lang/String;
    .local v10, "profileName":Ljava/lang/String;
    move/from16 v18, v11

    .end local v11    # "routeType":I
    .local v18, "routeType":I
    const-string/jumbo v11, "vpn_type"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 420
    .end local v16    # "protocolType":Ljava/lang/String;
    .local v11, "protocolType":Ljava/lang/String;
    move/from16 v16, v12

    .end local v12    # "activateState":I
    .local v16, "activateState":I
    const-string/jumbo v12, "vpn_route_type"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 422
    .end local v18    # "routeType":I
    .local v12, "routeType":I
    if-nez v12, :cond_1fc

    .line 423
    const/16 v16, 0x1

    .line 426
    :cond_1fc
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v21, v18

    .line 427
    .local v21, "cv":Landroid/content/ContentValues;
    move-object/from16 v18, v2

    move-object/from16 v2, v21

    .end local v21    # "cv":Landroid/content/ContentValues;
    .local v2, "cv":Landroid/content/ContentValues;
    .local v18, "profileAttrObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v21, v5

    .end local v5    # "adminId":I
    .local v21, "adminId":I
    const-string v5, "adminUid"

    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "personaId"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string/jumbo v5, "vendorName"

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "profileId"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string/jumbo v5, "protocolType"

    invoke-virtual {v2, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "defaultRoute"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "activateState"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "vpnServiceType"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "chainingEnabled"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "uidPidSearch"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "vpnConnectionType"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string/jumbo v5, "proxyServer"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "proxyPort"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string/jumbo v5, "pacurl"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "proxyAuth"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "usbTethering"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    iget-object v5, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v9, "VpnProfileInfo"

    move/from16 v25, v0

    .end local v0    # "chainingEnabled":I
    .local v25, "chainingEnabled":I
    const/4 v0, 0x0

    invoke-virtual {v5, v9, v0, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 448
    .local v0, "status":Z
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v5, :cond_2c4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add profile in database : status is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "profile Name is"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_2c4
    return v0
.end method

.method public addVpnProfileToMap(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Z
    .registers 38
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .param p3, "profileId"    # I

    .line 453
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "FW-KnoxVpnHelper"

    iget v4, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 454
    .local v4, "adminId":I
    iget-object v5, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 455
    .local v5, "vendorName":Ljava/lang/String;
    iget v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 456
    .local v6, "personaId":I
    invoke-virtual {v1, v6, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, "vendorNameWithCid":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "profileName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 458
    .local v9, "protocolType":Ljava/lang/String;
    const/4 v10, -0x1

    .local v10, "routeType":I
    const/4 v11, 0x0

    .line 459
    .local v11, "activateState":I
    const/4 v12, -0x1

    .local v12, "chainingEnabled":I
    const/4 v13, 0x0

    .line 460
    .local v13, "uidPidSearchEnabled":I
    const/4 v14, -0x1

    .line 461
    .local v14, "vpnConnectionType":I
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 462
    .local v15, "proxyServer":Ljava/lang/String;
    const/16 v16, -0x1

    .line 463
    .local v16, "proxyPort":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    .line 464
    .local v17, "proxy_username":Ljava/lang/String;
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    .line 465
    .local v18, "proxy_password":Ljava/lang/String;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    .line 466
    .local v19, "pacurl":Ljava/lang/String;
    const/16 v20, 0x0

    .line 467
    .local v20, "proxy_auth":I
    const/16 v21, 0x0

    .line 469
    .local v21, "usb_tethering":I
    :try_start_25
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v0

    .line 470
    .local v22, "profileObj":Lorg/json/JSONObject;
    const-string v0, "KNOX_VPN_PARAMETERS"

    move-object/from16 v2, v22

    .end local v22    # "profileObj":Lorg/json/JSONObject;
    .local v2, "profileObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v22, v0

    .line 471
    .local v22, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "profile_attribute"

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    .end local v22    # "parentAttrObj":Lorg/json/JSONObject;
    .local v2, "parentAttrObj":Lorg/json/JSONObject;
    .local v23, "profileObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v22, v0

    .line 472
    .local v22, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "knox"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4c} :catch_3b5

    move-object/from16 v24, v0

    .line 473
    .local v24, "knoxAttrObj":Lorg/json/JSONObject;
    move-object/from16 v25, v2

    move-object/from16 v2, v24

    .end local v24    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v2, "knoxAttrObj":Lorg/json/JSONObject;
    .local v25, "parentAttrObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_1c1

    .line 475
    :try_start_54
    const-string v0, "chaining_enabled"
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_56} :catch_1b6

    move-object/from16 v24, v5

    .end local v5    # "vendorName":Ljava/lang/String;
    .local v24, "vendorName":Ljava/lang/String;
    const/4 v5, -0x1

    :try_start_59
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v12, v0

    .line 476
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_1ad

    if-eqz v0, :cond_7e

    :try_start_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value for chainingEnabled <-->"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_76} :catch_77

    goto :goto_7e

    .line 535
    .end local v2    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileObj":Lorg/json/JSONObject;
    .end local v25    # "parentAttrObj":Lorg/json/JSONObject;
    :catch_77
    move-exception v0

    move-object/from16 v31, v3

    move/from16 v22, v4

    goto/16 :goto_3c4

    .line 477
    .restart local v2    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v23    # "profileObj":Lorg/json/JSONObject;
    .restart local v25    # "parentAttrObj":Lorg/json/JSONObject;
    :cond_7e
    :goto_7e
    :try_start_7e
    const-string/jumbo v0, "proxy-server"

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 478
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8a} :catch_1ad

    if-eqz v0, :cond_a0

    :try_start_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value for proxyServer <-->"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a0} :catch_77

    .line 479
    :cond_a0
    :try_start_a0
    const-string/jumbo v0, "proxy-port"

    const/4 v5, -0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a8} :catch_1ad

    move v5, v0

    .line 480
    .end local v16    # "proxyPort":I
    .local v5, "proxyPort":I
    :try_start_a9
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ab} :catch_1a2

    if-eqz v0, :cond_da

    :try_start_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b2} :catch_cf

    move-object/from16 v26, v8

    .end local v8    # "profileName":Ljava/lang/String;
    .local v26, "profileName":Ljava/lang/String;
    :try_start_b4
    const-string v8, "Value for proxyPort <-->"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c3} :catch_c4

    goto :goto_dc

    .line 535
    .end local v2    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileObj":Lorg/json/JSONObject;
    .end local v25    # "parentAttrObj":Lorg/json/JSONObject;
    :catch_c4
    move-exception v0

    move-object/from16 v31, v3

    move/from16 v22, v4

    move/from16 v16, v5

    move-object/from16 v8, v26

    goto/16 :goto_3c4

    .end local v26    # "profileName":Ljava/lang/String;
    .restart local v8    # "profileName":Ljava/lang/String;
    :catch_cf
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v31, v3

    move/from16 v22, v4

    move/from16 v16, v5

    .end local v8    # "profileName":Ljava/lang/String;
    .restart local v26    # "profileName":Ljava/lang/String;
    goto/16 :goto_3c4

    .line 480
    .end local v26    # "profileName":Ljava/lang/String;
    .restart local v2    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v8    # "profileName":Ljava/lang/String;
    .restart local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v23    # "profileObj":Lorg/json/JSONObject;
    .restart local v25    # "parentAttrObj":Lorg/json/JSONObject;
    :cond_da
    move-object/from16 v26, v8

    .line 481
    .end local v8    # "profileName":Ljava/lang/String;
    .restart local v26    # "profileName":Ljava/lang/String;
    :goto_dc
    :try_start_dc
    const-string/jumbo v0, "proxy-username"

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 482
    const-string/jumbo v0, "proxy-password"

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 483
    const-string/jumbo v0, "pac-url"

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 484
    const-string/jumbo v0, "proxy-auth"

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_105} :catch_197

    move/from16 v20, v0

    .line 487
    :try_start_107
    const-string v0, "connectionType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "connectionType":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v8, :cond_128

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_116} :catch_14a

    move/from16 v16, v5

    .end local v5    # "proxyPort":I
    .restart local v16    # "proxyPort":I
    :try_start_118
    const-string v5, "connection type value = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .end local v16    # "proxyPort":I
    .restart local v5    # "proxyPort":I
    :cond_128
    move/from16 v16, v5

    .line 490
    .end local v5    # "proxyPort":I
    .restart local v16    # "proxyPort":I
    :goto_12a
    const-string/jumbo v5, "keepon"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    .line 491
    const/4 v14, 0x0

    goto :goto_147

    .line 492
    :cond_139
    const-string/jumbo v5, "ondemand"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_144} :catch_148

    if-eqz v5, :cond_147

    .line 493
    const/4 v14, 0x1

    .line 498
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_147
    :goto_147
    goto :goto_14f

    .line 496
    :catch_148
    move-exception v0

    goto :goto_14d

    .end local v16    # "proxyPort":I
    .restart local v5    # "proxyPort":I
    :catch_14a
    move-exception v0

    move/from16 v16, v5

    .line 497
    .end local v5    # "proxyPort":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "proxyPort":I
    :goto_14d
    const/4 v5, 0x0

    .end local v14    # "vpnConnectionType":I
    .local v5, "vpnConnectionType":I
    move v14, v5

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "vpnConnectionType":I
    .restart local v14    # "vpnConnectionType":I
    :goto_14f
    :try_start_14f
    const-string/jumbo v0, "uidpid_search_enabled"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v13, v0

    .line 500
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_170

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin has enabled id tracking feature in addVpnProfileToMap"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_170
    const-string v0, "allow_usb_over_vpn_tethering"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_177} :catch_18e

    move/from16 v21, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v5, v16

    move-object/from16 v8, v17

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    goto :goto_1d9

    .line 535
    .end local v2    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileObj":Lorg/json/JSONObject;
    .end local v25    # "parentAttrObj":Lorg/json/JSONObject;
    :catch_18e
    move-exception v0

    move-object/from16 v31, v3

    move/from16 v22, v4

    move-object/from16 v8, v26

    goto/16 :goto_3c4

    .end local v16    # "proxyPort":I
    .local v5, "proxyPort":I
    :catch_197
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v31, v3

    move/from16 v22, v4

    move-object/from16 v8, v26

    .end local v5    # "proxyPort":I
    .restart local v16    # "proxyPort":I
    goto/16 :goto_3c4

    .end local v16    # "proxyPort":I
    .end local v26    # "profileName":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    .restart local v8    # "profileName":Ljava/lang/String;
    :catch_1a2
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v26, v8

    move-object/from16 v31, v3

    move/from16 v22, v4

    .end local v5    # "proxyPort":I
    .end local v8    # "profileName":Ljava/lang/String;
    .restart local v16    # "proxyPort":I
    .restart local v26    # "profileName":Ljava/lang/String;
    goto/16 :goto_3c4

    .end local v26    # "profileName":Ljava/lang/String;
    .restart local v8    # "profileName":Ljava/lang/String;
    :catch_1ad
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v31, v3

    move/from16 v22, v4

    .end local v8    # "profileName":Ljava/lang/String;
    .restart local v26    # "profileName":Ljava/lang/String;
    goto/16 :goto_3c4

    .end local v24    # "vendorName":Ljava/lang/String;
    .end local v26    # "profileName":Ljava/lang/String;
    .local v5, "vendorName":Ljava/lang/String;
    .restart local v8    # "profileName":Ljava/lang/String;
    :catch_1b6
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v26, v8

    move-object/from16 v31, v3

    move/from16 v22, v4

    .end local v5    # "vendorName":Ljava/lang/String;
    .end local v8    # "profileName":Ljava/lang/String;
    .restart local v24    # "vendorName":Ljava/lang/String;
    .restart local v26    # "profileName":Ljava/lang/String;
    goto/16 :goto_3c4

    .line 473
    .end local v24    # "vendorName":Ljava/lang/String;
    .end local v26    # "profileName":Ljava/lang/String;
    .restart local v2    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v5    # "vendorName":Ljava/lang/String;
    .restart local v8    # "profileName":Ljava/lang/String;
    .restart local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v23    # "profileObj":Lorg/json/JSONObject;
    .restart local v25    # "parentAttrObj":Lorg/json/JSONObject;
    :cond_1c1
    move-object/from16 v24, v5

    move-object/from16 v26, v8

    .end local v5    # "vendorName":Ljava/lang/String;
    .end local v8    # "profileName":Ljava/lang/String;
    .restart local v24    # "vendorName":Ljava/lang/String;
    .restart local v26    # "profileName":Ljava/lang/String;
    move-object/from16 v27, v2

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v5, v16

    move-object/from16 v8, v17

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    .line 503
    .end local v16    # "proxyPort":I
    .end local v17    # "proxy_username":Ljava/lang/String;
    .end local v18    # "proxy_password":Ljava/lang/String;
    .end local v19    # "pacurl":Ljava/lang/String;
    .end local v20    # "proxy_auth":I
    .end local v21    # "usb_tethering":I
    .local v2, "proxy_password":Ljava/lang/String;
    .local v5, "proxyPort":I
    .local v8, "proxy_username":Ljava/lang/String;
    .local v9, "pacurl":Ljava/lang/String;
    .local v10, "proxy_auth":I
    .local v11, "usb_tethering":I
    .local v27, "knoxAttrObj":Lorg/json/JSONObject;
    .local v28, "protocolType":Ljava/lang/String;
    .local v29, "routeType":I
    .local v30, "activateState":I
    :goto_1d9
    :try_start_1d9
    const-string/jumbo v0, "profileName"
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1dc} :catch_394

    move-object/from16 v31, v3

    move-object/from16 v3, v22

    .end local v22    # "profileAttrObj":Lorg/json/JSONObject;
    .local v3, "profileAttrObj":Lorg/json/JSONObject;
    :try_start_1e0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e4} :catch_390

    move-object/from16 v16, v0

    .line 504
    .end local v26    # "profileName":Ljava/lang/String;
    .local v16, "profileName":Ljava/lang/String;
    :try_start_1e6
    const-string/jumbo v0, "vpn_type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1ed} :catch_370

    move-object/from16 v17, v0

    .line 505
    .end local v28    # "protocolType":Ljava/lang/String;
    .local v17, "protocolType":Ljava/lang/String;
    :try_start_1ef
    const-string/jumbo v0, "vpn_route_type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f6} :catch_34e

    move/from16 v18, v0

    .line 506
    .end local v29    # "routeType":I
    .local v18, "routeType":I
    move-object/from16 v19, v3

    move/from16 v3, v18

    .end local v18    # "routeType":I
    .local v3, "routeType":I
    .local v19, "profileAttrObj":Lorg/json/JSONObject;
    if-nez v3, :cond_203

    .line 507
    const/4 v0, 0x1

    move/from16 v18, v10

    move v10, v0

    .end local v30    # "activateState":I
    .local v0, "activateState":I
    goto :goto_207

    .line 506
    .end local v0    # "activateState":I
    .restart local v30    # "activateState":I
    :cond_203
    move/from16 v18, v10

    move/from16 v10, v30

    .line 509
    .end local v30    # "activateState":I
    .local v10, "activateState":I
    .local v18, "proxy_auth":I
    :goto_207
    move/from16 v20, v11

    move-object/from16 v11, v16

    .end local v16    # "profileName":Ljava/lang/String;
    .local v11, "profileName":Ljava/lang/String;
    .local v20, "usb_tethering":I
    if-eqz v11, :cond_341

    .line 510
    :try_start_20d
    new-instance v16, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;-><init>()V

    move-object/from16 v21, v16

    .line 511
    .local v21, "entry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    move-object/from16 v0, v21

    .end local v21    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v0, "entry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setAdminId(I)V

    .line 513
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPersonaId(I)V

    .line 514
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_222} :catch_31f

    .line 515
    move/from16 v22, v4

    .end local v4    # "adminId":I
    .local v22, "adminId":I
    :try_start_224
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUidForPackageName(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorUid(I)V

    .line 516
    move/from16 v4, p3

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileId(I)V
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_230} :catch_2ff

    .line 517
    move-object/from16 v4, v17

    .end local v17    # "protocolType":Ljava/lang/String;
    .local v4, "protocolType":Ljava/lang/String;
    :try_start_232
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V

    .line 519
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setRouteType(I)V
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23b} :catch_2e1

    .line 521
    move/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "routeType":I
    .local v17, "routeType":I
    :try_start_23e
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 522
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnConnectionType(I)V

    .line 523
    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setChainingEnabled(I)V

    .line 524
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUidPidSearchEnabled(I)V

    .line 525
    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyServer(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyPort(I)V

    .line 527
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyUsername(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyPassword(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPacurl(Ljava/lang/String;)V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_259} :catch_2c5

    .line 530
    move/from16 v3, v20

    .end local v20    # "usb_tethering":I
    .local v3, "usb_tethering":I
    :try_start_25b
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTethering(I)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_25e} :catch_2ab

    .line 531
    if-eqz v8, :cond_269

    if-eqz v2, :cond_269

    move-object/from16 v20, v2

    const/4 v2, 0x1

    .end local v2    # "proxy_password":Ljava/lang/String;
    .local v20, "proxy_password":Ljava/lang/String;
    :try_start_265
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyCredentialsPreDefined(Z)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_268} :catch_279

    goto :goto_26b

    .end local v20    # "proxy_password":Ljava/lang/String;
    .restart local v2    # "proxy_password":Ljava/lang/String;
    :cond_269
    move-object/from16 v20, v2

    .line 532
    .end local v2    # "proxy_password":Ljava/lang/String;
    .restart local v20    # "proxy_password":Ljava/lang/String;
    :goto_26b
    move/from16 v2, v18

    .end local v18    # "proxy_auth":I
    .local v2, "proxy_auth":I
    :try_start_26d
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPacAuthRequired(I)V
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_270} :catch_291

    .line 533
    move/from16 v18, v2

    .end local v2    # "proxy_auth":I
    .restart local v18    # "proxy_auth":I
    :try_start_272
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_277} :catch_279

    goto/16 :goto_34b

    .line 535
    .end local v0    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v19    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileObj":Lorg/json/JSONObject;
    .end local v25    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v27    # "knoxAttrObj":Lorg/json/JSONObject;
    :catch_279
    move-exception v0

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    goto/16 :goto_3c4

    .end local v18    # "proxy_auth":I
    .restart local v2    # "proxy_auth":I
    :catch_291
    move-exception v0

    move/from16 v18, v2

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    .end local v2    # "proxy_auth":I
    .restart local v18    # "proxy_auth":I
    goto/16 :goto_3c4

    .end local v20    # "proxy_password":Ljava/lang/String;
    .local v2, "proxy_password":Ljava/lang/String;
    :catch_2ab
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    .end local v2    # "proxy_password":Ljava/lang/String;
    .restart local v20    # "proxy_password":Ljava/lang/String;
    goto/16 :goto_3c4

    .end local v3    # "usb_tethering":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v20, "usb_tethering":I
    :catch_2c5
    move-exception v0

    move/from16 v3, v20

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    .end local v2    # "proxy_password":Ljava/lang/String;
    .restart local v3    # "usb_tethering":I
    .local v20, "proxy_password":Ljava/lang/String;
    goto/16 :goto_3c4

    .end local v17    # "routeType":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "routeType":I
    .local v20, "usb_tethering":I
    :catch_2e1
    move-exception v0

    move/from16 v17, v3

    move/from16 v3, v20

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    .end local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "usb_tethering":I
    .restart local v17    # "routeType":I
    .local v20, "proxy_password":Ljava/lang/String;
    goto/16 :goto_3c4

    .end local v4    # "protocolType":Ljava/lang/String;
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "routeType":I
    .local v17, "protocolType":Ljava/lang/String;
    .local v20, "usb_tethering":I
    :catch_2ff
    move-exception v0

    move-object/from16 v4, v17

    move/from16 v17, v3

    move/from16 v3, v20

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    .end local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "usb_tethering":I
    .restart local v4    # "protocolType":Ljava/lang/String;
    .local v17, "routeType":I
    .local v20, "proxy_password":Ljava/lang/String;
    goto/16 :goto_3c4

    .end local v22    # "adminId":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "routeType":I
    .local v4, "adminId":I
    .local v17, "protocolType":Ljava/lang/String;
    .local v20, "usb_tethering":I
    :catch_31f
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v4, v17

    move/from16 v17, v3

    move/from16 v3, v20

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v19, v9

    move-object v9, v4

    move/from16 v32, v17

    move-object/from16 v17, v8

    move-object v8, v11

    move v11, v10

    move/from16 v10, v32

    move-object/from16 v33, v20

    move/from16 v20, v18

    move-object/from16 v18, v33

    .end local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "usb_tethering":I
    .local v4, "protocolType":Ljava/lang/String;
    .local v17, "routeType":I
    .local v20, "proxy_password":Ljava/lang/String;
    .restart local v22    # "adminId":I
    goto/16 :goto_3c4

    .line 509
    .end local v22    # "adminId":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v3, "routeType":I
    .local v4, "adminId":I
    .local v17, "protocolType":Ljava/lang/String;
    .restart local v19    # "profileAttrObj":Lorg/json/JSONObject;
    .local v20, "usb_tethering":I
    .restart local v23    # "profileObj":Lorg/json/JSONObject;
    .restart local v25    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v27    # "knoxAttrObj":Lorg/json/JSONObject;
    :cond_341
    move/from16 v22, v4

    move-object/from16 v4, v17

    move/from16 v17, v3

    move/from16 v3, v20

    move-object/from16 v20, v2

    .line 538
    .end local v2    # "proxy_password":Ljava/lang/String;
    .end local v19    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileObj":Lorg/json/JSONObject;
    .end local v25    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v27    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v3, "usb_tethering":I
    .local v4, "protocolType":Ljava/lang/String;
    .local v17, "routeType":I
    .local v20, "proxy_password":Ljava/lang/String;
    .restart local v22    # "adminId":I
    :goto_34b
    nop

    .line 539
    const/4 v0, 0x1

    return v0

    .line 535
    .end local v3    # "usb_tethering":I
    .end local v18    # "proxy_auth":I
    .end local v20    # "proxy_password":Ljava/lang/String;
    .end local v22    # "adminId":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v4, "adminId":I
    .local v10, "proxy_auth":I
    .local v11, "usb_tethering":I
    .restart local v16    # "profileName":Ljava/lang/String;
    .local v17, "protocolType":Ljava/lang/String;
    .restart local v29    # "routeType":I
    .restart local v30    # "activateState":I
    :catch_34e
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v22, v4

    move/from16 v18, v10

    move v3, v11

    move-object/from16 v11, v16

    move-object/from16 v4, v17

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object v8, v11

    move/from16 v10, v29

    move/from16 v11, v30

    move-object v9, v4

    move-object/from16 v32, v20

    move/from16 v20, v18

    move-object/from16 v18, v32

    .end local v2    # "proxy_password":Ljava/lang/String;
    .end local v10    # "proxy_auth":I
    .end local v16    # "profileName":Ljava/lang/String;
    .end local v17    # "protocolType":Ljava/lang/String;
    .restart local v3    # "usb_tethering":I
    .local v4, "protocolType":Ljava/lang/String;
    .local v11, "profileName":Ljava/lang/String;
    .restart local v18    # "proxy_auth":I
    .restart local v20    # "proxy_password":Ljava/lang/String;
    .restart local v22    # "adminId":I
    goto/16 :goto_3c4

    .end local v3    # "usb_tethering":I
    .end local v18    # "proxy_auth":I
    .end local v20    # "proxy_password":Ljava/lang/String;
    .end local v22    # "adminId":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .local v4, "adminId":I
    .restart local v10    # "proxy_auth":I
    .local v11, "usb_tethering":I
    .restart local v16    # "profileName":Ljava/lang/String;
    .restart local v28    # "protocolType":Ljava/lang/String;
    :catch_370
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v22, v4

    move/from16 v18, v10

    move v3, v11

    move-object/from16 v11, v16

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object v8, v11

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v32, v20

    move/from16 v20, v18

    move-object/from16 v18, v32

    .end local v2    # "proxy_password":Ljava/lang/String;
    .end local v4    # "adminId":I
    .end local v10    # "proxy_auth":I
    .end local v16    # "profileName":Ljava/lang/String;
    .restart local v3    # "usb_tethering":I
    .local v11, "profileName":Ljava/lang/String;
    .restart local v18    # "proxy_auth":I
    .restart local v20    # "proxy_password":Ljava/lang/String;
    .restart local v22    # "adminId":I
    goto :goto_3c4

    .end local v3    # "usb_tethering":I
    .end local v18    # "proxy_auth":I
    .end local v20    # "proxy_password":Ljava/lang/String;
    .end local v22    # "adminId":I
    .restart local v2    # "proxy_password":Ljava/lang/String;
    .restart local v4    # "adminId":I
    .restart local v10    # "proxy_auth":I
    .local v11, "usb_tethering":I
    .restart local v26    # "profileName":Ljava/lang/String;
    :catch_390
    move-exception v0

    move-object/from16 v20, v2

    goto :goto_399

    :catch_394
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v31, v3

    :goto_399
    move/from16 v22, v4

    move/from16 v18, v10

    move v3, v11

    move/from16 v21, v3

    move/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v32, v20

    move/from16 v20, v18

    move-object/from16 v18, v32

    .end local v2    # "proxy_password":Ljava/lang/String;
    .end local v4    # "adminId":I
    .end local v10    # "proxy_auth":I
    .end local v11    # "usb_tethering":I
    .restart local v3    # "usb_tethering":I
    .restart local v18    # "proxy_auth":I
    .restart local v20    # "proxy_password":Ljava/lang/String;
    .restart local v22    # "adminId":I
    goto :goto_3c4

    .end local v3    # "usb_tethering":I
    .end local v22    # "adminId":I
    .end local v24    # "vendorName":Ljava/lang/String;
    .end local v26    # "profileName":Ljava/lang/String;
    .end local v28    # "protocolType":Ljava/lang/String;
    .end local v29    # "routeType":I
    .end local v30    # "activateState":I
    .restart local v4    # "adminId":I
    .local v5, "vendorName":Ljava/lang/String;
    .local v8, "profileName":Ljava/lang/String;
    .local v9, "protocolType":Ljava/lang/String;
    .local v10, "routeType":I
    .local v11, "activateState":I
    .local v16, "proxyPort":I
    .local v17, "proxy_username":Ljava/lang/String;
    .local v18, "proxy_password":Ljava/lang/String;
    .local v19, "pacurl":Ljava/lang/String;
    .local v20, "proxy_auth":I
    .local v21, "usb_tethering":I
    :catch_3b5
    move-exception v0

    move-object/from16 v31, v3

    move/from16 v22, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    .line 536
    .end local v4    # "adminId":I
    .end local v5    # "vendorName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "adminId":I
    .restart local v24    # "vendorName":Ljava/lang/String;
    :goto_3c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get profilename from json : Error parsing JSON \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    return v2
.end method

.method public chainingForAddAll(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 816
    const-string/jumbo v0, "packageName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chainingForAddAll: profileName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, "enableChaining":Z
    const/4 v4, 0x0

    .line 820
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "VpnPackageInfo"

    const-string/jumbo v7, "packageCid"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 824
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 820
    invoke-virtual {v5, v6, v7, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 828
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_b2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b2

    .line 829
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_b1

    .line 830
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_4f

    const-string v6, "chainingForAddAll: checkIfProfileHasChainingFeature value is true"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_4f
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 832
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v6, :cond_70

    .line 833
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chainingForAddAll: profile hashmap value is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_6f
    return v1

    .line 836
    :cond_70
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 837
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 838
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v9, :cond_9d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chainingForAddAll: packageName value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_9d
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 840
    const-string v0, "chainingForAddAll: packageName and vendorName are same"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v0, 0x1

    .line 842
    .end local v1    # "enableChaining":Z
    .local v0, "enableChaining":Z
    move v1, v0

    goto :goto_b0

    .line 844
    .end local v0    # "enableChaining":Z
    .end local v8    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "enableChaining":Z
    :cond_af
    goto :goto_74

    .line 845
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_b0
    :goto_b0
    goto :goto_b2

    .line 846
    :cond_b1
    const/4 v1, 0x0

    .line 849
    :cond_b2
    :goto_b2
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_c8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_c8} :catch_c9

    .line 852
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_c8
    goto :goto_e2

    .line 850
    :catch_c9
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at enableChainingForAddAll API "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e2
    return v1
.end method

.method protected checKIfUidIsExempted(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 1686
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 1688
    .local v1, "isExempted":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v2

    .line 1689
    .local v2, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    if-nez v2, :cond_c

    .line 1690
    return v1

    .line 1692
    :cond_c
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1693
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_48

    .line 1694
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1695
    .local v6, "exemptedUid":I
    if-ne p1, v6, :cond_44

    .line 1696
    const-string v5, "Check to see if Captive portal is being added to exempted list returns true"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_4a

    .line 1697
    const/4 v1, 0x1

    .line 1698
    goto :goto_45

    .line 1700
    .end local v6    # "exemptedUid":I
    :cond_44
    goto :goto_2b

    .line 1701
    :cond_45
    :goto_45
    if-eqz v1, :cond_48

    .line 1702
    goto :goto_49

    .line 1704
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_48
    goto :goto_10

    .line 1708
    .end local v2    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_49
    :goto_49
    goto :goto_50

    .line 1706
    :catch_4a
    move-exception v2

    .line 1707
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error occured while trying to check if the app Id is added to exempt list"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    return v1
.end method

.method public checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 314
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 315
    .local v1, "isAdminApplication":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 316
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, -0x1

    .line 318
    .local v3, "uid":I
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 319
    .local v4, "token":J
    const/4 v6, 0x0

    invoke-interface {v2, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 320
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    if-eqz v6, :cond_19

    .line 322
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move v3, v7

    .line 324
    :cond_19
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v7, :cond_31

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check system UID : uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_31
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_3b

    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_3a

    .line 326
    const/4 v1, 0x1

    .line 331
    .end local v4    # "token":J
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3a
    goto :goto_55

    .line 328
    :catch_3b
    move-exception v4

    .line 329
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in checkForSystemUIDApplicationForVpn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v3, -0x1

    .line 332
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_55
    return v1
.end method

.method protected checkIfAddAllPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, "resultOfAddAll":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v1

    .line 946
    .local v1, "cid":I
    const-string v2, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 947
    const/4 v0, 0x1

    .line 949
    :cond_12
    return v0
.end method

.method protected checkIfAllProfilesDeactivated()Z
    .registers 7

    .line 1769
    const/4 v0, 0x1

    .line 1770
    .local v0, "isAllProfileDeActivated":Z
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    .line 1771
    .local v1, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1772
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 1773
    const/4 v0, 0x0

    .line 1774
    goto :goto_21

    .line 1776
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_20
    goto :goto_b

    .line 1777
    :cond_21
    :goto_21
    return v0
.end method

.method protected checkIfChainingEnabledForVendor(IZ)I
    .registers 9
    .param p1, "vendorUid"    # I
    .param p2, "enabled"    # Z

    .line 872
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, -0x2

    .line 874
    .local v1, "chainingValue":I
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 875
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v4

    if-ne v4, p1, :cond_33

    .line 876
    const/4 v4, -0x1

    if-eqz p2, :cond_2b

    .line 877
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5

    .line 878
    .local v5, "chainingValueStored":I
    if-eq v5, v4, :cond_2a

    .line 879
    move v1, v5

    .line 880
    goto :goto_34

    .line 882
    .end local v5    # "chainingValueStored":I
    :cond_2a
    goto :goto_33

    .line 883
    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_35

    .line 884
    .restart local v5    # "chainingValueStored":I
    if-ne v5, v4, :cond_33

    .line 885
    move v1, v5

    .line 886
    goto :goto_34

    .line 890
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "chainingValueStored":I
    :cond_33
    :goto_33
    goto :goto_d

    .line 893
    :cond_34
    :goto_34
    goto :goto_52

    .line 891
    :catch_35
    move-exception v2

    .line 892
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at checkIfChainingEnabledForVendor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v2, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is chaining feature enabled  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "for vendor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_73
    return v1
.end method

.method protected checkIfPlatformSigned(ILjava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2171
    const/4 v0, 0x0

    .line 2172
    .local v0, "isValid":Z
    const/4 v1, -0x1

    .line 2173
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2175
    .local v2, "token":J
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 2176
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/16 v5, 0x80

    invoke-interface {v4, p2, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2177
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_15

    .line 2178
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v1, v6

    .line 2180
    :cond_15
    const/16 v6, 0x3e8

    invoke-interface {v4, v1, v6}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v6
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_24
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    if-nez v6, :cond_25

    .line 2181
    const/4 v0, 0x1

    goto :goto_25

    .line 2186
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_1f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2187
    throw v4

    .line 2183
    :catch_24
    move-exception v4

    .line 2186
    :cond_25
    :goto_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2187
    nop

    .line 2188
    return v0
.end method

.method public checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .line 707
    const/4 v0, -0x1

    .line 709
    .local v0, "chainingEnabled":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 710
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_19

    .line 711
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 712
    const/4 v0, 0x1

    goto :goto_19

    .line 713
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1a

    if-nez v2, :cond_19

    .line 714
    const/4 v0, 0x0

    .line 719
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_19
    :goto_19
    goto :goto_35

    .line 717
    :catch_1a
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at checkIfProfileHasChainingFeature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return v0
.end method

.method protected checkIfProfileListEmpty()Z
    .registers 6

    .line 912
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x1

    .line 914
    .local v1, "profileListEmpty":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnProfileInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 915
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_16

    if-lez v3, :cond_15

    .line 916
    const/4 v1, 0x0

    .line 920
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_15
    goto :goto_2f

    .line 918
    :catch_16
    move-exception v2

    .line 919
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at checkIfProfileListEmpty API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfProfileListEmpty:profileListEmpty value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return v1
.end method

.method protected checkIfUidHasInternetPermission(I)I
    .registers 12
    .param p1, "uid"    # I

    .line 1351
    const-string/jumbo v0, "packageUid"

    const-string v1, "FW-KnoxVpnHelper"

    const/4 v2, 0x2

    .line 1353
    .local v2, "result":I
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    .line 1355
    .local v3, "isPermissionGranted":I
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v5, "vpnNoInternetPermission"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 1359
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1363
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_3d

    if-lez v4, :cond_37

    .line 1364
    if-nez v3, :cond_3c

    .line 1365
    const/4 v2, 0x0

    goto :goto_3c

    .line 1368
    :cond_37
    if-nez v3, :cond_3b

    .line 1369
    const/4 v2, 0x2

    goto :goto_3c

    .line 1371
    :cond_3b
    const/4 v2, 0x1

    .line 1376
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "isPermissionGranted":I
    :cond_3c
    :goto_3c
    goto :goto_43

    .line 1374
    :catch_3d
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error occured while checking if uid has been upgraded with internet permission"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfUidHasInternetPermission for uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " return value is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return v2
.end method

.method public checkIfUidIsBlackListed(II)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 926
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 928
    .local v1, "isUidBackListed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    :try_start_4
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 929
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_31

    .line 930
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_2f

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfUidIsBlackListed: mBlacklistedApplication value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_35

    .line 932
    :cond_2f
    const/4 v1, 0x1

    .line 933
    goto :goto_34

    .line 928
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 938
    .end local v2    # "i":I
    :cond_34
    :goto_34
    goto :goto_4e

    .line 936
    :catch_35
    move-exception v2

    .line 937
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at checkIfUidIsBlackListed API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4e
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v2, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfUidIsBlackListed: isUidBackListed value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_66
    return v1
.end method

.method public checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z
    .registers 9
    .param p1, "vendorName"    # Ljava/lang/String;

    .line 688
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x1

    .line 690
    .local v1, "tableEmpty":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnProfileInfo"

    const-string/jumbo v4, "vendorName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 694
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_23

    if-lez v3, :cond_22

    .line 695
    const/4 v1, 0x0

    .line 699
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_22
    goto :goto_3c

    .line 697
    :catch_23
    move-exception v2

    .line 698
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at checkIfKnoxVpnDatabaseIsEmpty API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfKnoxVpnDatabaseIsEmpty: tableEmpty value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return v1
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .registers 12
    .param p1, "container_id"    # I

    .line 336
    const-string/jumbo v0, "packageName"

    const-string v1, "FW-KnoxVpnHelper"

    const/4 v2, 0x0

    .line 337
    .local v2, "i":I
    const/4 v3, 0x0

    .line 339
    .local v3, "retVal":[Ljava/lang/String;
    :try_start_7
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v5, "VpnPackageInfo"

    const-string/jumbo v6, "packageCid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 347
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 348
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    .line 349
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 350
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 351
    nop

    .end local v6    # "cv":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    .line 352
    goto :goto_37

    :cond_4d
    goto :goto_54

    .line 354
    :cond_4e
    const-string/jumbo v0, "getting container package list in database : DB read for packages returned NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_54} :catch_55

    .line 358
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_54
    goto :goto_6f

    .line 356
    :catch_55
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getting container package list in database : Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    return-object v3
.end method

.method protected enableKnoxVpnFlagForTether(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .line 2192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2194
    .local v0, "token":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->enableKnoxVpnFlagForTether(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_12
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 2198
    nop

    :goto_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    goto :goto_2b

    .line 2198
    :catchall_10
    move-exception v2

    goto :goto_2c

    .line 2195
    :catch_12
    move-exception v2

    .line 2196
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error at enableKnoxVpnFlagForTether "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_10

    .line 2198
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 2200
    :goto_2b
    return-void

    .line 2198
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    throw v2
.end method

.method protected getActiveLinkProperty()Landroid/net/LinkProperties;
    .registers 7

    .line 1130
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 1131
    .local v1, "activeLinkProperty":Landroid/net/LinkProperties;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1133
    .local v2, "token":J
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getDefaultNetworkPropertyForKnoxvpn()Landroid/net/LinkProperties;

    move-result-object v4

    move-object v1, v4

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The active interface name from the link property is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_29

    .line 1138
    goto :goto_30

    .line 1135
    :catchall_29
    move-exception v4

    .line 1136
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2a
    const-string v5, "Exception occured while trying to get the active interface details"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_35

    .line 1138
    nop

    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    nop

    .line 1140
    return-object v1

    .line 1138
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    throw v0
.end method

.method protected getActiveNetworkInterface()Ljava/lang/String;
    .registers 7

    .line 1116
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 1117
    .local v1, "activeInterfaceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1119
    .local v2, "token":J
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getDefaultNetworkPropertyForKnoxvpn()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The active interface name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_29

    .line 1124
    goto :goto_30

    .line 1121
    :catchall_29
    move-exception v4

    .line 1122
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2a
    const-string v5, "Exception occured while trying to get the active interface details"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_35

    .line 1124
    nop

    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1125
    nop

    .line 1126
    return-object v1

    .line 1124
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1125
    throw v0
.end method

.method public getAdminIdForUserVpn(I)I
    .registers 9
    .param p1, "userId"    # I

    .line 579
    const/4 v0, -0x1

    .line 580
    .local v0, "adminId":I
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 581
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 582
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 583
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    .line 584
    return v0

    .line 586
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_40
    goto :goto_1f

    .line 587
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_41
    goto :goto_b

    .line 588
    :cond_42
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAdminIdForUserVpn: admin id value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW-KnoxVpnHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_65
    return v0
.end method

.method protected getAdminIdFromPackageName(Ljava/lang/String;)I
    .registers 6
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .line 1747
    const/4 v0, -0x1

    .line 1748
    .local v0, "adminId":I
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 1749
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1750
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1751
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    .line 1752
    goto :goto_35

    .line 1754
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_34
    goto :goto_19

    .line 1756
    :cond_35
    :goto_35
    return v0
.end method

.method protected getAdminPackageNameForVpnClient(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .line 1729
    const/4 v0, -0x1

    .line 1730
    .local v0, "adminId":I
    const/4 v1, 0x0

    .line 1731
    .local v1, "adminPackageName":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v2

    .line 1732
    .local v2, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1733
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1734
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    .line 1735
    goto :goto_28

    .line 1737
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_27
    goto :goto_c

    .line 1739
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_32

    move-object v1, v3

    .line 1742
    goto :goto_33

    .line 1740
    :catch_32
    move-exception v3

    .line 1743
    :goto_33
    return-object v1
.end method

.method public getAdminUidForPersona(I)I
    .registers 6
    .param p1, "personaId"    # I

    .line 660
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 661
    .local v0, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    nop

    .line 662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 663
    .local v1, "ident":J
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 664
    .local v3, "id":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    return v3
.end method

.method protected getConnectionType(Ljava/lang/String;)I
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1781
    const/4 v0, 0x0

    .line 1783
    .local v0, "connectionType":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1784
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_e

    .line 1785
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move v0, v2

    .line 1789
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_e
    goto :goto_26

    .line 1787
    :catch_f
    move-exception v1

    .line 1788
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured while trying to fetch the profile list for the vpn client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    return v0
.end method

.method public getContainerIdFromPackageName(Ljava/lang/String;)I
    .registers 5
    .param p1, "personifiedPackageName"    # Ljava/lang/String;

    .line 645
    const/4 v0, -0x1

    if-eqz p1, :cond_13

    .line 647
    :try_start_3
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "packageArray":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 650
    .local v0, "id":I
    return v0

    .line 651
    .end local v0    # "id":I
    .end local v1    # "packageArray":[Ljava/lang/String;
    :catch_11
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_13
    return v0
.end method

.method protected getDefaultNetworkInterface(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1876
    const/4 v0, 0x0

    .line 1878
    .local v0, "defaultNetworkInterface":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1879
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getActiveNetworkInterface()Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 1884
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_15
    goto :goto_17

    .line 1882
    :catch_16
    move-exception v1

    .line 1885
    :goto_17
    return-object v0
.end method

.method protected getExemptedListFromDatabase(Ljava/lang/String;)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1250
    const-string/jumbo v0, "packageUid"

    const-string v1, "FW-KnoxVpnHelper"

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1251
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_e

    .line 1252
    return-void

    .line 1254
    :cond_e
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v3

    .line 1256
    .local v3, "exemptedUidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_12
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v5, "vpnExemptInfo"

    const-string/jumbo v6, "profileName"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_6b

    .line 1264
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_6a

    .line 1266
    :try_start_2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1267
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1268
    .local v7, "exemptedUid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4d} :catch_50

    .line 1269
    nop

    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "exemptedUid":I
    goto :goto_32

    .line 1272
    :cond_4f
    goto :goto_6a

    .line 1270
    :catch_50
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/Exception;
    :try_start_51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getExemptedListFromDatabase "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6a} :catch_6b

    .line 1276
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6a
    :goto_6a
    goto :goto_85

    .line 1274
    :catch_6b
    move-exception v0

    .line 1275
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getExemptedListFromDatabase : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_85
    return-void
.end method

.method public getInstalledPackages(I)[Ljava/lang/String;
    .registers 12
    .param p1, "containerId"    # I

    .line 212
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 213
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 215
    .local v2, "token":J
    const/4 v4, 0x0

    invoke-interface {v0, v4, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 216
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 218
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    nop

    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_1d

    .line 220
    :cond_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 221
    .local v5, "installedPackagesArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 222
    .local v6, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 223
    .local v8, "str":Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .local v9, "i":I
    aput-object v8, v5, v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4e

    .line 224
    .end local v8    # "str":Ljava/lang/String;
    move v6, v9

    goto :goto_3b

    .line 225
    .end local v9    # "i":I
    .restart local v6    # "i":I
    :cond_4d
    return-object v5

    .line 226
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "token":J
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "installedPackagesArray":[Ljava/lang/String;
    .end local v6    # "i":I
    :catch_4e
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getInstalledPackages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW-KnoxVpnHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getInterfaceNameForUsbtethering()Ljava/lang/String;
    .registers 10

    .line 2125
    const/4 v0, 0x0

    .line 2126
    .local v0, "interfaceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2128
    .local v1, "token":J
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v3

    .line 2129
    .local v3, "interfaceList":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_3a

    aget-object v6, v3, v5

    .line 2130
    .local v6, "iface":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/-$$Lambda$CnDQu-t7_cqpfDnI6y-WUNr3GLM;

    invoke-direct {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/-$$Lambda$CnDQu-t7_cqpfDnI6y-WUNr3GLM;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_2e
    .catchall {:try_start_5 .. :try_end_25} :catchall_2c

    if-eqz v7, :cond_29

    .line 2131
    move-object v0, v6

    .line 2132
    goto :goto_3a

    .line 2129
    .end local v6    # "iface":Ljava/lang/String;
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2138
    .end local v3    # "interfaceList":[Ljava/lang/String;
    :catchall_2c
    move-exception v3

    goto :goto_3f

    .line 2135
    :catch_2e
    move-exception v3

    .line 2136
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2f
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v4, :cond_3a

    const-string v4, "FW-KnoxVpnHelper"

    const-string v5, "Exception at getInterfaceNameForUsbtethering"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_2c

    .line 2138
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2139
    nop

    .line 2140
    return-object v0

    .line 2138
    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2139
    throw v3
.end method

.method protected getIpAddressForUsbTetheringInterface()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2100
    .local v0, "ipAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2102
    .local v1, "token":J
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v3

    .line 2103
    .local v3, "interfaceList":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_57

    aget-object v6, v3, v5

    .line 2104
    .local v6, "iface":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/-$$Lambda$CnDQu-t7_cqpfDnI6y-WUNr3GLM;

    invoke-direct {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/-$$Lambda$CnDQu-t7_cqpfDnI6y-WUNr3GLM;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 2105
    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 2106
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InterfaceAddress;

    .line 2107
    .local v7, "ifAddress":Ljava/net/InterfaceAddress;
    invoke-virtual {v7}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 2108
    .local v8, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 2109
    goto :goto_37

    .line 2111
    :cond_4e
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_51} :catch_5a
    .catchall {:try_start_9 .. :try_end_51} :catchall_58

    .line 2112
    nop

    .end local v7    # "ifAddress":Ljava/net/InterfaceAddress;
    .end local v8    # "inetAddr":Ljava/net/InetAddress;
    goto :goto_37

    .line 2113
    :cond_53
    goto :goto_57

    .line 2103
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    .end local v6    # "iface":Ljava/lang/String;
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 2119
    .end local v3    # "interfaceList":[Ljava/lang/String;
    :cond_57
    :goto_57
    goto :goto_63

    :catchall_58
    move-exception v3

    goto :goto_68

    .line 2116
    :catch_5a
    move-exception v3

    .line 2117
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5b
    const-string v4, "FW-KnoxVpnHelper"

    const-string v5, "Exception at getIpAddressForUsbTetheringInterface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    .line 2119
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2120
    nop

    .line 2121
    return-object v0

    .line 2119
    :goto_68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2120
    throw v3
.end method

.method protected getIpChainNameAfterUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 2087
    const-string v0, "STUVWXYZ1234567890"

    .line 2088
    .local v0, "SALTCHARS":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2089
    .local v1, "salt":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 2090
    .local v2, "rnd":Ljava/util/Random;
    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_27

    .line 2091
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 2092
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2093
    .end local v3    # "index":I
    goto :goto_c

    .line 2094
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2095
    .local v3, "saltStr":Ljava/lang/String;
    return-object v3
.end method

.method protected getIpChainNameForProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1760
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 1761
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_20

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while trying to fetch the profile list for the vpn client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW-KnoxVpnHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v1, 0x0

    return-object v1

    .line 1765
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getIpChainName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getListOfActiveUsers()Ljava/util/HashSet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1145
    const-string v0, "FW-KnoxVpnHelper"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1146
    .local v1, "activeUsers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1148
    .local v2, "token":J
    :try_start_b
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1149
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 1150
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1151
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "the list of active users are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_53
    .catchall {:try_start_b .. :try_end_4a} :catchall_51

    .line 1153
    nop

    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1e

    .line 1157
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4c
    nop

    :goto_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    goto :goto_6e

    .line 1157
    :catchall_51
    move-exception v0

    goto :goto_6f

    .line 1154
    :catch_53
    move-exception v4

    .line 1155
    .local v4, "e":Ljava/lang/Exception;
    :try_start_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured while trying to get the list of active users "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_51

    .line 1157
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_4d

    .line 1159
    :goto_6e
    return-object v1

    .line 1157
    :goto_6f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    throw v0
.end method

.method protected getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .param p1, "profile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 955
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, 0x0

    .line 957
    .local v1, "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 958
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_88

    .line 959
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 960
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 961
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ADD_ALL_PACKAGES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 962
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v5

    .line 963
    .local v5, "userId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "knox vpn proxy settings is going to be applied for the user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    goto :goto_19

    .line 967
    .end local v5    # "userId":I
    :cond_5b
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUidForPackageName(Ljava/lang/String;)I

    move-result v5

    .line 968
    .local v5, "uid":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "knox vpn proxy settings is going to be applied for the app whose uid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v6, -0x1

    if-eq v5, v6, :cond_87

    .line 970
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_87} :catch_89

    .line 972
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "uid":I
    :cond_87
    goto :goto_19

    .line 976
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_88
    goto :goto_8f

    .line 974
    :catch_89
    move-exception v2

    .line 975
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Exception occured while getting the list of uid added to the vpn profile"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8f
    return-object v1
.end method

.method protected getNetworkPartWithMask(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2155
    .local v0, "networkPartList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 2156
    .local v1, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_50

    .line 2157
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2159
    .local v2, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 2160
    .local v4, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v6

    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    .line 2161
    .local v5, "addr":Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_51

    .line 2162
    nop

    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "addr":Ljava/net/InetAddress;
    goto :goto_17

    .line 2166
    .end local v1    # "internalNetworkInterface":Ljava/net/NetworkInterface;
    .end local v2    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :cond_50
    goto :goto_6c

    .line 2164
    :catch_51
    move-exception v1

    .line 2165
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6c
    return-object v0
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 671
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const-string v1, "FW-KnoxVpnHelper"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passed string is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_1a
    const-string/jumbo v0, "sec_container_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 673
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 675
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v3, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 679
    .local v0, "prefixLen":I
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, "returnedString":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v5, :cond_57

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returned string is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_57
    return-object v4

    .line 683
    .end local v0    # "prefixLen":I
    .end local v2    # "length":I
    .end local v3    # "str":Ljava/lang/StringBuilder;
    .end local v4    # "returnedString":Ljava/lang/String;
    :cond_58
    return-object p2
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .registers 6
    .param p1, "uid"    # I

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 305
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v2

    .line 308
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_26

    .line 306
    :catch_b
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getPackageNameForUid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    return-object v0
.end method

.method public getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "regularPackageName"    # Ljava/lang/String;

    .line 626
    const-string v0, "FW-KnoxVpnHelper"

    :try_start_2
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "vpn getPersonifiedName : container id is regular device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 628
    .local v0, "personifiedPackageName":Ljava/lang/String;
    return-object v0

    .line 629
    .end local v0    # "personifiedPackageName":Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting getPersonifiedName : Error :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProfileNameForExemptedUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .line 1629
    const/4 v0, 0x0

    .line 1631
    .local v0, "profileName":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1632
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    .line 1633
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v3

    .line 1634
    .local v3, "exemptedUidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1635
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_34

    move-object v0, v1

    .line 1636
    goto :goto_33

    .line 1639
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "exemptedUidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_32
    goto :goto_b

    .line 1643
    :cond_33
    :goto_33
    goto :goto_50

    .line 1641
    :catch_34
    move-exception v1

    .line 1642
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileNameForExemptedUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    return-object v0
.end method

.method protected getProfileNameForPermissionUpdatedApp(I)Ljava/lang/String;
    .registers 10
    .param p1, "uid"    # I

    .line 1382
    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 1384
    .local v1, "profileName":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v3, "vpnNoInternetPermission"

    const-string/jumbo v4, "packageUid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 1388
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 1384
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1392
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 1393
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1394
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_40

    .line 1395
    .end local v1    # "profileName":Ljava/lang/String;
    .local v0, "profileName":Ljava/lang/String;
    move-object v1, v0

    .line 1400
    .end local v0    # "profileName":Ljava/lang/String;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "profileName":Ljava/lang/String;
    :cond_3f
    goto :goto_48

    .line 1398
    :catch_40
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FW-KnoxVpnHelper"

    const-string v3, "Error occured while checking if uid has been upgraded with internet permission"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    return-object v1
.end method

.method public getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "jsonProfile"    # Ljava/lang/String;

    .line 543
    const/4 v0, 0x0

    .line 545
    .local v0, "profileName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, "profileObj":Lorg/json/JSONObject;
    const-string v2, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 547
    .local v2, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "profile_attribute"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 548
    .local v3, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "profileName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-object v0, v4

    .line 551
    .end local v1    # "profileObj":Lorg/json/JSONObject;
    .end local v2    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v3    # "profileAttrObj":Lorg/json/JSONObject;
    goto :goto_38

    .line 549
    :catch_1c
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get profilename from json : Error parsing JSON \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    return-object v0
.end method

.method public getProfileOfVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .line 792
    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 794
    .local v1, "profileName":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnProfileInfo"

    const-string/jumbo v4, "vendorName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 802
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3b

    .line 803
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 804
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3c

    move-object v1, v5

    .line 805
    .end local v4    # "cv":Landroid/content/ContentValues;
    goto :goto_29

    .line 809
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3b
    goto :goto_57

    .line 807
    :catch_3c
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getProfileOwningThePackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-object v1
.end method

.method public getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .line 724
    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 726
    .local v1, "profileName":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    const-string/jumbo v4, "packageName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 734
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3b

    .line 735
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 736
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3c

    move-object v1, v5

    .line 737
    .end local v4    # "cv":Landroid/content/ContentValues;
    goto :goto_29

    .line 741
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3b
    goto :goto_57

    .line 739
    :catch_3c
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getProfileOwningThePackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-object v1
.end method

.method public getProfileOwningTheUid(I)Ljava/lang/String;
    .registers 10
    .param p1, "uid"    # I

    .line 747
    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 749
    .local v1, "profileName":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    const-string/jumbo v4, "packageUid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 753
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 749
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 757
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 758
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 759
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_40

    move-object v1, v5

    .line 760
    .end local v4    # "cv":Landroid/content/ContentValues;
    goto :goto_2d

    .line 764
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3f
    goto :goto_5b

    .line 762
    :catch_40
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getProfileOwningTheUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    return-object v1
.end method

.method protected getProfileOwningTheUidFromCache(I)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 1794
    const/4 v0, 0x0

    .line 1796
    .local v0, "profileName":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    .line 1797
    .local v1, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1798
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1799
    .local v5, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v6

    if-ne v6, p1, :cond_37

    .line 1800
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_3d

    move-object v0, v4

    .line 1801
    goto :goto_38

    .line 1803
    .end local v5    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_37
    goto :goto_1f

    .line 1804
    :cond_38
    :goto_38
    if-eqz v0, :cond_3b

    .line 1805
    goto :goto_3c

    .line 1806
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3b
    goto :goto_b

    .line 1809
    .end local v1    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_3c
    :goto_3c
    goto :goto_54

    .line 1807
    :catch_3d
    move-exception v1

    .line 1808
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured while trying to fetch the profileName for uid for on-demand use-case"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_54
    return-object v0
.end method

.method protected getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;
    .registers 10
    .param p1, "uid"    # I

    .line 769
    const-string/jumbo v0, "profileName"

    const/4 v1, 0x0

    .line 771
    .local v1, "profileName":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v3, "vpnNoInternetPermission"

    const-string/jumbo v4, "packageUid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 775
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 771
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 779
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_40

    .line 780
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 781
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_41

    move-object v1, v5

    .line 782
    .end local v4    # "cv":Landroid/content/ContentValues;
    goto :goto_2e

    .line 786
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_40
    goto :goto_5c

    .line 784
    :catch_41
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getProfileOwningTheUidWithNoInternetPermission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5c
    return-object v1
.end method

.method public getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 636
    if-eqz p1, :cond_f

    .line 638
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 640
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRunningUidList(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1929
    const-string v0, "FW-KnoxVpnHelper"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1931
    .local v1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1932
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_10

    .line 1933
    return-object v1

    .line 1935
    :cond_10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1936
    .local v3, "runningUID":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1937
    .local v4, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1938
    .local v5, "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3e

    .line 1939
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3e

    .line 1940
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1939
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 1944
    .end local v6    # "i":I
    :cond_3e
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1945
    .local v7, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v8

    .line 1946
    .local v8, "uid":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 1947
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The uid added to the profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is currently in running state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_83} :catch_85

    .line 1950
    .end local v7    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v8    # "uid":I
    :cond_83
    goto :goto_46

    .line 1953
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "runningUID":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_84
    goto :goto_9a

    .line 1951
    :catch_85
    move-exception v2

    .line 1952
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while trying to get the RunningUidList for profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9a
    return-object v1
.end method

.method protected getTetherAuthDetailsFromDatabase(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1574
    .local v0, "authDetails":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v2, "profileName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1580
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_f3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f3

    .line 1581
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1582
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "tetherLoginpage"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1583
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-auth-login-page"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_46
    const-string/jumbo v4, "tetherResponsePage"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1587
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-auth-response-page"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :cond_59
    const-string/jumbo v4, "tetherClientCertIssuerCN"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1591
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-client-certificate-issuer-cn"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :cond_6c
    const-string/jumbo v4, "tetherClientCertIssuedCN"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 1595
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-client-certificate-issued-cn"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_7f
    const-string/jumbo v4, "tetherCaptivePortalAlias"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1599
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-captive-portal-alias"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_92
    const-string/jumbo v4, "tetherCaptivePortalCert"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 1603
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "key-tether-captive-portal-certificate"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1606
    :cond_a5
    const-string/jumbo v4, "tetherCAlias"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1607
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-ca-alias"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_b8
    const-string/jumbo v4, "tetherCACert"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 1611
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "key-tether-ca-certificate"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1614
    :cond_cb
    const-string/jumbo v4, "tetherServerCert"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 1615
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "key-tether-user-certificate"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1618
    :cond_de
    const-string/jumbo v4, "tetherServerAlias"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 1619
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key-tether-user-alias"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_f1
    goto/16 :goto_27

    .line 1623
    :cond_f3
    return-object v0
.end method

.method public getTransformedUIDForPackage(II)I
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "uid"    # I

    .line 298
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public getUIDForPackage(ILjava/lang/String;)I
    .registers 11
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 276
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, -0x1

    .line 277
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 280
    .local v2, "token":J
    :try_start_7
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 281
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/16 v5, 0x80

    invoke-interface {v4, p2, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 282
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_29

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application uid for info :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_29
    if-eqz v5, :cond_2e

    .line 284
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v1, v6

    .line 287
    :cond_2e
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_4e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application uid for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_54
    .catchall {:try_start_7 .. :try_end_4e} :catchall_52

    .line 292
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4e
    :goto_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    goto :goto_6f

    .line 292
    :catchall_52
    move-exception v0

    goto :goto_70

    .line 288
    :catch_54
    move-exception v4

    .line 289
    .local v4, "e":Ljava/lang/Exception;
    :try_start_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getUIDForPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_52

    .line 290
    const/4 v1, -0x1

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_4e

    .line 294
    :goto_6f
    return v1

    .line 292
    :goto_70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    throw v0
.end method

.method public getUidForPackageName(Ljava/lang/String;)I
    .registers 7
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .line 857
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    const-string v1, "FW-KnoxVpnHelper"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUidForPackageName: transformedPackageName value is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_1b
    const/4 v0, -0x1

    .line 860
    .local v0, "uidOfVendor":I
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v2

    .line 861
    .local v2, "userIdOfVendor":I
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUidForPackageName: userIdOfVendor value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    move v0, v3

    .line 863
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUidForPackageName: uidOfVendor value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5b} :catch_5c

    .line 866
    .end local v2    # "userIdOfVendor":I
    :cond_5b
    goto :goto_79

    .line 864
    :catch_5c
    move-exception v2

    .line 865
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v3, :cond_79

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getUidForPackageName API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_79
    :goto_79
    return v0
.end method

.method protected getUninsalledAppsFromExemptedList(ILjava/lang/String;)Ljava/util/HashSet;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1280
    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "packageUid"

    const-string v2, "FW-KnoxVpnHelper"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1282
    .local v3, "uninstalledPackagesList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_d
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v5, "vpnExemptInfo"

    const-string/jumbo v6, "profileName"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_88

    .line 1290
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_87

    .line 1292
    :try_start_29
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1293
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1294
    .local v7, "exemptedUid":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_6b

    .line 1295
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1296
    .local v8, "tPackageName":Ljava/lang/String;
    if-eqz v8, :cond_6b

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v9

    if-ne v9, p1, :cond_6b

    .line 1297
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1298
    .local v9, "rPackageName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding uninstalledPackage to exempt list "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6b} :catch_6d

    .line 1302
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "exemptedUid":I
    .end local v8    # "tPackageName":Ljava/lang/String;
    .end local v9    # "rPackageName":Ljava/lang/String;
    :cond_6b
    goto :goto_2d

    .line 1305
    :cond_6c
    goto :goto_87

    .line 1303
    :catch_6d
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getExemptedListFromDatabase "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_87} :catch_88

    .line 1309
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_87
    :goto_87
    goto :goto_a2

    .line 1307
    :catch_88
    move-exception v0

    .line 1308
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExemptedListFromDatabase : Exception:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a2
    return-object v3
.end method

.method protected getUninsalledAppsFromExemptedList(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1314
    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "packageUid"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1316
    .local v2, "uninstalledPackagesList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_b
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v4, "vpnExemptInfo"

    const-string/jumbo v5, "profileName"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_4f

    .line 1324
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_4e

    .line 1326
    :try_start_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1327
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1328
    .local v6, "exemptedUid":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4b

    .line 1329
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1330
    .local v7, "tPackageName":Ljava/lang/String;
    if-eqz v7, :cond_4b

    .line 1331
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4b} :catch_4d

    .line 1334
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "exemptedUid":I
    .end local v7    # "tPackageName":Ljava/lang/String;
    :cond_4b
    goto :goto_2b

    .line 1337
    :cond_4c
    goto :goto_4e

    .line 1335
    :catch_4d
    move-exception v0

    .line 1341
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4e
    :goto_4e
    goto :goto_50

    .line 1339
    :catch_4f
    move-exception v0

    .line 1342
    :goto_50
    return-object v2
.end method

.method protected getUsbTetheringAuthConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 1540
    const/4 v0, 0x0

    .line 1542
    .local v0, "isConfigured":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v2, "VpnProfileInfo"

    const-string/jumbo v3, "profileName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    new-array v7, v4, [Ljava/lang/String;

    aput-object p2, v7, v6

    invoke-virtual {v1, v2, v3, v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1550
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_48

    .line 1551
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1552
    .local v2, "cv":Landroid/content/ContentValues;
    if-nez p3, :cond_3c

    .line 1553
    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1554
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 1555
    const/4 v0, 0x1

    .line 1557
    .end local v3    # "value":Ljava/lang/String;
    :cond_3b
    goto :goto_48

    :cond_3c
    if-ne p3, v4, :cond_3b

    .line 1558
    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1559
    .local v3, "byteArrayValue":[B
    if-eqz v3, :cond_48

    array-length v4, v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_49

    if-lez v4, :cond_48

    .line 1560
    const/4 v0, 0x1

    .line 1568
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "byteArrayValue":[B
    :cond_48
    :goto_48
    goto :goto_4a

    .line 1566
    :catch_49
    move-exception v1

    .line 1569
    :goto_4a
    return v0
.end method

.method protected getUserPackageListForProfile(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 16
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "token":J
    const/4 v2, 0x0

    .line 236
    .local v2, "installedPackagesArray":[Ljava/lang/String;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 238
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 239
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v5, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-interface {v4, v6, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 243
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 244
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 245
    .local v9, "isExempted":Z
    if-eqz v3, :cond_4f

    .line 246
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_38
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 247
    .local v11, "uid":I
    iget v12, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v12, :cond_4e

    .line 248
    const/4 v9, 0x1

    .line 249
    goto :goto_4f

    .line 251
    .end local v11    # "uid":I
    :cond_4e
    goto :goto_38

    .line 253
    :cond_4f
    :goto_4f
    if-eqz v9, :cond_52

    .line 254
    goto :goto_21

    .line 255
    :cond_52
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    nop

    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "isExempted":Z
    goto :goto_21

    .line 262
    :cond_59
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move-object v2, v7

    .line 263
    const/4 v7, 0x0

    .line 264
    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_65
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 265
    .local v9, "str":Ljava/lang/String;
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "i":I
    .local v10, "i":I
    aput-object v9, v2, v7
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_75} :catch_7a
    .catchall {:try_start_5 .. :try_end_75} :catchall_78

    .line 266
    .end local v9    # "str":Ljava/lang/String;
    move v7, v10

    goto :goto_65

    .line 270
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    .end local v5    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "i":I
    :cond_77
    goto :goto_96

    :catchall_78
    move-exception v3

    goto :goto_9b

    .line 267
    :catch_7a
    move-exception v3

    .line 268
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7b
    const-string v4, "FW-KnoxVpnHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getInstalledPackages : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7b .. :try_end_95} :catchall_78

    .line 270
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_96
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    nop

    .line 272
    return-object v2

    .line 270
    :goto_9b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    throw v3
.end method

.method protected getuidListForProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    .local v0, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1892
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_2f

    .line 1893
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1894
    .local v3, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v4

    .line 1895
    .local v4, "uid":I
    if-lez v4, :cond_2e

    .line 1896
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_30

    .line 1898
    .end local v3    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v4    # "uid":I
    :cond_2e
    goto :goto_15

    .line 1902
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2f
    goto :goto_31

    .line 1900
    :catch_30
    move-exception v1

    .line 1903
    :goto_31
    return-object v0
.end method

.method protected getuserIdForExemptedUidByProfile(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1669
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1671
    .local v0, "userList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1672
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_e

    .line 1673
    return-object v0

    .line 1675
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1676
    .local v3, "exemptedUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1677
    .local v4, "userId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_34

    .line 1678
    nop

    .end local v3    # "exemptedUid":I
    .end local v4    # "userId":I
    goto :goto_16

    .line 1681
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_33
    goto :goto_3c

    .line 1679
    :catch_34
    move-exception v1

    .line 1680
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FW-KnoxVpnHelper"

    const-string v3, "Error occured at getuserIdForExemptedUidByProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3c
    return-object v0
.end method

.method protected getuserIdForExemptedUids()Ljava/util/HashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1648
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1650
    .local v0, "userList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    .line 1651
    .local v1, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    if-nez v1, :cond_e

    .line 1652
    return-object v0

    .line 1654
    :cond_e
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1655
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 1656
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1657
    .local v5, "exemptedUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1658
    .local v6, "userId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_4c

    .line 1659
    nop

    .end local v5    # "exemptedUid":I
    .end local v6    # "userId":I
    goto :goto_2d

    .line 1661
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_4a
    goto :goto_12

    .line 1664
    .end local v1    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_4b
    goto :goto_54

    .line 1662
    :catch_4c
    move-exception v1

    .line 1663
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FW-KnoxVpnHelper"

    const-string v3, "Error occured while trying to fetch the list of userId for exempted uids"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_54
    return-object v0
.end method

.method protected getuserIdListForProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1909
    .local v0, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1910
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_34

    .line 1911
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1912
    .local v3, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v4

    .line 1913
    .local v4, "uid":I
    const/4 v5, -0x2

    if-ne v4, v5, :cond_33

    .line 1914
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v5

    .line 1915
    .local v5, "userId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_35

    .line 1917
    .end local v3    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    :cond_33
    goto :goto_15

    .line 1921
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_34
    goto :goto_36

    .line 1919
    :catch_35
    move-exception v1

    .line 1922
    :goto_36
    return-object v0
.end method

.method protected isCallerNonChainedVendor(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 1863
    const/4 v0, 0x0

    .line 1864
    .local v0, "isNonChainedVendor":Z
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1865
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v3

    if-nez v3, :cond_33

    .line 1866
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v3

    if-ne v3, p1, :cond_33

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 1867
    const/4 v0, 0x1

    .line 1868
    goto :goto_34

    .line 1871
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_33
    goto :goto_b

    .line 1872
    :cond_34
    :goto_34
    return v0
.end method

.method public isKnoxVpnProfile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1834
    const/4 v0, 0x0

    .line 1835
    .local v0, "isKnoxVpnProfile":Z
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1836
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_a

    .line 1837
    const/4 v0, 0x1

    .line 1839
    :cond_a
    return v0
.end method

.method protected isNativeVpnClient(Ljava/lang/String;)Z
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1814
    const/4 v0, 0x0

    .line 1816
    .local v0, "isNative":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1817
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_2b

    .line 1818
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v2

    .line 1819
    .local v2, "vendorUid":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v3

    .line 1820
    .local v3, "vendorPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_27

    const-string v4, "com.samsung.sVpn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1821
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnType(I)V

    .line 1822
    const/4 v0, 0x1

    goto :goto_2b

    .line 1824
    :cond_27
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnType(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 1829
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "vendorUid":I
    .end local v3    # "vendorPackageName":Ljava/lang/String;
    :cond_2b
    :goto_2b
    goto :goto_43

    .line 1827
    :catch_2c
    move-exception v1

    .line 1828
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured while trying to check if profile is configured by native vpn client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return v0
.end method

.method public isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z
    .registers 7
    .param p1, "packageInfo"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "resultOfAddAll":Z
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v1

    .line 902
    .local v1, "cid":I
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v2

    .line 903
    .local v2, "uid":I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_21

    .line 904
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 905
    const/4 v0, 0x1

    .line 908
    :cond_21
    return v0
.end method

.method public isPackageInstalled(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 189
    const-string v0, "FW-KnoxVpnHelper"

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 190
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 192
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 193
    .local v3, "token":J
    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 194
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    if-eqz v5, :cond_33

    .line 196
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v6, :cond_31

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package present. application uid for user 100 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_31
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package not present : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_48} :catch_49

    .line 200
    return v2

    .line 202
    .end local v3    # "token":J
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_49
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception in isPackageInstalled"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4f
    return v2
.end method

.method protected isUsbTetheringConfigured(Ljava/lang/String;)Z
    .registers 8
    .param p1, "jsonProfile"    # Ljava/lang/String;

    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, "configured":Z
    if-nez p1, :cond_4

    .line 1845
    return v0

    .line 1848
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v1, "profileObj":Lorg/json/JSONObject;
    const-string v2, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1850
    .local v2, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "knox"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1852
    .local v3, "knoxAttrObj":Lorg/json/JSONObject;
    const-string v4, "allow_usb_over_vpn_tethering"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_22

    .line 1853
    .local v4, "usb_tethering":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    .line 1854
    const/4 v0, 0x1

    .line 1858
    .end local v1    # "profileObj":Lorg/json/JSONObject;
    .end local v2    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v3    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v4    # "usb_tethering":I
    :cond_21
    goto :goto_23

    .line 1856
    :catch_22
    move-exception v1

    .line 1859
    :goto_23
    return v0
.end method

.method public isUsingKnoxPackageExists(I)Z
    .registers 10
    .param p1, "containerId"    # I

    .line 594
    const-string/jumbo v0, "packageName"

    const/4 v1, 0x0

    .line 596
    .local v1, "alreadyExists":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    const-string/jumbo v4, "packageCid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 600
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 596
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 605
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4d

    .line 606
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 607
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_4e

    if-eqz v6, :cond_4b

    .line 609
    const/4 v1, 0x0

    .line 610
    goto :goto_4d

    .line 613
    :cond_4b
    const/4 v1, 0x1

    .line 615
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_2d

    .line 620
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4d
    :goto_4d
    goto :goto_6a

    .line 617
    :catch_4e
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsingKnoxPackageExists \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    return v1
.end method

.method public isWideVpnExists(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, "rangeExists":Z
    :try_start_1
    const-string v1, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "packageNameToCheck":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    const-string/jumbo v4, "packageName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string/jumbo v6, "profileName"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 568
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2d

    if-lez v3, :cond_2c

    .line 569
    const/4 v0, 0x1

    .line 573
    .end local v1    # "packageNameToCheck":Ljava/lang/String;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2c
    goto :goto_49

    .line 571
    :catch_2d
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPackageExists \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_49
    return v0
.end method

.method protected profileListForClient(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v1

    .line 1716
    .local v1, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1717
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1718
    .local v4, "getOriginalPackageName":Ljava/lang/String;
    if-eqz v4, :cond_32

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1719
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_34

    .line 1721
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "getOriginalPackageName":Ljava/lang/String;
    :cond_32
    goto :goto_f

    .line 1724
    .end local v1    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_33
    goto :goto_4b

    .line 1722
    :catch_34
    move-exception v1

    .line 1723
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured while trying to fetch the profile list for the vpn client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4b
    return-object v0
.end method

.method protected registerNetdTetherEventListener(Z)V
    .registers 8
    .param p1, "register"    # Z

    .line 2203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2205
    .local v0, "token":J
    if-eqz p1, :cond_e

    .line 2206
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->registerNetdTetherEventListener()V

    goto :goto_15

    .line 2208
    :cond_e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->unregisterNetdTetherEventListener()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_1c
    .catchall {:try_start_6 .. :try_end_15} :catchall_1a

    .line 2213
    :goto_15
    nop

    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    goto :goto_35

    .line 2213
    :catchall_1a
    move-exception v2

    goto :goto_36

    .line 2210
    :catch_1c
    move-exception v2

    .line 2211
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error at registerNetdTetherEventListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_1a

    .line 2213
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_16

    .line 2215
    :goto_35
    return-void

    .line 2213
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    throw v2
.end method

.method protected removeExemptedListToDatabase(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1228
    const/4 v0, 0x0

    .line 1230
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v2, "vpnExemptInfo"

    const-string/jumbo v3, "packageUid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1231
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1230
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move v0, v1

    .line 1234
    goto :goto_39

    .line 1232
    :catch_1d
    move-exception v1

    .line 1233
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeExemptedListToDatabase : Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    return v0
.end method

.method protected removeExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "tPackageName"    # Ljava/lang/String;

    .line 1239
    const/4 v0, 0x0

    .line 1241
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v2, "vpnExemptInfo"

    const-string/jumbo v3, "packageName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v1

    .line 1245
    goto :goto_35

    .line 1243
    :catch_19
    move-exception v1

    .line 1244
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeExemptedListToDatabase : Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return v0
.end method

.method protected removePackagesFromPermissionDb(Ljava/lang/String;I)V
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1414
    const-string/jumbo v0, "vpnNoInternetPermission"

    const-string/jumbo v1, "packageUid"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .local v2, "uidToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_b
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v4, "profileName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v4, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1424
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_53

    .line 1425
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1426
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1427
    .local v8, "uid":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_52

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, p2, :cond_52

    .line 1428
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v8    # "uid":I
    :cond_52
    goto :goto_2e

    .line 1431
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1432
    .local v6, "uid":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    .line 1433
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 1432
    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_7b

    .line 1434
    nop

    .end local v6    # "uid":Ljava/lang/Integer;
    goto :goto_57

    .line 1437
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_7a
    goto :goto_7c

    .line 1435
    :catch_7b
    move-exception v0

    .line 1438
    :goto_7c
    return-void
.end method

.method protected removeProfileCredentials(Ljava/lang/String;)V
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1080
    const-string v0, "_"

    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proxy-username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1082
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "proxy-password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "captivecert_pwd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cacert_pwd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "servercert_pwd"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8c} :catch_8d

    .line 1092
    goto :goto_ac

    .line 1090
    :catch_8d
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_ac

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured while removing the profile credentials "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW-KnoxVpnHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ac
    :goto_ac
    return-void
.end method

.method protected retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1096
    const/4 v0, 0x0

    .line 1098
    .local v0, "valueRetrived":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1f

    move-object v0, v1

    .line 1101
    goto :goto_3e

    .line 1099
    :catch_1f
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while Retrieve the profile credentials "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-object v0
.end method

.method protected saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 1106
    const/4 v0, 0x0

    .line 1108
    .local v0, "credentialSaved":Z
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 1111
    goto :goto_2a

    .line 1109
    :catch_b
    move-exception v1

    .line 1110
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while saving the profile credentials "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    return v0
.end method

.method protected sendProxyConfigBroadcast(Ljava/util/HashMap;ILandroid/net/ProxyInfo;ILjava/lang/String;Ljava/util/HashSet;)V
    .registers 29
    .param p2, "excludeUid"    # I
    .param p3, "proxyInfo"    # Landroid/net/ProxyInfo;
    .param p4, "staticPort"    # I
    .param p5, "staticServer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Landroid/net/ProxyInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 996
    .local p1, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local p6, "exemptedUidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "FW-KnoxVpnHelper"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 998
    .local v4, "token":J
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 999
    .local v6, "uid":Ljava/lang/Integer;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v8, 0x24000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1002
    const/4 v8, 0x0

    .line 1004
    .local v8, "updateInfo":Landroid/net/ProxyInfo;
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-nez p3, :cond_51

    .line 1005
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preparing the broadcast which contains default proxy configuration for the uid added to knox vpn "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v11, Landroid/net/ProxyInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v9, v12}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v8, v11

    .line 1007
    invoke-virtual {v8, v10}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V

    move/from16 v11, p4

    goto :goto_ab

    .line 1009
    :cond_51
    invoke-virtual/range {p3 .. p3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v13, 0x1

    if-eq v11, v12, :cond_83

    .line 1010
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "preparing the broadcast which contains pac configuration for the uid added to knox vpn "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v12

    invoke-direct {v9, v11, v12}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    move-object v8, v9

    .line 1013
    invoke-virtual {v8, v13}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_80} :catch_229
    .catchall {:try_start_a .. :try_end_80} :catchall_223

    move/from16 v11, p4

    goto :goto_ab

    .line 1014
    :cond_83
    move/from16 v11, p4

    if-eq v11, v9, :cond_ab

    .line 1015
    :try_start_87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preparing the broadcast which contains static proxy configuration for the uid added to knox vpn "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v9, Landroid/net/ProxyInfo;

    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {p3 .. p3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v14

    invoke-direct {v9, v12, v14}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    move-object v8, v9

    .line 1018
    invoke-virtual {v8, v13}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V

    .line 1021
    :cond_ab
    :goto_ab
    const-string v9, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1022
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v2, :cond_cd

    .line 1023
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "skipping sending the broadcast which contains proxy configuration to vpn client for per-app use-case "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_cb} :catch_217
    .catchall {:try_start_87 .. :try_end_cb} :catchall_213

    .line 1024
    goto/16 :goto_12

    .line 1025
    :cond_cd
    move-object/from16 v9, p1

    :try_start_cf
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1c2

    .line 1026
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v12

    .line 1027
    .local v12, "vendorPackageName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v13

    .line 1028
    .local v13, "pkgNames":[Ljava/lang/String;
    if-eqz v13, :cond_1bf

    .line 1029
    array-length v14, v13

    move v15, v10

    :goto_eb
    if-ge v15, v14, :cond_1bc

    aget-object v16, v13, v15

    move-object/from16 v17, v16

    .line 1030
    .local v17, "pkgName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1031
    .local v16, "isExempted":Z
    move-object/from16 v10, v17

    .end local v17    # "pkgName":Ljava/lang/String;
    .local v10, "pkgName":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_114

    .line 1032
    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skipping sending the broadcast which contains proxy configuration to vpn client for addAll use-case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    goto/16 :goto_1b1

    .line 1035
    :cond_114
    move-object/from16 v17, v0

    invoke-virtual/range {p6 .. p6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_184

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1036
    .local v1, "exemptedUid":I
    move-object/from16 v18, v0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_17a

    .line 1037
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "exemptedPackages":[Ljava/lang/String;
    if-nez v0, :cond_145

    .line 1039
    move/from16 v2, p2

    move-object/from16 v0, v18

    goto :goto_11a

    .line 1040
    :cond_145
    array-length v2, v0

    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "exemptedUid":I
    .local v19, "exemptedUid":I
    :goto_149
    if-ge v1, v2, :cond_177

    aget-object v20, v0, v1

    move-object/from16 v21, v20

    .line 1041
    .local v21, "exemptedPackage":Ljava/lang/String;
    move-object/from16 v20, v0

    move-object/from16 v0, v21

    .end local v21    # "exemptedPackage":Ljava/lang/String;
    .local v0, "exemptedPackage":Ljava/lang/String;
    .local v20, "exemptedPackages":[Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_172

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipping sending the broadcast which contains proxy configuration to exempted uid for addAll use-case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v1, 0x1

    .line 1044
    .end local v16    # "isExempted":Z
    .local v1, "isExempted":Z
    move/from16 v16, v1

    goto :goto_17c

    .line 1040
    .end local v0    # "exemptedPackage":Ljava/lang/String;
    .end local v1    # "isExempted":Z
    .restart local v16    # "isExempted":Z
    :cond_172
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v20

    goto :goto_149

    .end local v20    # "exemptedPackages":[Ljava/lang/String;
    .local v0, "exemptedPackages":[Ljava/lang/String;
    :cond_177
    move-object/from16 v20, v0

    .end local v0    # "exemptedPackages":[Ljava/lang/String;
    .restart local v20    # "exemptedPackages":[Ljava/lang/String;
    goto :goto_17c

    .line 1036
    .end local v19    # "exemptedUid":I
    .end local v20    # "exemptedPackages":[Ljava/lang/String;
    .local v1, "exemptedUid":I
    :cond_17a
    move/from16 v19, v1

    .line 1048
    .end local v1    # "exemptedUid":I
    .restart local v19    # "exemptedUid":I
    :goto_17c
    if-eqz v16, :cond_17f

    .line 1049
    goto :goto_184

    .line 1050
    .end local v19    # "exemptedUid":I
    :cond_17f
    move/from16 v2, p2

    move-object/from16 v0, v18

    goto :goto_11a

    .line 1051
    :cond_184
    :goto_184
    if-eqz v16, :cond_187

    .line 1052
    goto :goto_1b1

    .line 1054
    :cond_187
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v0, :cond_1a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending proxy broadcast to the app added to knox vpn profile for addAll use-case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_1a0
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1029
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v16    # "isExempted":Z
    :goto_1b1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, v17

    const/4 v10, 0x0

    goto/16 :goto_eb

    :cond_1bc
    move-object/from16 v17, v0

    goto :goto_1c1

    .line 1028
    :cond_1bf
    move-object/from16 v17, v0

    .line 1059
    .end local v12    # "vendorPackageName":Ljava/lang/String;
    .end local v13    # "pkgNames":[Ljava/lang/String;
    :goto_1c1
    goto :goto_209

    .line 1060
    :cond_1c2
    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "pkgNames":[Ljava/lang/String;
    if-eqz v0, :cond_209

    .line 1062
    array-length v1, v0

    const/4 v10, 0x0

    :goto_1d4
    if-ge v10, v1, :cond_209

    aget-object v2, v0, v10

    .line 1063
    .local v2, "pkgName":Ljava/lang/String;
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v12, :cond_1f1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sending proxy broadcast to the app added to knox vpn profile for per use-case "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1f1
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_206} :catch_211
    .catchall {:try_start_cf .. :try_end_206} :catchall_249

    .line 1062
    .end local v2    # "pkgName":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d4

    .line 1069
    .end local v0    # "pkgNames":[Ljava/lang/String;
    .end local v6    # "uid":Ljava/lang/Integer;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "updateInfo":Landroid/net/ProxyInfo;
    :cond_209
    :goto_209
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, v17

    goto/16 :goto_12

    .line 1070
    :catch_211
    move-exception v0

    goto :goto_22e

    .line 1073
    :catchall_213
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_24a

    .line 1070
    :catch_217
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_22e

    .line 1073
    :cond_21b
    move-object/from16 v9, p1

    move/from16 v11, p4

    :goto_21f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1074
    goto :goto_248

    .line 1073
    :catchall_223
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    goto :goto_24a

    .line 1070
    :catch_229
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    .line 1071
    .local v0, "e":Ljava/lang/Exception;
    :goto_22e
    :try_start_22e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured while sending proxy broadcast to knox vpn apps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_246
    .catchall {:try_start_22e .. :try_end_246} :catchall_249

    .line 1073
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_21f

    .line 1075
    :goto_248
    return-void

    .line 1073
    :catchall_249
    move-exception v0

    :goto_24a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1074
    throw v0
.end method

.method protected setProxyFlagForEmail(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "hasProxy"    # Z

    .line 987
    const-string/jumbo v0, "net.vpn.proxy.email."

    if-eqz p2, :cond_1a

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 990
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :goto_2e
    return-void
.end method

.method protected setRandomIpChainName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;

    .line 2050
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 2051
    .local v0, "SALTCHARS":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2053
    .local v1, "saltStr":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2054
    .local v2, "salt":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 2055
    .local v3, "rnd":Ljava/util/Random;
    const/4 v4, 0x1

    .line 2056
    .local v4, "isUnique":Z
    :goto_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_29

    .line 2057
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 2058
    .local v5, "index":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2059
    .end local v5    # "index":I
    goto :goto_e

    .line 2060
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2062
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2063
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 2064
    goto :goto_37

    .line 2066
    :cond_4e
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getIpChainName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 2067
    const/4 v4, 0x0

    .line 2068
    goto :goto_5b

    .line 2070
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_5a
    goto :goto_37

    .line 2072
    :cond_5b
    :goto_5b
    if-eqz v4, :cond_83

    .line 2073
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 2074
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v5, :cond_6d

    .line 2075
    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setIpChainName(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateIpChainNameForProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    nop

    .line 2083
    .end local v2    # "salt":Ljava/lang/StringBuilder;
    .end local v3    # "rnd":Ljava/util/Random;
    .end local v4    # "isUnique":Z
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    return-object v1

    .line 2079
    .restart local v2    # "salt":Ljava/lang/StringBuilder;
    .restart local v3    # "rnd":Ljava/util/Random;
    .restart local v4    # "isUnique":Z
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_6d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occured while trying to get the setRandomIpChainName for profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FW-KnoxVpnHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    .end local v2    # "salt":Ljava/lang/StringBuilder;
    .end local v3    # "rnd":Ljava/util/Random;
    .end local v4    # "isUnique":Z
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_83
    goto/16 :goto_3
.end method

.method protected startUid(I)I
    .registers 7
    .param p1, "containerId"    # I

    .line 1163
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, -0x1

    .line 1165
    .local v1, "firstUid":I
    const v2, 0x186a0

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 1166
    .end local v1    # "firstUid":I
    .local v2, "firstUid":I
    :try_start_9
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    .line 1169
    :cond_22
    goto :goto_3d

    .line 1167
    :catch_23
    move-exception v1

    .line 1168
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    return v2
.end method

.method protected stopUid(I)I
    .registers 8
    .param p1, "containerId"    # I

    .line 1174
    const-string v0, "FW-KnoxVpnHelper"

    const/4 v1, -0x1

    .line 1175
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 1177
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    .line 1178
    .end local v1    # "firstUid":I
    .local v3, "firstUid":I
    :try_start_a
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_23
    add-int/lit8 v1, v3, -0x1

    const v4, 0x1869f

    add-int v2, v1, v4

    .line 1180
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_43} :catch_44

    .line 1183
    :cond_43
    goto :goto_5e

    .line 1181
    :catch_44
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    return v2
.end method

.method protected updateExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1203
    const-string/jumbo v0, "packageUid"

    const-string/jumbo v1, "packageName"

    const-string v2, "FW-KnoxVpnHelper"

    const-string/jumbo v3, "vpnExemptInfo"

    const/4 v4, 0x0

    .line 1205
    .local v4, "result":Z
    :try_start_c
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const-string/jumbo v10, "profileName"

    filled-new-array {v10, v0}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v3, v6, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1209
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5e

    .line 1210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updating exempted application details after install-uninstall "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "columns":[Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object p2, v1, v9

    .line 1219
    .local v1, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-virtual {v7, v3, v0, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5d} :catch_5f

    move v4, v2

    .line 1223
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "values":[Ljava/lang/String;
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_5e
    goto :goto_79

    .line 1221
    :catch_5f
    move-exception v0

    .line 1222
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExemptedListToDatabase : Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    return v4
.end method

.method protected updateIpChainNameForProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "ipChainName"    # Ljava/lang/String;

    .line 1405
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1406
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "vpnIpChainName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string/jumbo v1, "profileName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1408
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1409
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 1410
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIpChainNameForProfile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FW-KnoxVpnHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    return-void
.end method

.method protected updateProxyList(IZ)Ljava/util/HashMap;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "isUserId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 981
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 982
    .local v0, "uidToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    return-object v0
.end method

.method protected updateUsbTetherAuthDetails(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 20
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "authDetails"    # Landroid/os/Bundle;
    .param p3, "addOrRemove"    # Z

    .line 1450
    move-object/from16 v0, p2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1451
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "usbTetheringAuth"

    const-string/jumbo v5, "tetherServerAlias"

    const-string/jumbo v6, "tetherServerCert"

    const-string/jumbo v7, "tetherCAlias"

    const-string/jumbo v8, "tetherCACert"

    const-string/jumbo v9, "tetherCaptivePortalAlias"

    const-string/jumbo v10, "tetherCaptivePortalCert"

    const-string/jumbo v11, "tetherClientCertIssuedCN"

    const-string/jumbo v12, "tetherClientCertIssuerCN"

    const-string/jumbo v13, "tetherResponsePage"

    const-string/jumbo v14, "tetherLoginpage"

    if-eqz p3, :cond_ff

    .line 1452
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1454
    const-string/jumbo v4, "key-tether-auth-login-page"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 1455
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 1457
    :cond_44
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1460
    :goto_47
    const-string/jumbo v4, "key-tether-auth-response-page"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_58

    .line 1461
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 1463
    :cond_58
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1466
    :goto_5b
    const-string/jumbo v4, "key-tether-client-certificate-issuer-cn"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6c

    .line 1467
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 1469
    :cond_6c
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1472
    :goto_6f
    const-string/jumbo v4, "key-tether-client-certificate-issued-cn"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_80

    .line 1473
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 1475
    :cond_80
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1478
    :goto_83
    const-string/jumbo v4, "key-tether-captive-portal-alias"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 1479
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 1481
    :cond_94
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1484
    :goto_97
    const-string/jumbo v4, "key-tether-captive-portal-certificate"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 1485
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_ab

    .line 1487
    :cond_a8
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1490
    :goto_ab
    const-string/jumbo v4, "key-tether-ca-alias"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 1491
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 1493
    :cond_bc
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1496
    :goto_bf
    const-string/jumbo v4, "key-tether-ca-certificate"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 1497
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_d3

    .line 1499
    :cond_d0
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1502
    :goto_d3
    const-string/jumbo v4, "key-tether-user-certificate"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 1503
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_e7

    .line 1505
    :cond_e4
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1508
    :goto_e7
    const-string/jumbo v4, "key-tether-user-alias"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 1509
    const-string/jumbo v4, "key-tether-user-alias"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124

    .line 1511
    :cond_fb
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_124

    .line 1514
    :cond_ff
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1516
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1532
    :goto_124
    const-string/jumbo v4, "profileName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 1533
    .local v4, "columns":[Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    .line 1534
    .local v2, "values":[Ljava/lang/String;
    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "VpnProfileInfo"

    invoke-virtual {v5, v6, v4, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 1535
    .local v5, "result":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update db with usbTetheringAuthConfig result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FW-KnoxVpnHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-void
.end method

.method protected updateUsbTetheringForProfileInDb(Ljava/lang/String;I)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "usbEnabled"    # I

    .line 1441
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1442
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "usbTethering"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1443
    const-string/jumbo v1, "profileName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1445
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 1446
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUsbTetheringForProfileInDb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FW-KnoxVpnHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return-void
.end method
