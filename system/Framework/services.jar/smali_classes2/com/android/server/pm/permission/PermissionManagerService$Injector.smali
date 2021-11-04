.class public Lcom/android/server/pm/permission/PermissionManagerService$Injector;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 6146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6147
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6148
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 6193
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public clearCallingIdentity()J
    .registers 3

    .line 6203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public disablePackageNamePermissionCache()V
    .registers 1

    .line 6182
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 6183
    return-void
.end method

.method public disablePermissionCache()V
    .registers 1

    .line 6175
    invoke-static {}, Landroid/permission/PermissionManager;->disablePermissionCache()V

    .line 6176
    return-void
.end method

.method public getCallingPid()I
    .registers 2

    .line 6161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method public getCallingUid()I
    .registers 2

    .line 6154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 6218
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidatePackageInfoCache()V
    .registers 1

    .line 6168
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 6169
    return-void
.end method

.method public restoreCallingIdentity(J)V
    .registers 3
    .param p1, "token"    # J

    .line 6211
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6212
    return-void
.end method
