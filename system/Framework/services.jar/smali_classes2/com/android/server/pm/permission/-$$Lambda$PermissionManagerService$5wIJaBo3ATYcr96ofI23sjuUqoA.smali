.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;->f$1:Landroid/os/UserHandle;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$restoreDelayedRuntimePermissions$9$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V

    return-void
.end method
