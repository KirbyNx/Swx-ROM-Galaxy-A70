.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static final TETHER_AUTH_TAG:Ljava/lang/String; = "KnoxVpnTetherAuthentication"

.field private static mContext:Landroid/content/Context;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mUserMgr:Landroid/os/UserManager;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 95
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 97
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 99
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 103
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 105
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 107
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 109
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 113
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 115
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 116
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 117
    return-void
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 4

    .line 151
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 152
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2f

    .line 153
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_2f

    .line 154
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 155
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConnectionService value is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnApiValidation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2f
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private static getEnterpriseDeviceManager()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    .line 137
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 138
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 140
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v1, :cond_e

    .line 121
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 123
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 119
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 2

    .line 144
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_c

    .line 145
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 147
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private static getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    .line 128
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 129
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 130
    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 133
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 163
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 165
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    return-object v0
.end method

.method private isUserTypeAppSeparation(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "isAppSeparationUser":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getUserManager()Landroid/os/UserManager;

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 173
    .local v1, "token":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 174
    .local v3, "ui":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1c

    if-eqz v4, :cond_17

    .line 175
    const/4 v0, 0x1

    .line 178
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    return v0

    .line 178
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v3
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)I
    .registers 10
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 744
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 747
    .local v1, "validationResult":I
    if-eqz p2, :cond_71

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_71

    .line 752
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 753
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 754
    const/16 v0, 0x6c

    .line 755
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 757
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_21

    .line 758
    const/16 v0, 0x70

    .line 759
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 763
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_21
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 764
    .local v3, "routeType":I
    if-nez v3, :cond_2a

    .line 765
    const/16 v0, 0x6d

    .line 766
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 769
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_2a
    if-eqz p3, :cond_37

    .line 770
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4

    .line 771
    .local v4, "currentStateOfProfile":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    .line 772
    const/16 v0, 0x73

    .line 773
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 775
    .end local v0    # "validationResult":I
    .end local v4    # "currentStateOfProfile":I
    .restart local v1    # "validationResult":I
    :cond_36
    goto :goto_40

    .line 776
    :cond_37
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_41

    .line 777
    .restart local v4    # "currentStateOfProfile":I
    if-nez v4, :cond_40

    .line 778
    const/16 v0, 0x74

    .line 779
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 786
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "currentStateOfProfile":I
    .restart local v1    # "validationResult":I
    :cond_40
    :goto_40
    goto :goto_5c

    .line 783
    :catch_41
    move-exception v2

    .line 784
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/16 v1, 0x65

    .line 787
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return v1

    .line 748
    :cond_71
    :goto_71
    const/16 v0, 0x68

    .line 749
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .line 1158
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1162
    .local v1, "validationResult":I
    if-eqz p3, :cond_ea

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_c

    goto/16 :goto_ea

    .line 1167
    :cond_c
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1168
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_17

    .line 1169
    const/16 v0, 0x6c

    .line 1170
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1172
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_22

    .line 1173
    const/16 v0, 0x70

    .line 1174
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1178
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 1179
    .local v3, "routeType":I
    if-nez v3, :cond_2b

    .line 1180
    const/16 v0, 0x6d

    .line 1181
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1184
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_2b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v4

    .line 1185
    .local v4, "vpnConnectionType":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 1186
    const/16 v0, 0x2be

    .line 1187
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1190
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_35
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5

    .line 1191
    .local v5, "isChainingEnabled":I
    if-nez v5, :cond_3e

    .line 1192
    const/16 v0, 0x1f5

    .line 1193
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1196
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_3e
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 1197
    const/4 v6, 0x0

    .line 1199
    .local v6, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    if-eqz v7, :cond_59

    .line 1200
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v7

    move v6, v7

    .line 1201
    if-nez v6, :cond_59

    .line 1202
    const/16 v0, 0x71

    .line 1203
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1208
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_59
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v7

    .line 1209
    .local v7, "containerOwner":I
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    iget v9, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v8, v9, :cond_6e

    .line 1210
    const/16 v0, 0x72

    .line 1211
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1216
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_6e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    if-eqz v8, :cond_8c

    .line 1217
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v8

    move v6, v8

    .line 1218
    if-eqz v6, :cond_8c

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v8

    if-eq v8, p2, :cond_8c

    .line 1219
    const/16 v0, 0x71

    .line 1220
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1225
    .end local v0    # "validationResult":I
    .end local v6    # "isPersonaIdIsValid":Z
    .end local v7    # "containerOwner":I
    .restart local v1    # "validationResult":I
    :cond_8c
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1226
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, p3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 1227
    const/16 v0, 0x7b

    .line 1228
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1232
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_a1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 1233
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v0, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b1} :catch_ba

    if-ne v6, v0, :cond_b6

    .line 1234
    const/16 v0, 0x75

    .line 1235
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1237
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_b6
    const/16 v0, 0x76

    .line 1238
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1245
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "vpnConnectionType":I
    .end local v5    # "isChainingEnabled":I
    .restart local v1    # "validationResult":I
    :cond_b9
    goto :goto_d5

    .line 1242
    :catch_ba
    move-exception v2

    .line 1243
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/16 v1, 0x65

    .line 1246
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return v1

    .line 1163
    :cond_ea
    :goto_ea
    const/16 v0, 0x68

    .line 1164
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public addAllPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1316
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1320
    .local v1, "validationResult":I
    if-eqz p2, :cond_a2

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_c

    goto/16 :goto_a2

    .line 1325
    :cond_c
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1326
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_17

    .line 1327
    const/16 v0, 0x6c

    .line 1328
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1330
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_22

    .line 1331
    const/16 v0, 0x70

    .line 1332
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1336
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 1337
    .local v3, "routeType":I
    if-nez v3, :cond_2b

    .line 1338
    const/16 v0, 0x6d

    .line 1339
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1342
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_2b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v4

    .line 1343
    .local v4, "vpnConnectionType":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 1344
    const/16 v0, 0x2be

    .line 1345
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1348
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_35
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5

    .line 1349
    .local v5, "isChainingEnabled":I
    if-nez v5, :cond_3e

    .line 1350
    const/16 v0, 0x1f5

    .line 1351
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1354
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_3e
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1355
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, p2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_55

    .line 1356
    const/16 v0, 0x7b

    .line 1357
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1361
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_55
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1362
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v0, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_69} :catch_72

    if-ne v6, v0, :cond_6e

    .line 1363
    const/16 v0, 0x75

    .line 1364
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1366
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_6e
    const/16 v0, 0x76

    .line 1367
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1374
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "vpnConnectionType":I
    .end local v5    # "isChainingEnabled":I
    .restart local v1    # "validationResult":I
    :cond_71
    goto :goto_8d

    .line 1371
    :catch_72
    move-exception v2

    .line 1372
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/16 v1, 0x65

    .line 1375
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return v1

    .line 1321
    :cond_a2
    :goto_a2
    const/16 v0, 0x68

    .line 1322
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public addContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 25
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .line 824
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "KnoxVpnApiValidation"

    const/16 v7, 0x64

    .line 828
    .local v7, "validationResult":I
    if-eqz v5, :cond_220

    if-eqz v4, :cond_220

    :try_start_12
    array-length v0, v4

    const/4 v8, 0x1

    if-lt v0, v8, :cond_220

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto/16 :goto_220

    .line 833
    :cond_1c
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 834
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_27

    .line 835
    const/16 v6, 0x6c

    .line 836
    .end local v7    # "validationResult":I
    .local v6, "validationResult":I
    return v6

    .line 838
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v9, v10, :cond_32

    .line 839
    const/16 v6, 0x70

    .line 840
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 844
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v9

    .line 845
    .local v9, "routeType":I
    if-nez v9, :cond_3b

    .line 846
    const/16 v6, 0x6d

    .line 847
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 850
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_3b
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v10

    if-nez v10, :cond_89

    .line 851
    const/4 v10, 0x0

    .line 853
    .local v10, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    if-eqz v11, :cond_56

    .line 854
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11

    move v10, v11

    .line 855
    if-nez v10, :cond_56

    .line 856
    const/16 v6, 0x71

    .line 857
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 862
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_56
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    .line 863
    .local v11, "containerOwner":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v12, v13, :cond_6b

    .line 864
    const/16 v6, 0x72

    .line 865
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 870
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_6b
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    if-eqz v12, :cond_89

    .line 871
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v12

    move v10, v12

    .line 872
    if-eqz v10, :cond_89

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v12

    if-eq v12, v3, :cond_89

    .line 873
    const/16 v6, 0x71

    .line 874
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 879
    .end local v6    # "validationResult":I
    .end local v10    # "isPersonaIdIsValid":Z
    .end local v11    # "containerOwner":I
    .restart local v7    # "validationResult":I
    :cond_89
    array-length v10, v4
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_8a} :catch_1f0

    const/4 v12, 0x0

    :goto_8b
    const-string v13, "ADD_ALL_PACKAGES"

    if-ge v12, v10, :cond_149

    :try_start_8f
    aget-object v14, v4, v12

    .line 880
    .local v14, "tempPackage":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 881
    const/16 v6, 0x89

    .line 882
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 884
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_a0
    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 885
    .local v13, "transformedPackage":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 886
    .local v15, "profileOwningPackage":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v11

    .line 887
    .local v11, "profileOwnerInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v11, :cond_d6

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 888
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    move/from16 v17, v9

    .end local v9    # "routeType":I
    .local v17, "routeType":I
    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_cb

    .line 889
    const/16 v6, 0x87

    .line 890
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 891
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_cb
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_d8

    .line 892
    const/16 v6, 0x88

    .line 893
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 887
    .end local v6    # "validationResult":I
    .end local v17    # "routeType":I
    .restart local v7    # "validationResult":I
    .restart local v9    # "routeType":I
    :cond_d6
    move/from16 v17, v9

    .line 896
    .end local v9    # "routeType":I
    .restart local v17    # "routeType":I
    :cond_d8
    if-eqz v11, :cond_ef

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 897
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_ef

    .line 898
    const/16 v6, 0x87

    .line 899
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 902
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_ef
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v8

    .line 903
    .local v8, "appUid":I
    if-lez v8, :cond_11b

    .line 904
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v9

    .line 905
    .local v9, "profileOwningUid":Ljava/lang/String;
    if-eqz v9, :cond_108

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_108

    .line 906
    const/16 v6, 0x8b

    .line 907
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 909
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_108
    move-object/from16 v18, v9

    .end local v9    # "profileOwningUid":Ljava/lang/String;
    .local v18, "profileOwningUid":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v9

    .line 910
    .local v9, "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    if-eqz v9, :cond_11b

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11b

    .line 911
    const/16 v6, 0x8b

    .line 912
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 915
    .end local v6    # "validationResult":I
    .end local v9    # "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    .end local v18    # "profileOwningUid":Ljava/lang/String;
    .restart local v7    # "validationResult":I
    :cond_11b
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v9

    if-eqz v9, :cond_126

    .line 916
    const/16 v6, 0x89

    .line 917
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 919
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_126
    const-string v9, "com.knox.vpn.proxyhandler"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_131

    .line 920
    const/16 v6, 0x89

    .line 921
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 923
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_131
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v8

    .end local v8    # "appUid":I
    .local v18, "appUid":I
    const-string v8, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_142

    .line 924
    const/16 v6, 0x86

    .line 925
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 879
    .end local v6    # "validationResult":I
    .end local v11    # "profileOwnerInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v13    # "transformedPackage":Ljava/lang/String;
    .end local v14    # "tempPackage":Ljava/lang/String;
    .end local v15    # "profileOwningPackage":Ljava/lang/String;
    .end local v18    # "appUid":I
    .restart local v7    # "validationResult":I
    :cond_142
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v17

    const/4 v8, 0x1

    goto/16 :goto_8b

    .line 930
    .end local v17    # "routeType":I
    .local v9, "routeType":I
    :cond_149
    move/from16 v17, v9

    .end local v9    # "routeType":I
    .restart local v17    # "routeType":I
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_1ed

    .line 931
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_1e8

    .line 934
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 935
    .local v8, "profileOwningPackage":Ljava/lang/String;
    if-eqz v8, :cond_1e5

    .line 936
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17e

    .line 937
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_17d

    .line 941
    const/16 v6, 0x77

    .line 942
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 939
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_17d
    return v7

    .line 945
    :cond_17e
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_188

    .line 946
    const/16 v6, 0x73

    .line 947
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 949
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_188
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v9

    .line 950
    .local v9, "exemptList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_195

    .line 951
    const/16 v6, 0x77

    .line 952
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 954
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_195
    array-length v10, v4

    const/4 v11, 0x0

    :goto_197
    if-ge v11, v10, :cond_1e2

    aget-object v12, v4, v11

    .line 955
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v13

    .line 956
    .local v13, "uid":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_1db

    .line 957
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d8

    .line 958
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    .line 959
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v5, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v14

    .line 960
    .local v14, "result":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v16, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const-string/jumbo v0, "user wide vpn was configured "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removing uid from exempt list "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_1d7} :catch_1f0

    goto :goto_1dd

    .line 957
    .end local v14    # "result":Z
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1d8
    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    goto :goto_1dd

    .line 956
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1db
    move-object/from16 v16, v0

    .line 954
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_1dd
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    goto :goto_197

    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1e2
    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    goto :goto_1e7

    .line 935
    .end local v9    # "exemptList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1e5
    move-object/from16 v16, v0

    .line 966
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "profileOwningPackage":Ljava/lang/String;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_1e7
    goto :goto_1ef

    .line 967
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1e8
    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/16 v0, 0x78

    .line 968
    .end local v7    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 930
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v7    # "validationResult":I
    :cond_1ed
    move-object/from16 v16, v0

    .line 974
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v17    # "routeType":I
    :goto_1ef
    goto :goto_20b

    .line 971
    :catch_1f0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/16 v7, 0x65

    .line 975
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return v7

    .line 829
    :cond_220
    :goto_220
    const/16 v0, 0x68

    .line 830
    .end local v7    # "validationResult":I
    .local v0, "validationResult":I
    return v0
