.class Lcom/android/server/location/LocationManagerService$4;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;

    .line 3496
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$4;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 15
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listenerName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "isAllowed"    # Z

    .line 3509
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$4;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/NSLocationMonitor;->addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 3510
    return-void
.end method

.method public removeGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "listenerName"    # Ljava/lang/String;

    .line 3514
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$4;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/NSLocationMonitor;->removeGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3515
    return-void
.end method

.method public reportProviderStatus(ILjava/lang/Object;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 3499
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3500
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3501
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3503
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$4;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 3504
    return-void
.end method

.method public updateGnssDataListener(ZLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .param p1, "isAdd"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 3520
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$4;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/NSLocationMonitor;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/NSLocationMonitor;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/NSLocationMonitor;->updateGnssDataListener(ZLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3521
    return-void
.end method
