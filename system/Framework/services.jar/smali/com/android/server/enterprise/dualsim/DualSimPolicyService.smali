.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Stub;-><init>()V

    .line 80
    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    return-void
.end method

.method private enforceOwnerOnlyAndDualSimPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 92
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 206
    const-string v0, "PreferredSim"

    const-string v1, "DualSim_Policy"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 207
    const/4 v2, 0x0

    .line 209
    .local v2, "result":Z
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 210
    .local v3, "mPreferSim":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    .line 211
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 212
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v5, v1, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v5, v6, :cond_26

    .line 213
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6, v1, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_27

    move v2, v0

    .line 221
    .end local v3    # "mPreferSim":I
    :cond_26
    goto :goto_2b

    .line 219
    :catch_27
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return v2
.end method

.method public getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim_Policy"

    const-string v4, "PreferredSim"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, v2

    .line 191
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 193
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_30

    .line 194
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_32

    return v1

    .line 196
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_30
    goto :goto_19

    .line 201
    :cond_31
    goto :goto_36

    .line 199
    :catch_32
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 227
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 113
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 125
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 119
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public setPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "slotNum"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceOwnerOnlyAndDualSimPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 144
    .local v0, "mPreferSim":I
    const/4 v1, 0x0

    .line 146
    .local v1, "result":Z
    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "PreferredSim"

    const-string v5, "DualSim_Policy"

    const/4 v6, 0x1

    if-eq v0, v2, :cond_36

    .line 147
    :try_start_11
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v7, :cond_4c

    .line 149
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v7, v5, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    move v1, v2

    .line 152
    if-eqz v1, :cond_4c

    .line 154
    if-nez p2, :cond_30

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V

    goto :goto_4c

    .line 157
    :cond_30
    if-ne p2, v6, :cond_4c

    .line 158
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V

    goto :goto_4c

    .line 165
    :cond_36
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v7, v5, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    move v1, v2

    .line 168
    if-eqz v1, :cond_4c

    .line 170
    if-nez p2, :cond_47

    .line 171
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V

    goto :goto_4c

    .line 173
    :cond_47
    if-ne p2, v6, :cond_4c

    .line 174
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->switchNetworkCustomizer(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_4d

    .line 181
    :cond_4c
    :goto_4c
    goto :goto_51

    .line 179
    :catch_4d
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_51
    return v1
.end method

.method public switchNetworkCustomizer(I)V
    .registers 5
    .param p1, "simId"    # I

    .line 130
    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 131
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 132
    .local v1, "subId":[I
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .end local v1    # "subId":[I
    goto :goto_26

    .line 133
    :cond_13
    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    .line 134
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 135
    .local v1, "subId2":[I
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_27

    .line 133
    .end local v1    # "subId2":[I
    :cond_26
    :goto_26
    nop

    .line 138
    :goto_27
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 107
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