.end method

.method public addPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 28
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .line 498
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "KnoxVpnApiValidation"

    const/16 v6, 0x64

    .line 501
    .local v6, "validationResult":I
    if-eqz v4, :cond_1ff

    if-eqz v3, :cond_1ff

    :try_start_10
    array-length v0, v3

    const/4 v7, 0x1

    if-lt v0, v7, :cond_1ff

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_1a

    goto/16 :goto_1ff

    .line 506
    :cond_1a
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 507
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_25

    .line 508
    const/16 v5, 0x6c

    .line 509
    .end local v6    # "validationResult":I
    .local v5, "validationResult":I
    return v5

    .line 511
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_30

    .line 512
    const/16 v5, 0x70

    .line 513
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 517
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    .line 518
    .local v8, "routeType":I
    if-nez v8, :cond_39

    .line 519
    const/16 v5, 0x6d

    .line 520
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 523
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_39
    array-length v9, v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_1cf

    const/4 v11, 0x0

    :goto_3b
    const-string v12, "ADD_ALL_PACKAGES"

    if-ge v11, v9, :cond_fd

    :try_start_3f
    aget-object v13, v3, v11

    .line 524
    .local v13, "tempPackage":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v14, v15, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_52

    .line 525
    const/16 v5, 0x89

    .line 526
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 528
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_52
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v14, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 529
    .local v12, "transformedPackage":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 530
    .local v14, "profileOwningPackage":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .line 531
    .local v15, "profileOwnerInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v15, :cond_88

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 532
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v10

    iget v7, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v10, v7, :cond_7d

    .line 533
    const/16 v5, 0x87

    .line 534
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 535
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_7d
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v7, v10, :cond_88

    .line 536
    const/16 v5, 0x88

    .line 537
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 540
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_88
    if-eqz v15, :cond_9f

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 541
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v10, :cond_9f

    .line 542
    const/16 v5, 0x87

    .line 543
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 546
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_9f
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v10, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v7

    .line 547
    .local v7, "appUid":I
    if-lez v7, :cond_cd

    .line 548
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, "profileOwningUid":Ljava/lang/String;
    if-eqz v10, :cond_ba

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_ba

    .line 550
    const/16 v5, 0x8b

    .line 551
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 553
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_ba
    move/from16 v16, v8

    .end local v8    # "routeType":I
    .local v16, "routeType":I
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v8

    .line 554
    .local v8, "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    if-eqz v8, :cond_cf

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_cf

    .line 555
    const/16 v5, 0x8b

    .line 556
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 547
    .end local v5    # "validationResult":I
    .end local v10    # "profileOwningUid":Ljava/lang/String;
    .end local v16    # "routeType":I
    .restart local v6    # "validationResult":I
    .local v8, "routeType":I
    :cond_cd
    move/from16 v16, v8

    .line 559
    .end local v8    # "routeType":I
    .restart local v16    # "routeType":I
    :cond_cf
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 560
    const/16 v5, 0x89

    .line 561
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 563
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_dc
    const-string v8, "com.knox.vpn.proxyhandler"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 564
    const/16 v5, 0x89

    .line 565
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 567
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_e7
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 568
    const/16 v5, 0x86

    .line 569
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 523
    .end local v5    # "validationResult":I
    .end local v7    # "appUid":I
    .end local v12    # "transformedPackage":Ljava/lang/String;
    .end local v13    # "tempPackage":Ljava/lang/String;
    .end local v14    # "profileOwningPackage":Ljava/lang/String;
    .end local v15    # "profileOwnerInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "validationResult":I
    :cond_f6
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    const/4 v7, 0x1

    goto/16 :goto_3b

    .line 574
    .end local v16    # "routeType":I
    .restart local v8    # "routeType":I
    :cond_fd
    move/from16 v16, v8

    .end local v8    # "routeType":I
    .restart local v16    # "routeType":I
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_1ce

    .line 575
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_1cb

    .line 577
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 578
    .local v7, "profileOwningPackage":Ljava/lang/String;
    if-eqz v7, :cond_1ca

    .line 579
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_138

    .line 580
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_137

    .line 584
    const/16 v5, 0x77

    .line 585
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 582
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_137
    return v6

    .line 588
    :cond_138
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_142

    .line 589
    const/16 v5, 0x73

    .line 590
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 592
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_142
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    .line 593
    .local v8, "exemptList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_14f

    .line 594
    const/16 v5, 0x77

    .line 595
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 597
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_14f
    array-length v9, v3

    const/4 v10, 0x0

    :goto_151
    if-ge v10, v9, :cond_1ca

    aget-object v11, v3, v10

    .line 598
    .local v11, "packageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    .line 599
    .local v12, "uid":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1c7

    .line 600
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c7

    .line 601
    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    .line 602
    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v4, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v13

    .line 603
    .local v13, "result":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "user wide vpn was configured "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "removing uid from exempt list "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x1

    .line 605
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    const-string v21, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " added to vpn for profile "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ". Removed from exempt list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 604
    move/from16 v23, v14

    invoke-static/range {v17 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_1c7} :catch_1cf

    .line 597
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v13    # "result":Z
    :cond_1c7
    add-int/lit8 v10, v10, 0x1

    goto :goto_151

    .line 613
    .end local v7    # "profileOwningPackage":Ljava/lang/String;
    .end local v8    # "exemptList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1ca
    goto :goto_1ce

    .line 614
    :cond_1cb
    const/16 v5, 0x78

    .line 615
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 622
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "validationResult":I
    .end local v16    # "routeType":I
    .restart local v6    # "validationResult":I
    :cond_1ce
    :goto_1ce
    goto :goto_1ea

    .line 619
    :catch_1cf
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v6, 0x65

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return v6

    .line 502
    :cond_1ff
    :goto_1ff
    const/16 v0, 0x68

    .line 503
    .end local v6    # "validationResult":I
    .local v0, "validationResult":I
    return v0
.end method

