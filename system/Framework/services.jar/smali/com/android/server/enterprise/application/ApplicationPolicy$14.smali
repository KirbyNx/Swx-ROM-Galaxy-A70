.class Lcom/android/server/enterprise/application/ApplicationPolicy$14;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->reapplyRuntimePermissions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 10038
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 10042
    const-string/jumbo v0, "packageName"

    const-string v1, "adminUid"

    :try_start_5
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 10043
    const-string v0, "ApplicationPolicy"

    const-string v1, "User removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10044
    return-void

    .line 10048
    :cond_19
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 10049
    .local v2, "userManager":Landroid/os/UserManager;
    iget v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 10051
    .local v3, "ui":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    .line 10052
    .local v4, "defaultPermState":I
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 10053
    const/4 v4, 0x1

    .line 10055
    :cond_36
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3300(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    .line 10056
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 10058
    .local v5, "returnColumns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "ApplicationRuntimePermissions"

    iget v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 10060
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_8d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8d

    .line 10061
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5f
    :goto_5f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 10062
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 10063
    .local v9, "adminUid":Ljava/lang/Integer;
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 10064
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_5f

    if-eqz v10, :cond_5f

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 10065
    goto :goto_5f

    .line 10067
    :cond_7e
    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(ILjava/lang/String;)Z
    invoke-static {v11, v12, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3400(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8b} :catch_8e

    .line 10068
    nop

    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "adminUid":Ljava/lang/Integer;
    .end local v10    # "packageName":Ljava/lang/String;
    goto :goto_5f

    .line 10072
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "defaultPermState":I
    .end local v5    # "returnColumns":[Ljava/lang/String;
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_8d
    goto :goto_92

    .line 10070
    :catch_8e
    move-exception v0

    .line 10071
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10073
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_92
    return-void
.end method
