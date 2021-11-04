.class Lcom/android/server/enterprise/application/ApplicationPolicy$5;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileRuntimePermissionsOnUninstallation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2240
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2243
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 2244
    .local v0, "users":[I
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 2245
    .local v1, "pms":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_32

    .line 2246
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v4, v2, :cond_32

    aget v5, v0, v4

    .line 2248
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$pkg:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 2250
    .local v6, "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2f

    .line 2251
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v7, v6, v3, v5}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_33

    .line 2246
    .end local v5    # "userId":I
    .end local v6    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2258
    .end local v0    # "users":[I
    .end local v1    # "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_32
    goto :goto_4e

    .line 2256
    :catch_33
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting runtime permissions failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void
.end method