.method public allowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 31
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "whitelistInfo"    # Landroid/os/Bundle;

    .line 1514
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "com.samsung.knox.vpn.tether.auth"

    const-string v5, "KnoxVpnApiValidation"

    const-string/jumbo v6, "key-tether-client-certificate-issued-cn"

    const-string/jumbo v7, "key-tether-client-certificate-issuer-cn"

    const-string/jumbo v8, "key-tether-auth-response-page"

    const-string/jumbo v9, "key-tether-auth-login-page"

    const-string/jumbo v10, "key-tether-ca-certificate"

    const-string/jumbo v11, "key-tether-captive-portal-certificate"

    const-string/jumbo v12, "key-tether-user-certificate"

    const-string/jumbo v13, "key-tether-ca-cert-password"

    const-string/jumbo v14, "key-tether-captive-portal-cert-password"

    const/16 v15, 0x64

    .line 1516
    .local v15, "validationResult":I
    if-eqz v3, :cond_43b

    move-object/from16 v16, v5

    :try_start_2d
    iget-object v5, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_33

    goto/16 :goto_43b

    .line 1521
    :cond_33
    iget-object v5, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 1522
    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_3e

    .line 1523
    const/16 v0, 0x6c

    .line 1524
    .end local v15    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1526
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_3e
    move-object/from16 v17, v12

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v12

    move-object/from16 v18, v13

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v12, v13, :cond_4d

    .line 1527
    const/16 v0, 0x70

    .line 1528
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1532
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_4d
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v12

    .line 1533
    .local v12, "routeType":I
    if-nez v12, :cond_56

    .line 1534
    const/16 v0, 0x6d

    .line 1535
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1538
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_56
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v13

    .line 1539
    .local v13, "isChainingEnabled":I
    if-nez v13, :cond_5f

    .line 1540
    const/16 v0, 0x385

    .line 1541
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1544
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_5f
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v19

    move/from16 v20, v19

    .line 1545
    .local v20, "connectionType":I
    move/from16 v19, v12

    .end local v12    # "routeType":I
    .local v19, "routeType":I
    const/4 v12, 0x1

    move/from16 v21, v13

    move/from16 v13, v20

    .end local v20    # "connectionType":I
    .local v13, "connectionType":I
    .local v21, "isChainingEnabled":I
    if-ne v13, v12, :cond_71

    .line 1546
    const/16 v0, 0x385

    .line 1547
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1550
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_71
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v20

    move/from16 v22, v20

    .line 1551
    .local v22, "uidPidSearchEnabled":I
    move-object/from16 v20, v5

    move/from16 v5, v22

    .end local v22    # "uidPidSearchEnabled":I
    .local v5, "uidPidSearchEnabled":I
    .local v20, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-ne v5, v12, :cond_80

    .line 1552
    const/16 v0, 0x385

    .line 1553
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1557
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_80
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v12

    .line 1558
    .local v12, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    if-eqz v12, :cond_c7

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v23

    if-lez v23, :cond_c7

    .line 1559
    move/from16 v23, v5

    .end local v5    # "uidPidSearchEnabled":I
    .local v23, "uidPidSearchEnabled":I
    iget-object v5, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1560
    .local v24, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v5

    move-object/from16 v26, v12

    const/4 v12, 0x1

    .end local v12    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    .local v26, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    if-ne v5, v12, :cond_bf

    .line 1561
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 1562
    const/16 v0, 0x385

    .line 1563
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1565
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_be
    return v15

    .line 1568
    .end local v24    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_bf
    move-object/from16 v5, v25

    move-object/from16 v12, v26

    goto :goto_9a

    .line 1559
    .end local v26    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    .restart local v12    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_c4
    move-object/from16 v26, v12

    .end local v12    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    .restart local v26    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    goto :goto_cb

    .line 1558
    .end local v23    # "uidPidSearchEnabled":I
    .end local v26    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    .restart local v5    # "uidPidSearchEnabled":I
    .restart local v12    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_c7
    move/from16 v23, v5

    move-object/from16 v26, v12

    .line 1571
    .end local v5    # "uidPidSearchEnabled":I
    .end local v12    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    .restart local v23    # "uidPidSearchEnabled":I
    .restart local v26    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :goto_cb
    if-eqz v4, :cond_404

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_404

    .line 1574
    iget-object v5, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v12, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v5
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_db} :catch_409

    const-string v12, "KnoxVpnTetherAuthentication"

    if-nez v5, :cond_e8

    .line 1575
    :try_start_df
    const-string/jumbo v0, "knox vpn usb tether auth application not installed"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/16 v0, 0x385

    .line 1577
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1580
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_e8
    iget-object v5, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v22, v13

    .end local v13    # "connectionType":I
    .local v22, "connectionType":I
    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 1581
    const-string/jumbo v0, "knox vpn usb tether auth application is not signed with proper key"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/16 v0, 0x385

    .line 1583
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1586
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_fd
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1588
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_112

    .line 1589
    const-string/jumbo v0, "loginpage string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/16 v0, 0x385

    .line 1591
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1594
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_112
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1595
    const-string/jumbo v0, "loginpage string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/16 v0, 0x385

    .line 1597
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1601
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_125
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 1603
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13a

    .line 1604
    const-string/jumbo v0, "responsepage string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/16 v0, 0x385

    .line 1606
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1609
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_13a
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 1610
    const-string/jumbo v0, "responsepage string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/16 v0, 0x385

    .line 1612
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1616
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_14d
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1618
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_161

    .line 1619
    const-string v0, "client cert issuer CN string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const/16 v0, 0x385

    .line 1621
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1624
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_161
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1625
    const-string v0, "client cert issuer CN string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/16 v0, 0x385

    .line 1627
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1631
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_173
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1633
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_187

    .line 1634
    const-string v0, "client cert issued CN string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/16 v0, 0x385

    .line 1636
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1639
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_187
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1640
    const-string v0, "client cert issued CN string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/16 v0, 0x385

    .line 1642
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1647
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_199
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_19d} :catch_409

    const-string/jumbo v5, "key-tether-captive-portal-alias"

    if-eqz v0, :cond_1b0

    :try_start_1a2
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 1648
    const-string v0, "config contains both captive portal cert and alias"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/16 v0, 0x385

    .line 1650
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1653
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_1b0
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 1655
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c4

    .line 1656
    const-string v0, "captiveAlias string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/16 v0, 0x385

    .line 1658
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1661
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_1c4
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 1662
    const-string v0, "captiveAlias string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/16 v0, 0x385

    .line 1664
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1668
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_1d6
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 1670
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1ea

    .line 1671
    const-string v0, "captiveCert value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/16 v0, 0x385

    .line 1673
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1676
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_1ea
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_1f9

    .line 1677
    const-string v0, "captiveCert length is not valid"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const/16 v0, 0x385

    .line 1679
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1683
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_1f9
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1fd} :catch_409

    const-string v5, "_"

    if-eqz v0, :cond_24c

    .line 1685
    :try_start_201
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20f

    .line 1686
    const-string v0, "captiveCert credential value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const/16 v0, 0x385

    .line 1688
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1691
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_20f
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_221

    .line 1692
    const-string v0, "captiveCert credential value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/16 v0, 0x385

    .line 1694
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1696
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_221
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "pswd":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "captivecert_pwd"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1698
    .local v6, "ispasswordSaved":Z
    if-nez v6, :cond_249

    .line 1699
    const-string v5, "Saving the captive cert credential inside keystore failed"

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/16 v5, 0x385

    .line 1701
    .end local v15    # "validationResult":I
    .local v5, "validationResult":I
    return v5

    .line 1703
    .end local v5    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_249
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1707
    .end local v0    # "pswd":Ljava/lang/String;
    .end local v6    # "ispasswordSaved":Z
    :cond_24c
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_250} :catch_409

    const-string/jumbo v6, "key-tether-ca-alias"

    if-eqz v0, :cond_263

    :try_start_255
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 1708
    const-string v0, "config contains both ca cert and alias"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/16 v0, 0x385

    .line 1710
    .end local v15    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1713
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_263
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 1715
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_277

    .line 1716
    const-string v0, "caAlias string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const/16 v0, 0x385

    .line 1718
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1721
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_277
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_289

    .line 1722
    const-string v0, "caAlias string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/16 v0, 0x385

    .line 1724
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1728
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_289
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 1730
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_29d

    .line 1731
    const-string v0, "caCert value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/16 v0, 0x385

    .line 1733
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1736
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_29d
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2ac

    .line 1737
    const-string v0, "caCert length is not valid"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/16 v0, 0x385

    .line 1739
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1743
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_2ac
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2fd

    .line 1745
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_2b8} :catch_409

    const-string v7, "caCert credential value is empty"

    if-nez v6, :cond_2c2

    .line 1746
    :try_start_2bc
    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/16 v0, 0x385

    .line 1748
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1751
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_2c2
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d2

    .line 1752
    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/16 v0, 0x385

    .line 1754
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1756
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_2d2
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, "pswd":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cacert_pwd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1758
    .local v7, "ispasswordSaved":Z
    if-nez v7, :cond_2fa

    .line 1759
    const-string v0, "Saving the ca cert credential inside keystore failed"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/16 v0, 0x385

    .line 1761
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1763
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_2fa
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1767
    .end local v6    # "pswd":Ljava/lang/String;
    .end local v7    # "ispasswordSaved":Z
    :cond_2fd
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_303
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_303} :catch_409

    const-string/jumbo v7, "key-tether-user-alias"

    if-eqz v6, :cond_316

    :try_start_308
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_316

    .line 1768
    const-string v0, "config contains both server cert and alias"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/16 v0, 0x385

    .line 1770
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1773
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_316
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33e

    .line 1775
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_32b

    .line 1776
    const-string/jumbo v0, "serverAlias string value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/16 v0, 0x385

    .line 1778
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1781
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_32b
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_33e

    .line 1782
    const-string/jumbo v0, "serverAlias string value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/16 v0, 0x385

    .line 1784
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1788
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_33e
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_342
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_342} :catch_409

    const-string/jumbo v7, "key-tether-user-cert-password"

    if-eqz v6, :cond_3af

    .line 1790
    :try_start_347
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_356

    .line 1791
    const-string/jumbo v0, "serverCert value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/16 v0, 0x385

    .line 1793
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1796
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_356
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    if-gtz v6, :cond_366

    .line 1797
    const-string/jumbo v0, "serverCert length is not valid"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/16 v0, 0x385

    .line 1799
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1802
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_366
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v6, v0

    .line 1803
    .local v6, "certificateInfo":[B
    const-string v0, ""

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1804
    .local v8, "pswd":Ljava/lang/String;
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    move-object v9, v0

    .line 1805
    .local v9, "tempkeystore":Ljava/security/KeyStore;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_37e} :catch_409

    move-object v10, v0

    .line 1807
    .local v10, "inputStream":Ljava/io/InputStream;
    if-nez v8, :cond_386

    .line 1808
    const/4 v0, 0x0

    :try_start_382
    invoke-virtual {v9, v10, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_38d

    .line 1810
    :cond_386
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_38d
    .catch Ljava/io/IOException; {:try_start_382 .. :try_end_38d} :catch_3a2
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_38d} :catch_409

    .line 1817
    :goto_38d
    nop

    .line 1818
    :try_start_38e
    invoke-virtual {v9}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 1819
    .local v0, "aliasList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3af

    .line 1820
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1821
    .local v11, "alias":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1822
    goto :goto_3af

    .line 1812
    .end local v0    # "aliasList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11    # "alias":Ljava/lang/String;
    :catch_3a2
    move-exception v0

    .line 1813
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1814
    const-string/jumbo v5, "serverCert pwd is incorrect"

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/16 v5, 0x385

    .line 1816
    .end local v15    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 1826
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "validationResult":I
    .end local v6    # "certificateInfo":[B
    .end local v8    # "pswd":Ljava/lang/String;
    .end local v9    # "tempkeystore":Ljava/security/KeyStore;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "validationResult":I
    :cond_3af
    :goto_3af
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_406

    .line 1828
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c4

    .line 1829
    const-string/jumbo v0, "serverCert credential value is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const/16 v0, 0x385

    .line 1831
    .end local v15    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1834
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_3c4
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d7

    .line 1835
    const-string/jumbo v0, "serverCert credential value is empty"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/16 v0, 0x385

    .line 1837
    .end local v15    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1839
    .end local v0    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_3d7
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "pswd":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "servercert_pwd"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1841
    .local v5, "ispasswordSaved":Z
    if-nez v5, :cond_400

    .line 1842
    const-string v6, "Saving the server cert password inside keystore failed"

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/16 v6, 0x385

    .line 1844
    .end local v15    # "validationResult":I
    .local v6, "validationResult":I
    return v6

    .line 1846
    .end local v6    # "validationResult":I
    .restart local v15    # "validationResult":I
    :cond_400
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_403
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_403} :catch_409

    goto :goto_406

    .line 1571
    .end local v0    # "pswd":Ljava/lang/String;
    .end local v5    # "ispasswordSaved":Z
    .end local v22    # "connectionType":I
    .restart local v13    # "connectionType":I
    :cond_404
    move/from16 v22, v13

    .line 1852
    .end local v13    # "connectionType":I
    .end local v19    # "routeType":I
    .end local v20    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v21    # "isChainingEnabled":I
    .end local v23    # "uidPidSearchEnabled":I
    .end local v26    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_406
    :goto_406
    move-object/from16 v6, v16

    goto :goto_426

    .line 1849
    :catch_409
    move-exception v0

    .line 1850
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at enableUsbTethering API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v16

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/16 v15, 0x65

    .line 1853
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableUsbTethering : validationResult value is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return v15

    .line 1517
    :cond_43b
    :goto_43b
    const/16 v0, 0x68

    .line 1518
    .end local v15    # "validationResult":I
    .local v0, "validationResult":I
    return v0
.end method

