.class public final Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1221
    const-string v0, "TimaKeystoreService"

    const-string v1, "TimeKeystoreService DKS LifeCycle creator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1223
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 1232
    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1233
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->systemReady(I)V
    invoke-static {v0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$1200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    .line 1235
    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1225
    const-string v0, "TimaKeystoreService"

    const-string v1, "TimeKeystoreService DKS LifeCycle onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string/jumbo v1, "knox_timakeystore_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1230
    return-void
.end method
