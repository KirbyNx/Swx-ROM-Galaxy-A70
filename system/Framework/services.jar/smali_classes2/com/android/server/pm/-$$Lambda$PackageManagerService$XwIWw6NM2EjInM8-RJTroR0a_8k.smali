.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$XwIWw6NM2EjInM8-RJTroR0a_8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/IPackageDeleteObserver2;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$XwIWw6NM2EjInM8-RJTroR0a_8k;->f$0:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$XwIWw6NM2EjInM8-RJTroR0a_8k;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$XwIWw6NM2EjInM8-RJTroR0a_8k;->f$0:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$XwIWw6NM2EjInM8-RJTroR0a_8k;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageVersionedInternal$30(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method
