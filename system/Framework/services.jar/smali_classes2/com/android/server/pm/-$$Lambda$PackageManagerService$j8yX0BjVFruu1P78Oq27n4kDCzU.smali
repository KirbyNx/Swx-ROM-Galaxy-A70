.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$j8yX0BjVFruu1P78Oq27n4kDCzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/pm/IPackageDeleteObserver2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$j8yX0BjVFruu1P78Oq27n4kDCzU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$j8yX0BjVFruu1P78Oq27n4kDCzU;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$j8yX0BjVFruu1P78Oq27n4kDCzU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$j8yX0BjVFruu1P78Oq27n4kDCzU;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageVersionedInternal$29(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method
