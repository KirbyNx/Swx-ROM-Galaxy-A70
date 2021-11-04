.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$ZiYSScT6P4oUr3cWqBhEcNLH4WY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ZiYSScT6P4oUr3cWqBhEcNLH4WY;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ZiYSScT6P4oUr3cWqBhEcNLH4WY;->f$1:Landroid/os/storage/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ZiYSScT6P4oUr3cWqBhEcNLH4WY;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ZiYSScT6P4oUr3cWqBhEcNLH4WY;->f$1:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->lambda$loadPrivatePackages$44$PackageManagerService(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method
