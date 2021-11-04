.class Lcom/android/server/pm/permission/PermissionManagerService$5;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field final synthetic val$appId:I

.field final synthetic val$appOp:I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;IIILjava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2616
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$appId:I

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$appOp:I

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2619
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$userId:I

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$appId:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2620
    .local v0, "appUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    .line 2621
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 2622
    .local v1, "appOps":Landroid/app/AppOpsManager;
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$appOp:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_26

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$pkgName:Ljava/lang/String;

    .line 2623
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    move v2, v3

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 2626
    .local v2, "appOpAllowed":Z
    :goto_27
    if-eqz v2, :cond_37

    .line 2627
    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$appOp:I

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 2628
    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$appId:I

    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$5;->val$userId:I

    const-string v5, "Permission related app op changed"

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 2630
    :cond_37
    return-void
.end method
