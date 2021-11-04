.class Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GrantDefaultPermission"
.end annotation


# instance fields
.field needRevokePermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nonesystemfixedPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field systemfixedPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;->systemfixedPermission:Ljava/util/Set;

    .line 1563
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;->nonesystemfixedPermission:Ljava/util/Set;

    .line 1564
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;->needRevokePermission:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 1561
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;-><init>()V

    return-void
.end method


# virtual methods
.method public addPermission(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "isSystemFixed"    # Z

    .line 1567
    if-eqz p2, :cond_8

    .line 1568
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;->systemfixedPermission:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1571
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;->nonesystemfixedPermission:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1573
    :goto_d
    return-void
.end method

.method public addRevokePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1576
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$GrantDefaultPermission;->needRevokePermission:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1577
    return-void
.end method
