.class Lcom/android/server/pm/permission/PermissionManagerService$4;
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

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 2589
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$4;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$4;->val$appId:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2592
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$4;->val$appId:I

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$4;->val$userId:I

    const-string/jumbo v2, "permissions revoked"

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 2594
    return-void
.end method
