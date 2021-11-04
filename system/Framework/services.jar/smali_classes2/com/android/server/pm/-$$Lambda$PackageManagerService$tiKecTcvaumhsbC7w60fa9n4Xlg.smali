.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$1:Z

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$tiKecTcvaumhsbC7w60fa9n4Xlg;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->lambda$sendMyPackageSuspendedOrUnsuspended$26$PackageManagerService(ZI[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