.method public createVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 43
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .line 184
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v0, "keepon"

    const-string v4, "chaining_enabled"

    const-string/jumbo v5, "proxy-password"

    const-string/jumbo v6, "proxy-username"

    const-string v7, "KnoxVpnApiValidation"

    const/16 v8, 0x64

    .line 187
    .local v8, "validationResult":I
    if-eqz v3, :cond_455

    :try_start_17
    iget-object v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_19} :catch_421
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_19} :catch_3ff

    if-nez v9, :cond_1f

    move/from16 v16, v8

    goto/16 :goto_457

    .line 192
    :cond_1f
    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getAdminId()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 193
    .local v9, "adminUserId":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v10

    .line 194
    .local v10, "vpnClientUserId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createVpnProfileValidation:vpnClientUserId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " adminUserId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez v10, :cond_4e

    .line 196
    if-eqz v9, :cond_a1

    .line 197
    const/16 v0, 0x72

    .line 198
    .end local v8    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 202
    .end local v0    # "validationResult":I
    .restart local v8    # "validationResult":I
    :cond_4e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_52} :catch_3fa
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_52} :catch_3ff

    if-eqz v11, :cond_72

    .line 203
    :try_start_54
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_60} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_60} :catch_65

    .line 204
    .local v11, "isPersonaIdIsValid":Z
    if-nez v11, :cond_72

    .line 205
    const/16 v0, 0x71

    .line 206
    .end local v8    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 429
    .end local v0    # "validationResult":I
    .end local v9    # "adminUserId":I
    .end local v10    # "vpnClientUserId":I
    .end local v11    # "isPersonaIdIsValid":Z
    .restart local v8    # "validationResult":I
    :catch_65
    move-exception v0

    move-object/from16 v24, v7

    move/from16 v16, v8

    goto/16 :goto_404

    .line 426
    :catch_6c
    move-exception v0

    move-object v3, v7

    move/from16 v16, v8

    goto/16 :goto_425

    .line 210
    .restart local v9    # "adminUserId":I
    .restart local v10    # "vpnClientUserId":I
    :cond_72
    :try_start_72
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    .line 211
    .local v11, "containerOwner":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createVpnProfileValidation:containerOwner "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " adminuid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v12, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v11, v12, :cond_a1

    .line 213
    const/16 v0, 0x72

    .line 214
    .end local v8    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 218
    .end local v0    # "validationResult":I
    .end local v11    # "containerOwner":I
    .restart local v8    # "validationResult":I
    :cond_a1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v11, "profileObj":Lorg/json/JSONObject;
    const-string v12, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 220
    .local v12, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v13, "profile_attribute"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 221
    .local v13, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v14, "knox"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 223
    .local v14, "knoxAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v15, "profileName"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 224
    .local v15, "profileName":Ljava/lang/String;
    const-string/jumbo v3, "vpn_type"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_c8} :catch_3fa
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_c8} :catch_3ff

    .line 225
    .local v3, "protocolType":Ljava/lang/String;
    move/from16 v16, v8

    .end local v8    # "validationResult":I
    .local v16, "validationResult":I
    :try_start_ca
    const-string/jumbo v8, "vpn_route_type"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 227
    .local v8, "routeType":I
    move/from16 v17, v9

    .end local v9    # "adminUserId":I
    .local v17, "adminUserId":I
    const/4 v9, -0x1

    invoke-virtual {v14, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v19, v18

    .line 228
    .local v19, "chainingEnabled":I
    const-string/jumbo v9, "uidpid_search_enabled"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 229
    .local v9, "uidPidSearchEnabled":I
    move/from16 v20, v10

    .end local v10    # "vpnClientUserId":I
    .local v20, "vpnClientUserId":I
    const-string v10, "connectionType"

    invoke-virtual {v14, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "connectionType":Ljava/lang/String;
    move-object/from16 v21, v11

    .end local v11    # "profileObj":Lorg/json/JSONObject;
    .local v21, "profileObj":Lorg/json/JSONObject;
    const-string/jumbo v11, "proxy-server"

    move-object/from16 v22, v12

    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .local v22, "parentAttrObj":Lorg/json/JSONObject;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    invoke-virtual {v14, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 232
    .local v11, "proxyServer":Ljava/lang/String;
    const-string/jumbo v12, "proxy-port"

    move-object/from16 v23, v13

    const/4 v13, -0x1

    .end local v13    # "profileAttrObj":Lorg/json/JSONObject;
    .local v23, "profileAttrObj":Lorg/json/JSONObject;
    invoke-virtual {v14, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 233
    .local v12, "proxyPort":I
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v14, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_106
    .catch Lorg/json/JSONException; {:try_start_ca .. :try_end_106} :catch_3f7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_106} :catch_3f3

    .line 234
    .local v13, "proxyUsername":Ljava/lang/String;
    move-object/from16 v24, v7

    :try_start_108
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "proxyPassword":Ljava/lang/String;
    move-object/from16 v25, v5

    const-string/jumbo v5, "pac-url"

    move-object/from16 v26, v6

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "pacurl":Ljava/lang/String;
    const-string/jumbo v6, "ipv6-enable"

    move-object/from16 v27, v7

    .end local v7    # "proxyPassword":Ljava/lang/String;
    .local v27, "proxyPassword":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 237
    .local v6, "enableIPv6":I
    const-string/jumbo v7, "proxy-auth"

    move-object/from16 v29, v13

    const/4 v13, 0x0

    .end local v13    # "proxyUsername":Ljava/lang/String;
    .local v29, "proxyUsername":Ljava/lang/String;
    invoke-virtual {v14, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 238
    .local v7, "proxy_auth":I
    const-string v13, "allow_usb_over_vpn_tethering"

    move/from16 v30, v7

    const/4 v7, 0x0

    .end local v7    # "proxy_auth":I
    .local v30, "proxy_auth":I
    invoke-virtual {v14, v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13
    :try_end_138
    .catch Lorg/json/JSONException; {:try_start_108 .. :try_end_138} :catch_3ef
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_138} :catch_3ed

    move v7, v13

    .line 240
    .local v7, "usb_tethering":I
    if-eqz v15, :cond_3db

    if-eqz v3, :cond_3db

    const/4 v13, 0x1

    if-eq v8, v13, :cond_153

    if-eqz v8, :cond_153

    move-object/from16 v31, v3

    move/from16 v34, v6

    move v0, v9

    move-object/from16 v39, v14

    move/from16 v3, v19

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    move/from16 v19, v8

    goto/16 :goto_3ea

    .line 245
    :cond_153
    const-string/jumbo v13, "ondemand"

    if-nez v8, :cond_188

    .line 246
    move-object/from16 v31, v3

    move/from16 v3, v19

    .end local v19    # "chainingEnabled":I
    .local v3, "chainingEnabled":I
    .local v31, "protocolType":Ljava/lang/String;
    if-eqz v3, :cond_183

    move/from16 v19, v8

    const/4 v8, 0x1

    .end local v8    # "routeType":I
    .local v19, "routeType":I
    if-ne v3, v8, :cond_164

    goto :goto_185

    .line 250
    :cond_164
    :try_start_164
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16d

    .line 251
    const/16 v0, 0x2be

    .line 252
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 254
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_16d
    if-nez v11, :cond_180

    const/4 v8, -0x1

    if-eq v12, v8, :cond_173

    goto :goto_180

    .line 258
    :cond_173
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-eq v5, v8, :cond_17a

    .line 259
    const/16 v0, 0x321

    .line 260
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 262
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_17a
    const/4 v8, 0x1

    if-ne v7, v8, :cond_18e

    .line 263
    const/16 v0, 0x385

    .line 264
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 255
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_180
    :goto_180
    const/16 v0, 0x321

    .line 256
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 246
    .end local v0    # "validationResult":I
    .end local v19    # "routeType":I
    .restart local v8    # "routeType":I
    .restart local v16    # "validationResult":I
    :cond_183
    move/from16 v19, v8

    .line 247
    .end local v8    # "routeType":I
    .restart local v19    # "routeType":I
    :goto_185
    const/16 v0, 0x1f9

    .line 248
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 245
    .end local v0    # "validationResult":I
    .end local v31    # "protocolType":Ljava/lang/String;
    .local v3, "protocolType":Ljava/lang/String;
    .restart local v8    # "routeType":I
    .restart local v16    # "validationResult":I
    .local v19, "chainingEnabled":I
    :cond_188
    move-object/from16 v31, v3

    move/from16 v3, v19

    move/from16 v19, v8

    .line 268
    .end local v8    # "routeType":I
    .local v3, "chainingEnabled":I
    .local v19, "routeType":I
    .restart local v31    # "protocolType":Ljava/lang/String;
    :cond_18e
    const/4 v8, -0x1

    if-eq v3, v8, :cond_199

    if-eqz v3, :cond_199

    const/4 v8, 0x1

    if-eq v3, v8, :cond_199

    .line 269
    const/16 v0, 0x1f5

    .line 270
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 273
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_199
    const/4 v8, 0x1

    if-eq v9, v8, :cond_1a1

    if-eqz v9, :cond_1a1

    .line 274
    const/16 v0, 0x259

    .line 275
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 278
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_1a1
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 279
    const/16 v0, 0x2bd

    .line 280
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 283
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_1b0
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    if-nez v3, :cond_1bb

    .line 284
    const/16 v0, 0x2be

    .line 285
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 289
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_1bb
    if-eqz v6, :cond_1c3

    const/4 v0, 0x1

    if-eq v6, v0, :cond_1c3

    .line 290
    const/16 v0, 0x325

    .line 291
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 294
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_1c3
    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 295
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 296
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    .line 297
    .local v32, "found":Z
    if-eqz v32, :cond_1d6

    .line 298
    const/16 v4, 0x6a

    .line 299
    .end local v16    # "validationResult":I
    .local v4, "validationResult":I
    return v4

    .line 302
    .end local v4    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_1d6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v34, v33

    .line 303
    .local v34, "profileLength":I
    move-object/from16 v33, v0

    move/from16 v0, v34

    move/from16 v34, v6

    const/4 v6, 0x1

    .end local v6    # "enableIPv6":I
    .local v0, "profileLength":I
    .local v33, "pattern":Ljava/util/regex/Pattern;
    .local v34, "enableIPv6":I
    if-lt v0, v6, :cond_3cd

    const/16 v6, 0x80

    if-le v0, v6, :cond_1f6

    move/from16 v35, v0

    move-object/from16 v38, v8

    move v0, v9

    move-object/from16 v39, v14

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    goto/16 :goto_3d8

    .line 308
    :cond_1f6
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 309
    .local v6, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_20c

    .line 310
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v4, v13, :cond_209

    .line 311
    const/16 v4, 0x6f

    .line 312
    .end local v16    # "validationResult":I
    .restart local v4    # "validationResult":I
    return v4

    .line 314
    .end local v4    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_209
    const/16 v4, 0x70

    .line 315
    .end local v16    # "validationResult":I
    .restart local v4    # "validationResult":I
    return v4

    .line 319
    .end local v4    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_20c
    move/from16 v35, v0

    .end local v0    # "profileLength":I
    .local v35, "profileLength":I
    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 320
    .local v0, "vendorName":Ljava/lang/String;
    move-object/from16 v36, v6

    .end local v6    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v36, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    iget v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 322
    .local v6, "userId":I
    const/4 v2, -0x1

    invoke-virtual {v14, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 323
    .local v4, "chainingValue":I
    if-ne v4, v2, :cond_235

    .line 324
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v37, v4

    .end local v4    # "chainingValue":I
    .local v37, "chainingValue":I
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    move-object/from16 v38, v8

    const/4 v8, 0x1

    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .local v38, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2, v4, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    .line 325
    .local v2, "isChainingEnabled":I
    if-eq v2, v8, :cond_232

    if-nez v2, :cond_231

    goto :goto_232

    .line 329
    .end local v2    # "isChainingEnabled":I
    :cond_231
    goto :goto_24c

    .line 326
    .restart local v2    # "isChainingEnabled":I
    :cond_232
    :goto_232
    const/16 v4, 0x1f7

    .line 327
    .end local v16    # "validationResult":I
    .local v4, "validationResult":I
    return v4

    .line 330
    .end local v2    # "isChainingEnabled":I
    .end local v37    # "chainingValue":I
    .end local v38    # "matcher":Ljava/util/regex/Matcher;
    .local v4, "chainingValue":I
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    .restart local v16    # "validationResult":I
    :cond_235
    move/from16 v37, v4

    move-object/from16 v38, v8

    .end local v4    # "chainingValue":I
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .restart local v37    # "chainingValue":I
    .restart local v38    # "matcher":Ljava/util/regex/Matcher;
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    .line 331
    .local v2, "isVpnEnabled":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_24c

    .line 332
    const/16 v4, 0x1f8

    .line 333
    .end local v16    # "validationResult":I
    .local v4, "validationResult":I
    return v4

    .line 337
    .end local v2    # "isVpnEnabled":I
    .end local v4    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_24c
    :goto_24c
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;
    :try_end_24e
    .catch Lorg/json/JSONException; {:try_start_164 .. :try_end_24e} :catch_3ef
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_24e} :catch_3ed

    const-string v4, "_"

    if-eq v5, v2, :cond_303

    .line 338
    :try_start_252
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v11, v2, :cond_2f4

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2f4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26d

    move-object/from16 v28, v0

    move/from16 v26, v6

    move/from16 v25, v9

    move-object/from16 v39, v14

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    goto/16 :goto_300

    .line 342
    :cond_26d
    if-nez v3, :cond_272

    .line 343
    const/16 v2, 0x324

    .line 344
    .end local v16    # "validationResult":I
    .local v2, "validationResult":I
    return v2

    .line 346
    .end local v2    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_272
    if-eqz v29, :cond_2e3

    if-eqz v27, :cond_2e3

    .line 347
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d4

    .line 348
    if-nez v30, :cond_287

    .line 349
    const/16 v2, 0x324

    .line 350
    .end local v16    # "validationResult":I
    .restart local v2    # "validationResult":I
    return v2

    .line 352
    .end local v2    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_287
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    .end local v0    # "vendorName":Ljava/lang/String;
    .local v28, "vendorName":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v26, v6

    move-object/from16 v6, v29

    .end local v29    # "proxyUsername":Ljava/lang/String;
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v26, "userId":I
    invoke-virtual {v2, v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 353
    .local v2, "isUserSaved":Z
    if-nez v2, :cond_2ac

    .line 354
    const/16 v0, 0x322

    .line 355
    .end local v16    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 357
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_2ac
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v29, v2

    .end local v2    # "isUserSaved":Z
    .local v29, "isUserSaved":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v39, v14

    move-object/from16 v14, v25

    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v39, "knoxAttrObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v25, v9

    move-object/from16 v9, v27

    .end local v27    # "proxyPassword":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .local v25, "uidPidSearchEnabled":I
    invoke-virtual {v8, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 358
    .local v2, "ispasswordSaved":Z
    if-nez v2, :cond_2d3

    .line 359
    const/16 v0, 0x323

    .line 360
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 362
    .end local v0    # "validationResult":I
    .end local v2    # "ispasswordSaved":Z
    .end local v29    # "isUserSaved":Z
    .restart local v16    # "validationResult":I
    :cond_2d3
    goto :goto_313

    .line 347
    .end local v25    # "uidPidSearchEnabled":I
    .end local v26    # "userId":I
    .end local v28    # "vendorName":Ljava/lang/String;
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v0, "vendorName":Ljava/lang/String;
    .local v6, "userId":I
    .local v9, "uidPidSearchEnabled":I
    .restart local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v27    # "proxyPassword":Ljava/lang/String;
    .local v29, "proxyUsername":Ljava/lang/String;
    :cond_2d4
    move-object/from16 v28, v0

    move/from16 v26, v6

    move/from16 v25, v9

    move-object/from16 v39, v14

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    .line 363
    .end local v0    # "vendorName":Ljava/lang/String;
    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v27    # "proxyPassword":Ljava/lang/String;
    .end local v29    # "proxyUsername":Ljava/lang/String;
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .restart local v25    # "uidPidSearchEnabled":I
    .restart local v26    # "userId":I
    .restart local v28    # "vendorName":Ljava/lang/String;
    .restart local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    const/16 v0, 0x324

    .line 364
    .end local v16    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 346
    .end local v25    # "uidPidSearchEnabled":I
    .end local v26    # "userId":I
    .end local v28    # "vendorName":Ljava/lang/String;
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v0, "vendorName":Ljava/lang/String;
    .local v6, "userId":I
    .local v9, "uidPidSearchEnabled":I
    .restart local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v16    # "validationResult":I
    .restart local v27    # "proxyPassword":Ljava/lang/String;
    .restart local v29    # "proxyUsername":Ljava/lang/String;
    :cond_2e3
    move-object/from16 v28, v0

    move-object/from16 v39, v14

    move-object/from16 v14, v25

    move-object/from16 v0, v26

    move/from16 v26, v6

    move/from16 v25, v9

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    .end local v0    # "vendorName":Ljava/lang/String;
    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v27    # "proxyPassword":Ljava/lang/String;
    .end local v29    # "proxyUsername":Ljava/lang/String;
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .restart local v25    # "uidPidSearchEnabled":I
    .restart local v26    # "userId":I
    .restart local v28    # "vendorName":Ljava/lang/String;
    .restart local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    goto :goto_313

    .line 338
    .end local v25    # "uidPidSearchEnabled":I
    .end local v26    # "userId":I
    .end local v28    # "vendorName":Ljava/lang/String;
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v0    # "vendorName":Ljava/lang/String;
    .local v6, "userId":I
    .local v9, "uidPidSearchEnabled":I
    .restart local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v27    # "proxyPassword":Ljava/lang/String;
    .restart local v29    # "proxyUsername":Ljava/lang/String;
    :cond_2f4
    move-object/from16 v28, v0

    move/from16 v26, v6

    move/from16 v25, v9

    move-object/from16 v39, v14

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    .line 339
    .end local v0    # "vendorName":Ljava/lang/String;
    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v27    # "proxyPassword":Ljava/lang/String;
    .end local v29    # "proxyUsername":Ljava/lang/String;
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .restart local v25    # "uidPidSearchEnabled":I
    .restart local v26    # "userId":I
    .restart local v28    # "vendorName":Ljava/lang/String;
    .restart local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    :goto_300
    const/16 v0, 0x324

    .line 340
    .end local v16    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 337
    .end local v25    # "uidPidSearchEnabled":I
    .end local v26    # "userId":I
    .end local v28    # "vendorName":Ljava/lang/String;
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v0, "vendorName":Ljava/lang/String;
    .local v6, "userId":I
    .local v9, "uidPidSearchEnabled":I
    .restart local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v16    # "validationResult":I
    .restart local v27    # "proxyPassword":Ljava/lang/String;
    .restart local v29    # "proxyUsername":Ljava/lang/String;
    :cond_303
    move-object/from16 v28, v0

    move-object/from16 v39, v14

    move-object/from16 v14, v25

    move-object/from16 v0, v26

    move/from16 v26, v6

    move/from16 v25, v9

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    .line 369
    .end local v0    # "vendorName":Ljava/lang/String;
    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v27    # "proxyPassword":Ljava/lang/String;
    .end local v29    # "proxyUsername":Ljava/lang/String;
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .restart local v25    # "uidPidSearchEnabled":I
    .restart local v26    # "userId":I
    .restart local v28    # "vendorName":Ljava/lang/String;
    .restart local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    :goto_313
    if-eqz v11, :cond_37d

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v11, v2, :cond_31c

    const/4 v2, -0x1

    if-eq v12, v2, :cond_37d

    .line 370
    :cond_31c
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-ne v5, v2, :cond_37a

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_327

    goto :goto_37a

    .line 374
    :cond_327
    if-nez v3, :cond_32c

    .line 375
    const/16 v0, 0x324

    .line 376
    .end local v16    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 379
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_32c
    if-eqz v6, :cond_37d

    if-eqz v9, :cond_37d

    .line 380
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_377

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_377

    .line 381
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, "isUserSaved":Z
    if-nez v0, :cond_359

    .line 383
    const/16 v2, 0x322

    .line 384
    .end local v16    # "validationResult":I
    .local v2, "validationResult":I
    return v2

    .line 386
    .end local v2    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_359
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 387
    .local v2, "ispasswordSaved":Z
    if-nez v2, :cond_376

    .line 388
    const/16 v4, 0x323

    .line 389
    .end local v16    # "validationResult":I
    .restart local v4    # "validationResult":I
    return v4

    .line 391
    .end local v0    # "isUserSaved":Z
    .end local v2    # "ispasswordSaved":Z
    .end local v4    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_376
    goto :goto_37d

    .line 392
    :cond_377
    const/16 v0, 0x324

    .line 393
    .end local v16    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 371
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_37a
    :goto_37a
    const/16 v0, 0x324

    .line 372
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 398
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_37d
    :goto_37d
    const/4 v0, 0x1

    if-ne v7, v0, :cond_3c5

    .line 399
    if-nez v3, :cond_385

    .line 400
    const/16 v0, 0x385

    .line 401
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 404
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_385
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38e

    .line 405
    const/16 v0, 0x385

    .line 406
    .end local v16    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 409
    .end local v0    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_38e
    move/from16 v0, v25

    const/4 v2, 0x1

    .end local v25    # "uidPidSearchEnabled":I
    .local v0, "uidPidSearchEnabled":I
    if-ne v0, v2, :cond_396

    .line 410
    const/16 v2, 0x385

    .line 411
    .end local v16    # "validationResult":I
    .local v2, "validationResult":I
    return v2

    .line 415
    .end local v2    # "validationResult":I
    .restart local v16    # "validationResult":I
    :cond_396
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v2

    .line 416
    .local v2, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    if-eqz v2, :cond_3c7

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_3c7

    .line 417
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3ae
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 418
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v13
    :try_end_3be
    .catch Lorg/json/JSONException; {:try_start_252 .. :try_end_3be} :catch_3ef
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_3be} :catch_3ed

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3c4

    .line 419
    const/16 v4, 0x385

    .line 420
    .end local v16    # "validationResult":I
    .restart local v4    # "validationResult":I
    return v4

    .line 422
    .end local v4    # "validationResult":I
    .end local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "validationResult":I
    :cond_3c4
    goto :goto_3ae

    .line 398
    .end local v0    # "uidPidSearchEnabled":I
    .end local v2    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    .restart local v25    # "uidPidSearchEnabled":I
    :cond_3c5
    move/from16 v0, v25

    .line 432
    .end local v3    # "chainingEnabled":I
    .end local v5    # "pacurl":Ljava/lang/String;
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "usb_tethering":I
    .end local v9    # "proxyPassword":Ljava/lang/String;
    .end local v10    # "connectionType":Ljava/lang/String;
    .end local v11    # "proxyServer":Ljava/lang/String;
    .end local v12    # "proxyPort":I
    .end local v15    # "profileName":Ljava/lang/String;
    .end local v17    # "adminUserId":I
    .end local v19    # "routeType":I
    .end local v20    # "vpnClientUserId":I
    .end local v21    # "profileObj":Lorg/json/JSONObject;
    .end local v22    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v25    # "uidPidSearchEnabled":I
    .end local v26    # "userId":I
    .end local v28    # "vendorName":Ljava/lang/String;
    .end local v30    # "proxy_auth":I
    .end local v31    # "protocolType":Ljava/lang/String;
    .end local v32    # "found":Z
    .end local v33    # "pattern":Ljava/util/regex/Pattern;
    .end local v34    # "enableIPv6":I
    .end local v35    # "profileLength":I
    .end local v36    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v37    # "chainingValue":I
    .end local v38    # "matcher":Ljava/util/regex/Matcher;
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    :cond_3c7
    move/from16 v8, v16

    move-object/from16 v3, v24

    goto/16 :goto_440

    .line 303
    .local v0, "profileLength":I
    .restart local v3    # "chainingEnabled":I
    .restart local v5    # "pacurl":Ljava/lang/String;
    .restart local v7    # "usb_tethering":I
    .local v8, "matcher":Ljava/util/regex/Matcher;
    .local v9, "uidPidSearchEnabled":I
    .restart local v10    # "connectionType":Ljava/lang/String;
    .restart local v11    # "proxyServer":Ljava/lang/String;
    .restart local v12    # "proxyPort":I
    .restart local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v15    # "profileName":Ljava/lang/String;
    .restart local v17    # "adminUserId":I
    .restart local v19    # "routeType":I
    .restart local v20    # "vpnClientUserId":I
    .restart local v21    # "profileObj":Lorg/json/JSONObject;
    .restart local v22    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v23    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v27    # "proxyPassword":Ljava/lang/String;
    .restart local v29    # "proxyUsername":Ljava/lang/String;
    .restart local v30    # "proxy_auth":I
    .restart local v31    # "protocolType":Ljava/lang/String;
    .restart local v32    # "found":Z
    .restart local v33    # "pattern":Ljava/util/regex/Pattern;
    .restart local v34    # "enableIPv6":I
    :cond_3cd
    move/from16 v35, v0

    move-object/from16 v38, v8

    move v0, v9

    move-object/from16 v39, v14

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    .line 304
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v27    # "proxyPassword":Ljava/lang/String;
    .end local v29    # "proxyUsername":Ljava/lang/String;
    .local v0, "uidPidSearchEnabled":I
    .restart local v6    # "proxyUsername":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .restart local v35    # "profileLength":I
    .restart local v38    # "matcher":Ljava/util/regex/Matcher;
    .restart local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    :goto_3d8
    const/16 v2, 0x6b

    .line 305
    .end local v16    # "validationResult":I
    .local v2, "validationResult":I
    return v2

    .line 240
    .end local v0    # "uidPidSearchEnabled":I
    .end local v2    # "validationResult":I
    .end local v31    # "protocolType":Ljava/lang/String;
    .end local v32    # "found":Z
    .end local v33    # "pattern":Ljava/util/regex/Pattern;
    .end local v34    # "enableIPv6":I
    .end local v35    # "profileLength":I
    .end local v38    # "matcher":Ljava/util/regex/Matcher;
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    .local v3, "protocolType":Ljava/lang/String;
    .local v6, "enableIPv6":I
    .local v8, "routeType":I
    .local v9, "uidPidSearchEnabled":I
    .restart local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v16    # "validationResult":I
    .local v19, "chainingEnabled":I
    .restart local v27    # "proxyPassword":Ljava/lang/String;
    .restart local v29    # "proxyUsername":Ljava/lang/String;
    :cond_3db
    move-object/from16 v31, v3

    move/from16 v34, v6

    move v0, v9

    move-object/from16 v39, v14

    move/from16 v3, v19

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    move/from16 v19, v8

    .line 241
    .end local v8    # "routeType":I
    .end local v14    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v27    # "proxyPassword":Ljava/lang/String;
    .end local v29    # "proxyUsername":Ljava/lang/String;
    .restart local v0    # "uidPidSearchEnabled":I
    .local v3, "chainingEnabled":I
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v9, "proxyPassword":Ljava/lang/String;
    .local v19, "routeType":I
    .restart local v31    # "protocolType":Ljava/lang/String;
    .restart local v34    # "enableIPv6":I
    .restart local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    :goto_3ea
    const/16 v2, 0x69

    .line 242
    .end local v16    # "validationResult":I
    .restart local v2    # "validationResult":I
    return v2

    .line 429
    .end local v0    # "uidPidSearchEnabled":I
    .end local v2    # "validationResult":I
    .end local v3    # "chainingEnabled":I
    .end local v5    # "pacurl":Ljava/lang/String;
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "usb_tethering":I
    .end local v9    # "proxyPassword":Ljava/lang/String;
    .end local v10    # "connectionType":Ljava/lang/String;
    .end local v11    # "proxyServer":Ljava/lang/String;
    .end local v12    # "proxyPort":I
    .end local v15    # "profileName":Ljava/lang/String;
    .end local v17    # "adminUserId":I
    .end local v19    # "routeType":I
    .end local v20    # "vpnClientUserId":I
    .end local v21    # "profileObj":Lorg/json/JSONObject;
    .end local v22    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v23    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v30    # "proxy_auth":I
    .end local v31    # "protocolType":Ljava/lang/String;
    .end local v34    # "enableIPv6":I
    .end local v39    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v16    # "validationResult":I
    :catch_3ed
    move-exception v0

    goto :goto_404

    .line 426
    :catch_3ef
    move-exception v0

    move-object/from16 v3, v24

    goto :goto_425

    .line 429
    :catch_3f3
    move-exception v0

    move-object/from16 v24, v7

    goto :goto_404

    .line 426
    :catch_3f7
    move-exception v0

    move-object v3, v7

    goto :goto_425

    .end local v16    # "validationResult":I
    .local v8, "validationResult":I
    :catch_3fa
    move-exception v0

    move/from16 v16, v8

    move-object v3, v7

    goto :goto_425

    .line 429
    :catch_3ff
    move-exception v0

    move-object/from16 v24, v7

    move/from16 v16, v8

    .line 430
    .end local v8    # "validationResult":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "validationResult":I
    :goto_404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at createVpnProfileValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v8, 0x65

    .end local v16    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_440

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_421
    move-exception v0

    move-object v3, v7

    move/from16 v16, v8

    .line 427
    .end local v8    # "validationResult":I
    .local v0, "e":Lorg/json/JSONException;
    .restart local v16    # "validationResult":I
    :goto_425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException at createVpnProfileValidation API "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v8, 0x67

    .line 432
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v16    # "validationResult":I
    .restart local v8    # "validationResult":I
    nop

    .line 433
    :goto_440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createVpnProfileValidation : validationResult value is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v8

    .line 187
    :cond_455
    move/from16 v16, v8

    .line 188
    .end local v8    # "validationResult":I
    .restart local v16    # "validationResult":I
    :goto_457
    const/16 v0, 0x68

    .line 189
    .end local v16    # "validationResult":I
    .local v0, "validationResult":I
    return v0
.end method

.method public disallowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 15
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1858
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1860
    .local v1, "validationResult":I
    if-eqz p2, :cond_b1

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_c

    goto/16 :goto_b1

    .line 1865
    :cond_c
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1866
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_17

    .line 1867
    const/16 v0, 0x6c

    .line 1868
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1870
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_22

    .line 1871
    const/16 v0, 0x70

    .line 1872
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1876
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 1877
    .local v3, "routeType":I
    if-nez v3, :cond_2b

    .line 1878
    const/16 v0, 0x6d

    .line 1879
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1882
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_2b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    .line 1883
    .local v4, "isChainingEnabled":I
    if-nez v4, :cond_34

    .line 1884
    const/16 v0, 0x385

    .line 1885
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1888
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v5

    .line 1889
    .local v5, "connectionType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3e

    .line 1890
    const/16 v0, 0x385

    .line 1891
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1894
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_3e
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v7

    .line 1895
    .local v7, "uidPidSearchEnabled":I
    if-ne v7, v6, :cond_47

    .line 1896
    const/16 v0, 0x385

    .line 1897
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1901
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_47
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    .line 1902
    .local v8, "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    if-eqz v8, :cond_80

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v9

    if-lez v9, :cond_80

    .line 1903
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_80

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 1904
    .local v10, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v11

    if-ne v11, v6, :cond_7f

    .line 1905
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_79} :catch_81

    if-nez v0, :cond_7e

    .line 1906
    const/16 v0, 0x385

    .line 1907
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1909
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_7e
    return v1

    .line 1912
    .end local v10    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_7f
    goto :goto_5f

    .line 1917
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "isChainingEnabled":I
    .end local v5    # "connectionType":I
    .end local v7    # "uidPidSearchEnabled":I
    .end local v8    # "vpnProfileEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;>;"
    :cond_80
    goto :goto_9c

    .line 1914
    :catch_81
    move-exception v2

    .line 1915
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at enableUsbTethering API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const/16 v1, 0x65

    .line 1918
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableUsbTethering : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return v1

    .line 1861
    :cond_b1
    :goto_b1
    const/16 v0, 0x68

    .line 1862
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .line 1111
    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p3, :cond_6f

    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_6f

    .line 1116
    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1117
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_19

    .line 1118
    const-string/jumbo v3, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-object v0

    .line 1121
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_28

    .line 1122
    const-string/jumbo v3, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    return-object v0

    .line 1127
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 1128
    .local v3, "routeType":I
    if-nez v3, :cond_35

    .line 1129
    const-string/jumbo v4, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return-object v0

    .line 1133
    :cond_35
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1135
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 1136
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v4

    .line 1137
    .local v4, "isPersonaIdIsValid":Z
    if-nez v4, :cond_52

    .line 1138
    const-string/jumbo v5, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-object v0

    .line 1144
    .end local v4    # "isPersonaIdIsValid":Z
    :cond_52
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 1145
    .local v4, "containerOwner":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v5, v6, :cond_6b

    .line 1146
    const-string/jumbo v5, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-object v0

    .line 1153
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "containerOwner":I
    :cond_6b
    nop

    .line 1154
    return-object p3

    .line 1150
    :catch_6d
    move-exception v2

    goto :goto_76

    .line 1112
    :cond_6f
    :goto_6f
    const-string/jumbo v2, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_75} :catch_6d

    .line 1113
    return-object v0

    .line 1151
    .local v2, "e":Ljava/lang/Exception;
    :goto_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-object v0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 794
    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p2, :cond_39

    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_39

    .line 799
    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 800
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_19

    .line 801
    const-string/jumbo v3, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-object v0

    .line 804
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_28

    .line 805
    const-string/jumbo v3, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-object v0

    .line 810
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 811
    .local v3, "routeType":I
    if-nez v3, :cond_35

    .line 812
    const-string/jumbo v4, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-object v0

    .line 819
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    :cond_35
    nop

    .line 820
    return-object p2

    .line 816
    :catch_37
    move-exception v2

    goto :goto_40

    .line 795
    :cond_39
    :goto_39
    const-string/jumbo v2, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_37

    .line 796
    return-object v0

    .line 817
    .local v2, "e":Ljava/lang/Exception;
    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-object v0
.end method

.method public getErrorStringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1439
    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p2, :cond_2b

    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_2b

    .line 1443
    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1444
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_19

    .line 1445
    const-string/jumbo v3, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    return-object v0

    .line 1448
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_28

    .line 1449
    const-string/jumbo v3, "getErrorStringValidation: Not the same admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-object v0

    .line 1455
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_28
    goto :goto_4a

    .line 1453
    :catch_29
    move-exception v0

    goto :goto_32

    .line 1440
    :cond_2b
    :goto_2b
    const-string/jumbo v2, "getErrorStringValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_29

    .line 1441
    return-object v0

    .line 1454
    .local v0, "e":Ljava/lang/Exception;
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getErrorStringValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-object p2
.end method

.method public getStateValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1413
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1415
    .local v1, "validationResult":I
    if-eqz p2, :cond_53

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_53

    .line 1419
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1420
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 1421
    const/16 v0, 0x6c

    .line 1422
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1424
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_22

    if-eq v3, v4, :cond_21

    .line 1425
    const/16 v0, 0x70

    .line 1426
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1432
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v1    # "validationResult":I
    :cond_21
    goto :goto_3d

    .line 1429
    :catch_22
    move-exception v2

    .line 1430
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getStateValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/16 v1, 0x65

    .line 1433
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStateValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return v1

    .line 1416
    :cond_53
    :goto_53
    const/16 v0, 0x68

    .line 1417
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public getVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1489
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1491
    .local v1, "validationResult":I
    if-eqz p2, :cond_53

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_53

    .line 1495
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1496
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 1497
    const/16 v0, 0x6c

    .line 1498
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1500
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_22

    if-eq v3, v4, :cond_21

    .line 1501
    const/16 v0, 0x70

    .line 1502
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1508
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v1    # "validationResult":I
    :cond_21
    goto :goto_3d

    .line 1505
    :catch_22
    move-exception v2

    .line 1506
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/16 v1, 0x65

    .line 1509
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return v1

    .line 1492
    :cond_53
    :goto_53
    const/16 v0, 0x68

    .line 1493
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public getVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 440
    const/4 v0, 0x0

    const-string v1, "KnoxVpnApiValidation"

    if-eqz p2, :cond_2b

    :try_start_5
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_2b

    .line 445
    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 446
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_19

    .line 447
    const-string/jumbo v3, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-object v0

    .line 450
    :cond_19
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_28

    .line 451
    const-string/jumbo v3, "getVpnProfileValidation: Not the same admin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-object v0

    .line 457
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_28
    goto :goto_4a

    .line 455
    :catch_29
    move-exception v0

    goto :goto_32

    .line 441
    :cond_2b
    :goto_2b
    const-string/jumbo v2, "getVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_29

    .line 442
    return-object v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getVpnProfileValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-object p2
.end method

.method public isUsbTetheringOverVpnEnabledValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1923
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1925
    .local v1, "validationResult":I
    if-eqz p2, :cond_78

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_78

    .line 1930
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1931
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 1932
    const/16 v0, 0x6c

    .line 1933
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1935
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_21

    .line 1936
    const/16 v0, 0x70

    .line 1937
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1941
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_21
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 1942
    .local v3, "routeType":I
    if-nez v3, :cond_2a

    .line 1943
    const/16 v0, 0x6d

    .line 1944
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1947
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_2a
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    .line 1948
    .local v4, "isChainingEnabled":I
    if-nez v4, :cond_33

    .line 1949
    const/16 v0, 0x385

    .line 1950
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1953
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v5

    .line 1954
    .local v5, "connectionType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3d

    .line 1955
    const/16 v0, 0x385

    .line 1956
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1959
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_3d
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v7
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_41} :catch_47

    .line 1960
    .local v7, "uidPidSearchEnabled":I
    if-ne v7, v6, :cond_46

    .line 1961
    const/16 v0, 0x385

    .line 1962
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1967
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "isChainingEnabled":I
    .end local v5    # "connectionType":I
    .end local v7    # "uidPidSearchEnabled":I
    .restart local v1    # "validationResult":I
    :cond_46
    goto :goto_62

    .line 1964
    :catch_47
    move-exception v2

    .line 1965
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at isUsbTetheringOverVpnEnabledValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/16 v1, 0x65

    .line 1968
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbTetheringOverVpnEnabledValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    return v1

    .line 1926
    :cond_78
    :goto_78
    const/16 v0, 0x68

    .line 1927
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .registers 12
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .line 1252
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1256
    .local v1, "validationResult":I
    if-eqz p3, :cond_ab

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_c

    goto/16 :goto_ab

    .line 1261
    :cond_c
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1262
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_17

    .line 1263
    const/16 v0, 0x6c

    .line 1264
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1266
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_22

    .line 1267
    const/16 v0, 0x70

    .line 1268
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1272
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 1273
    .local v3, "routeType":I
    if-nez v3, :cond_2b

    .line 1274
    const/16 v0, 0x6d

    .line 1275
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1278
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_2b
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v4

    if-nez v4, :cond_79

    .line 1279
    const/4 v4, 0x0

    .line 1281
    .local v4, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 1282
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v5

    move v4, v5

    .line 1283
    if-nez v4, :cond_46

    .line 1284
    const/16 v0, 0x71

    .line 1285
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1290
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_46
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v5

    .line 1291
    .local v5, "containerOwner":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    iget v7, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v6, v7, :cond_5b

    .line 1292
    const/16 v0, 0x72

    .line 1293
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1298
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_5b
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    if-eqz v6, :cond_79

    .line 1299
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6

    move v4, v6

    .line 1300
    if-eqz v4, :cond_79

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v6
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_74} :catch_7a

    if-eq v6, p2, :cond_79

    .line 1301
    const/16 v0, 0x71

    .line 1302
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1310
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "isPersonaIdIsValid":Z
    .end local v5    # "containerOwner":I
    .restart local v1    # "validationResult":I
    :cond_79
    goto :goto_95

    .line 1307
    :catch_7a
    move-exception v2

    .line 1308
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/16 v1, 0x65

    .line 1311
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v1

    .line 1257
    :cond_ab
    :goto_ab
    const/16 v0, 0x68

    .line 1258
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 1380
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1383
    .local v1, "validationResult":I
    if-eqz p2, :cond_5c

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_5c

    .line 1388
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1389
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 1390
    const/16 v0, 0x6c

    .line 1391
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1393
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_21

    .line 1394
    const/16 v0, 0x70

    .line 1395
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1399
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_21
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_2b

    .line 1400
    .local v3, "routeType":I
    if-nez v3, :cond_2a

    .line 1401
    const/16 v0, 0x6d

    .line 1402
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1407
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .restart local v1    # "validationResult":I
    :cond_2a
    goto :goto_46

    .line 1404
    :catch_2b
    move-exception v2

    .line 1405
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const/16 v1, 0x65

    .line 1408
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    return v1

    .line 1384
    :cond_5c
    :goto_5c
    const/16 v0, 0x68

    .line 1385
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 25
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .line 980
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "KnoxVpnApiValidation"

    const/16 v7, 0x64

    .line 983
    .local v7, "validationResult":I
    if-eqz v5, :cond_1d6

    if-eqz v4, :cond_1d6

    :try_start_12
    array-length v0, v4

    const/4 v8, 0x1

    if-lt v0, v8, :cond_1d6

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto/16 :goto_1d6

    .line 988
    :cond_1c
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 989
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_27

    .line 990
    const/16 v6, 0x6c

    .line 991
    .end local v7    # "validationResult":I
    .local v6, "validationResult":I
    return v6

    .line 993
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v9, v10, :cond_32

    .line 994
    const/16 v6, 0x70

    .line 995
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 999
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v9

    .line 1000
    .local v9, "routeType":I
    if-nez v9, :cond_3b

    .line 1001
    const/16 v6, 0x6d

    .line 1002
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1005
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_3b
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    move-result v10

    if-nez v10, :cond_89

    .line 1006
    const/4 v10, 0x0

    .line 1008
    .local v10, "isPersonaIdIsValid":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    if-eqz v11, :cond_56

    .line 1009
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11

    move v10, v11

    .line 1010
    if-nez v10, :cond_56

    .line 1011
    const/16 v6, 0x71

    .line 1012
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1017
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_56
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    .line 1018
    .local v11, "containerOwner":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v12, v13, :cond_6b

    .line 1019
    const/16 v6, 0x72

    .line 1020
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1025
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_6b
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    if-eqz v12, :cond_89

    .line 1026
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v12

    move v10, v12

    .line 1027
    if-eqz v10, :cond_89

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v12

    if-eq v12, v3, :cond_89

    .line 1028
    const/16 v6, 0x71

    .line 1029
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1035
    .end local v6    # "validationResult":I
    .end local v10    # "isPersonaIdIsValid":Z
    .end local v11    # "containerOwner":I
    .restart local v7    # "validationResult":I
    :cond_89
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v10

    if-eqz v10, :cond_e0

    .line 1036
    array-length v10, v4

    const/4 v12, 0x0

    :goto_93
    if-ge v12, v10, :cond_e0

    aget-object v13, v4, v12

    .line 1037
    .local v13, "regularPackageName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1038
    .local v14, "transformedPackageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1039
    .local v15, "profileOwningPackage":Ljava/lang/String;
    if-eqz v14, :cond_b0

    if-eqz v15, :cond_b0

    .line 1040
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_b0

    .line 1041
    const/16 v6, 0x81

    .line 1042
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1045
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_b0
    iget-object v11, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v11

    .line 1046
    .local v11, "appUid":I
    if-lez v11, :cond_dc

    .line 1047
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v8

    .line 1048
    .local v8, "profileOwningUid":Ljava/lang/String;
    if-eqz v8, :cond_c9

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c9

    .line 1049
    const/16 v6, 0x8b

    .line 1050
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1052
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_c9
    move-object/from16 v18, v8

    .end local v8    # "profileOwningUid":Ljava/lang/String;
    .local v18, "profileOwningUid":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v8

    .line 1053
    .local v8, "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    if-eqz v8, :cond_dc

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_dc

    .line 1054
    const/16 v6, 0x8b

    .line 1055
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1036
    .end local v6    # "validationResult":I
    .end local v8    # "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    .end local v11    # "appUid":I
    .end local v13    # "regularPackageName":Ljava/lang/String;
    .end local v14    # "transformedPackageName":Ljava/lang/String;
    .end local v15    # "profileOwningPackage":Ljava/lang/String;
    .end local v18    # "profileOwningUid":Ljava/lang/String;
    .restart local v7    # "validationResult":I
    :cond_dc
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_93

    .line 1061
    :cond_e0
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_1a2

    .line 1062
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v10, :cond_19d

    .line 1064
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v11, "ADD_ALL_PACKAGES"

    invoke-virtual {v10, v3, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1065
    .local v8, "profileOwningPackage":Ljava/lang/String;
    if-eqz v8, :cond_19a

    .line 1066
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_115

    .line 1067
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_114

    .line 1071
    const/16 v6, 0x79

    .line 1072
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1069
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_114
    return v7

    .line 1075
    :cond_115
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11f

    .line 1076
    const/16 v6, 0x73

    .line 1077
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    return v6

    .line 1079
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_11f
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v10

    .line 1080
    .local v10, "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v11, v4

    const/4 v12, 0x0

    :goto_125
    if-ge v12, v11, :cond_197

    aget-object v13, v4, v12

    .line 1081
    .local v13, "packageName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v14
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12f} :catch_1a5

    .line 1082
    .local v14, "uid":I
    const/4 v15, -0x1

    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v16, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const-string v0, "adding uid to exempt list "

    const-string/jumbo v2, "user wide vpn was configured "

    if-eq v14, v15, :cond_168

    .line 1083
    :try_start_139
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1085
    .local v15, "transformedPackageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v5, v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 1086
    .local v4, "result":Z
    move/from16 v17, v4

    .end local v4    # "result":Z
    .local v17, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    nop

    .end local v15    # "transformedPackageName":Ljava/lang/String;
    .end local v17    # "result":Z
    goto :goto_18c

    .line 1088
    :cond_168
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, "transformedPackageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v5, v4, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 1090
    .local v15, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_18c} :catch_1a5

    .line 1080
    .end local v4    # "transformedPackageName":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "result":Z
    :goto_18c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v0, v16

    goto :goto_125

    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_197
    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    goto :goto_19c

    .line 1065
    .end local v10    # "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_19a
    move-object/from16 v16, v0

    .line 1095
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "profileOwningPackage":Ljava/lang/String;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_19c
    goto :goto_1a4

    .line 1096
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_19d
    move-object/from16 v16, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/16 v0, 0x7a

    .line 1097
    .end local v7    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1061
    .end local v16    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v7    # "validationResult":I
    :cond_1a2
    move-object/from16 v16, v0

    .line 1104
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "routeType":I
    :goto_1a4
    goto :goto_1c0

    .line 1101
    :catch_1a5
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/16 v7, 0x65

    .line 1105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v7

    .line 984
    :cond_1d6
    :goto_1d6
    const/16 v0, 0x68

    .line 985
    .end local v7    # "validationResult":I
    .local v0, "validationResult":I
    return v0
