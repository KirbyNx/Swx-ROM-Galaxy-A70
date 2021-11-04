.class Lcom/android/server/pm/PersonaServiceHelper$4;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaServiceHelper;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/android/server/pm/Settings;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$settings:Lcom/android/server/pm/Settings;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/os/Handler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V
    .registers 9

    .line 750
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$flags:I

    iput-object p4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iput-object p6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    iput-object p7, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iput-object p8, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 752
    const-string v0, "PersonaServiceHelper"

    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    const/4 v1, 0x1

    .line 755
    .local v1, "returnCode":I
    iget v2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    .line 756
    .local v2, "edmUserid":I
    iget v3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11

    .line 757
    const/4 v2, -0x1

    .line 760
    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_13
    # invokes: Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->access$000()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v5

    if-eqz v5, :cond_35

    # invokes: Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->access$000()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v7, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 762
    const-string v5, "This app uninstallation is not allowed"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v1, -0x1

    goto :goto_56

    .line 765
    :cond_35
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    iget v8, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$flags:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageXForKnox(Ljava/lang/String;II)I

    move-result v5

    move v1, v5

    .line 766
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    const-string/jumbo v6, "jp.co.mmbi.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 767
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    const-string v6, "android.uid.mmbi"

    const/16 v7, 0x2392

    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_56} :catch_57

    .line 772
    :cond_56
    :goto_56
    goto :goto_58

    .line 771
    :catch_57
    move-exception v5

    .line 773
    :goto_58
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    if-ltz v1, :cond_5d

    move v3, v4

    :cond_5d
    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    invoke-static {v5, v3, v6}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    .line 776
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    if-eqz v3, :cond_a4

    .line 778
    :try_start_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return delete result to caller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "returnCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v5, v1}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_9d} :catch_9e

    .line 783
    goto :goto_a4

    .line 781
    :catch_9e
    move-exception v3

    .line 782
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "Observer no longer exists."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_a4
    :goto_a4
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 786
    return-void
.end method
