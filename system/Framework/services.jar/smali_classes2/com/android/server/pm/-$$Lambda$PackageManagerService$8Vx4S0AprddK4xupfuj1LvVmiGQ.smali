.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Landroid/content/pm/IPackageDeleteObserver2;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:J

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:[I

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$4:Z

    iput-wide p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$5:J

    iput p8, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$6:I

    iput p9, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$7:I

    iput-object p10, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$8:[I

    iput-object p11, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$9:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$10:Landroid/content/pm/IPackageDeleteObserver2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$4:Z

    iget-wide v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$5:J

    iget v7, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$6:I

    iget v8, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$7:I

    iget-object v9, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$8:[I

    iget-object v10, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$9:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8Vx4S0AprddK4xupfuj1LvVmiGQ;->f$10:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageVersionedInternal$32$PackageManagerService(Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method
