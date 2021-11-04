.class Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;
.super Ljava/lang/Object;
.source "RoleManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDialerProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 915
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerService$1;

    .line 915
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method


# virtual methods
.method public getDefaultDialer(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 921
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    const-string v1, "android.app.role.DIALER"

    invoke-virtual {v0, v1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
