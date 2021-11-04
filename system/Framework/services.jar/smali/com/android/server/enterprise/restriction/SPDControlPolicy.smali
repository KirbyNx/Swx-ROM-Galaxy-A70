.class public Lcom/android/server/enterprise/restriction/SPDControlPolicy;
.super Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;
.source "SPDControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final SPDCONTROLPOLICY_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SPDCONTROL"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private enforceOwnerOnlyAndSpdPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v0, "PERMS":Ljava/util/ArrayList;
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 57
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getAutoSecurityPolicyUpdateMode()I
    .registers 2

    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 83
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 84
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 71
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 74
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 77
    return-void
.end method

.method public setAutoSecurityPolicyUpdateMode(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mode"    # I

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 80
    return-void
.end method
