.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;->f$0:Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;->f$0:Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;->f$1:Z

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$AsecInstallArgs$B19ugWLP8T94IaG2OnbU8oeJnRY;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->lambda$pendingPostDeleteLI$1$PackageManagerService$AsecInstallArgs(ZI)V

    return-void
.end method
