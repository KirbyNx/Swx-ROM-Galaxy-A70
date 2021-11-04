.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;

.field public final synthetic f$1:Landroid/location/ILocationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;->f$0:Lcom/android/server/location/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;->f$1:Landroid/location/ILocationListener;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;->f$0:Lcom/android/server/location/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Udf_uecUpOcigdariRQX6AqGwC8;->f$1:Landroid/location/ILocationListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->lambda$getCurrentLocation$8$LocationManagerService(Landroid/location/ILocationListener;)V

    return-void
.end method