.end method

.method public removePackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 32
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .line 628
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "KnoxVpnApiValidation"

    const/16 v6, 0x64

    .line 631
    .local v6, "validationResult":I
    if-eqz v4, :cond_239

    if-eqz v3, :cond_239

    :try_start_10
    array-length v0, v3

    const/4 v7, 0x1

    if-lt v0, v7, :cond_239

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_1c

    move/from16 v18, v6

    goto/16 :goto_23b

    .line 636
    :cond_1c
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 637
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_27

    .line 638
    const/16 v5, 0x6c

    .line 639
    .end local v6    # "validationResult":I
    .local v5, "validationResult":I
    return v5

    .line 641
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_32

    .line 642
    const/16 v5, 0x70

    .line 643
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 647
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    .line 648
    .local v8, "routeType":I
    if-nez v8, :cond_3b

    .line 649
    const/16 v5, 0x6d

    .line 650
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 653
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_3b
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v9
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_206

    if-eqz v9, :cond_9b

    .line 654
    :try_start_45
    array-length v9, v3

    const/4 v11, 0x0

    :goto_47
    if-ge v11, v9, :cond_9b

    aget-object v12, v3, v11

    .line 655
    .local v12, "regularPackageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v13, v14, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 656
    .local v13, "transformedPackageName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v14, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 657
    .local v14, "profileOwningPackage":Ljava/lang/String;
    if-eqz v13, :cond_66

    if-eqz v14, :cond_66

    .line 658
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_66

    .line 659
    const/16 v5, 0x81

    .line 660
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 663
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_66
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v15, v10, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    .line 664
    .local v10, "appUid":I
    if-lez v10, :cond_92

    .line 665
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v15

    .line 666
    .local v15, "profileOwningUid":Ljava/lang/String;
    if-eqz v15, :cond_81

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_81

    .line 667
    const/16 v5, 0x8b

    .line 668
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 670
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_81
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    move-result-object v7

    .line 671
    .local v7, "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    if-eqz v7, :cond_92

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_8d} :catch_96

    if-nez v18, :cond_92

    .line 672
    const/16 v5, 0x8b

    .line 673
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 654
    .end local v5    # "validationResult":I
    .end local v7    # "profileOwningUidWithNoInternetPermission":Ljava/lang/String;
    .end local v10    # "appUid":I
    .end local v12    # "regularPackageName":Ljava/lang/String;
    .end local v13    # "transformedPackageName":Ljava/lang/String;
    .end local v14    # "profileOwningPackage":Ljava/lang/String;
    .end local v15    # "profileOwningUid":Ljava/lang/String;
    .restart local v6    # "validationResult":I
    :cond_92
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_47

    .line 735
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "routeType":I
    :catch_96
    move-exception v0

    move/from16 v18, v6

    goto/16 :goto_209

    .line 679
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v8    # "routeType":I
    :cond_9b
    :try_start_9b
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_1fd

    .line 680
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v9, :cond_1f8

    .line 682
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v11, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, "profileOwningPackage_1":Ljava/lang/String;
    if-eqz v7, :cond_1ef

    .line 684
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c7} :catch_206

    if-nez v9, :cond_d6

    .line 685
    :try_start_c9
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v5
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cf} :catch_96

    const/4 v9, 0x1

    if-eq v5, v9, :cond_d5

    .line 689
    const/16 v5, 0x79

    .line 690
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 687
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_d5
    return v6

    .line 693
    :cond_d6
    :try_start_d6
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e0

    .line 694
    const/16 v5, 0x73

    .line 695
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    return v5

    .line 697
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_e0
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v9

    .line 698
    .local v9, "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v10, v3

    const/4 v11, 0x0

    :goto_e6
    if-ge v11, v10, :cond_1e6

    aget-object v12, v3, v11

    .line 699
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v13, v14, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v13

    .line 701
    .local v13, "uid":I
    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f4} :catch_206

    if-nez v14, :cond_106

    .line 702
    :try_start_f6
    const-string v14, "com.android.networkstack"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_106

    .line 703
    const-string/jumbo v14, "network stack uid is exempted by the Admin"

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_104} :catch_96

    .line 704
    const/16 v13, 0x431

    .line 708
    :cond_106
    const-string v15, ". Added to exempt list"

    const-string v14, " removed from vpn for profile "

    move-object/from16 v17, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v17, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const-string v0, " "

    const-string v3, "adding uid to exempt list "

    move/from16 v18, v6

    .end local v6    # "validationResult":I
    .local v18, "validationResult":I
    const-string/jumbo v6, "user wide vpn was configured "

    move-object/from16 v19, v7

    const/4 v7, -0x1

    .end local v7    # "profileOwningPackage_1":Ljava/lang/String;
    .local v19, "profileOwningPackage_1":Ljava/lang/String;
    if-eq v13, v7, :cond_17c

    .line 709
    :try_start_11a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v16, v8

    .end local v8    # "routeType":I
    .local v16, "routeType":I
    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, "transformedPackageName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4, v7, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 712
    .local v8, "result":Z
    move-object/from16 v20, v7

    .end local v7    # "transformedPackageName":Ljava/lang/String;
    .local v20, "transformedPackageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/16 v21, 0x5

    const/16 v22, 0x5

    const/16 v23, 0x1

    .line 714
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v24

    const-string v25, "KnoxVpnApiValidation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 713
    move/from16 v27, v0

    invoke-static/range {v21 .. v27}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 717
    .end local v8    # "result":Z
    .end local v20    # "transformedPackageName":Ljava/lang/String;
    goto :goto_1d4

    .line 718
    .end local v16    # "routeType":I
    .local v8, "routeType":I
    :cond_17c
    move/from16 v16, v8

    .end local v8    # "routeType":I
    .restart local v16    # "routeType":I
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 719
    .restart local v7    # "transformedPackageName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4, v7, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 720
    .local v8, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v20, 0x5

    const/16 v21, 0x5

    const/16 v22, 0x1

    .line 722
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    const-string v24, "KnoxVpnApiValidation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 721
    move/from16 v26, v0

    invoke-static/range {v20 .. v26}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_1d4} :catch_1e4

    .line 698
    .end local v7    # "transformedPackageName":Ljava/lang/String;
    .end local v8    # "result":Z
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    :goto_1d4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v8, v16

    move-object/from16 v0, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_e6

    .line 735
    .end local v9    # "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "routeType":I
    .end local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v19    # "profileOwningPackage_1":Ljava/lang/String;
    :catch_1e4
    move-exception v0

    goto :goto_209

    .line 698
    .end local v18    # "validationResult":I
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "validationResult":I
    .local v7, "profileOwningPackage_1":Ljava/lang/String;
    .local v8, "routeType":I
    .restart local v9    # "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1e6
    move-object/from16 v17, v0

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v16, v8

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "validationResult":I
    .end local v7    # "profileOwningPackage_1":Ljava/lang/String;
    .end local v8    # "routeType":I
    .restart local v16    # "routeType":I
    .restart local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v18    # "validationResult":I
    .restart local v19    # "profileOwningPackage_1":Ljava/lang/String;
    goto :goto_1f7

    .line 683
    .end local v9    # "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "routeType":I
    .end local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v18    # "validationResult":I
    .end local v19    # "profileOwningPackage_1":Ljava/lang/String;
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "validationResult":I
    .restart local v7    # "profileOwningPackage_1":Ljava/lang/String;
    .restart local v8    # "routeType":I
    :cond_1ef
    move-object/from16 v17, v0

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v16, v8

    .line 729
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "validationResult":I
    .end local v7    # "profileOwningPackage_1":Ljava/lang/String;
    .end local v8    # "routeType":I
    .restart local v16    # "routeType":I
    .restart local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v18    # "validationResult":I
    :goto_1f7
    goto :goto_203

    .line 730
    .end local v16    # "routeType":I
    .end local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v18    # "validationResult":I
    .restart local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "validationResult":I
    .restart local v8    # "routeType":I
    :cond_1f8
    move-object/from16 v17, v0

    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/16 v0, 0x7a

    .line 731
    .end local v6    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 679
    .end local v17    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "validationResult":I
    :cond_1fd
    move-object/from16 v17, v0

    move/from16 v18, v6

    move/from16 v16, v8

    .line 738
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "validationResult":I
    .end local v8    # "routeType":I
    .restart local v18    # "validationResult":I
    :goto_203
    move/from16 v6, v18

    goto :goto_223

    .line 735
    .end local v18    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_206
    move-exception v0

    move/from16 v18, v6

    .line 736
    .end local v6    # "validationResult":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "validationResult":I
    :goto_209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/16 v6, 0x65

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "validationResult":I
    .restart local v6    # "validationResult":I
    :goto_223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v6

    .line 631
    :cond_239
    move/from16 v18, v6

    .line 632
    .end local v6    # "validationResult":I
    .restart local v18    # "validationResult":I
    :goto_23b
    const/16 v0, 0x68

    .line 633
    .end local v18    # "validationResult":I
    .local v0, "validationResult":I
    return v0
