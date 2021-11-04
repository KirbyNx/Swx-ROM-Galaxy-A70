.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$TnoDuMg_rnIAflDvATfY7CXe6bU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$ContainerServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$ContainerServiceConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$TnoDuMg_rnIAflDvATfY7CXe6bU;->f$0:Lcom/android/server/pm/PackageManagerService$ContainerServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$TnoDuMg_rnIAflDvATfY7CXe6bU;->f$0:Lcom/android/server/pm/PackageManagerService$ContainerServiceConnection;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->lambda$copyApk$0(Lcom/android/server/pm/PackageManagerService$ContainerServiceConnection;)V

    return-void
.end method
