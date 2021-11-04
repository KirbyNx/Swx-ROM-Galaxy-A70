.class Lcom/android/server/role/RoleManagerService$Internal;
.super Lcom/android/server/role/RoleManagerInternal;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Internal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 841
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$Internal;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Lcom/android/server/role/RoleManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerService$1;

    .line 841
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$Internal;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method


# virtual methods
.method public getRolesAndHolders(I)Landroid/util/ArrayMap;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Internal;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/role/RoleUserState;->getRolesAndHolders()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method