.end method

.method public removeVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 9
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 464
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 467
    .local v1, "validationResult":I
    if-eqz p2, :cond_62

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_62

    .line 472
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 473
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 474
    const/16 v0, 0x6c

    .line 475
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 477
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_21

    .line 478
    const/16 v0, 0x70

    .line 479
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 483
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_21
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 484
    .local v3, "routeType":I
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_31

    .line 485
    .local v4, "profileState":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_30

    if-ne v4, v5, :cond_30

    .line 486
    const/16 v1, 0x7d

    .line 492
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v4    # "profileState":I
    :cond_30
    goto :goto_4c

    .line 489
    :catch_31
    move-exception v2

    .line 490
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v1, 0x65

    .line 493
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v1

    .line 468
    :cond_62
    :goto_62
    const/16 v0, 0x68

    .line 469
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method

.method public setVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)I
    .registers 9
    .param p1, "vpnContext"    # Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I

    .line 1460
    const-string v0, "KnoxVpnApiValidation"

    const/16 v1, 0x64

    .line 1462
    .local v1, "validationResult":I
    if-eqz p2, :cond_5b

    :try_start_6
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_5b

    .line 1466
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1467
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_16

    .line 1468
    const/16 v0, 0x6c

    .line 1469
    .end local v1    # "validationResult":I
    .local v0, "validationResult":I
    return v0

    .line 1471
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_2a

    if-eq v3, v4, :cond_21

    .line 1472
    const/16 v0, 0x70

    .line 1473
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1476
    .end local v0    # "validationResult":I
    .restart local v1    # "validationResult":I
    :cond_21
    if-eqz p3, :cond_29

    const/4 v3, 0x1

    if-eq p3, v3, :cond_29

    .line 1477
    const/16 v0, 0x8a

    .line 1478
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0

    .line 1483
    .end local v0    # "validationResult":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v1    # "validationResult":I
    :cond_29
    goto :goto_45

    .line 1480
    :catch_2a
    move-exception v2

    .line 1481
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/16 v1, 0x65

    .line 1484
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return v1

    .line 1463
    :cond_5b
    :goto_5b
    const/16 v0, 0x68

    .line 1464
    .end local v1    # "validationResult":I
    .restart local v0    # "validationResult":I
    return v0
.end method
